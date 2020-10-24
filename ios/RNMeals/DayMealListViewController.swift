//
//  MealListViewController.swift
//  RNMeals
//
//  Created by Mohammad Safad on 22/10/2020.
//

import UIKit

struct CellID {
  static let MealListCollectionViewCellId = "MealListCollectionViewCell"
}

protocol DayMealListViewControllerProtocol: class {
  var interactor: DayMealListInteractorProtocol? { get set }
  func showDayMealPlan(_ dayMealPlan: DayMealPlan?) 
}

class DayMealListViewController: UIViewController, DayMealListViewControllerProtocol {
  
  @IBOutlet weak var titleLbl: UILabel!
  @IBOutlet weak var mealListCV: UICollectionView!
  
  var interactor: DayMealListInteractorProtocol?
  var mealPlan: DayMealPlan?
  
  override func viewDidLoad() {
    super.viewDidLoad()
    let layout: UICollectionViewFlowLayout = UICollectionViewFlowLayout()
    layout.scrollDirection = .horizontal
    layout.itemSize = CGSize(width: UIScreen.main.bounds.width, height: 250)
    layout.minimumInteritemSpacing = 0.0
    layout.minimumLineSpacing = 1.0
    self.mealListCV.collectionViewLayout = layout
    interactor?.getDayMealPlan()
    // Do any additional setup after loading the view.
  }

  @IBAction func close(_ sender: Any) {
    self.dismiss(animated: true, completion: nil)
  }
 
}

extension DayMealListViewController: UICollectionViewDataSource, UICollectionViewDelegate, UICollectionViewDelegateFlowLayout {
  
  func numberOfSections(in collectionView: UICollectionView) -> Int {
    return 1
  }
  func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
    return 2
  }
  
  func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
    let cell = collectionView.dequeueReusableCell(withReuseIdentifier: CellID.MealListCollectionViewCellId, for: indexPath) as! DayMealListCollectionViewCell
    switch indexPath.item {
    case 0:
      cell.setData(planner: self.mealPlan?.lunch)
    case 1:
      cell.setData(planner: self.mealPlan?.dinner)
    default:
      break;
    }
    return cell
  }
  
  func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
  }
  
}


extension DayMealListViewController{
  func showDayMealPlan(_ dayMealPlan: DayMealPlan?) {
    self.mealPlan = dayMealPlan
    self.titleLbl.text = "Meal plans for " + (dayMealPlan?.name ?? "")
    self.mealListCV.reloadData()
  }
}
