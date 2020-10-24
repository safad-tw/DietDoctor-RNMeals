describe('MealPlans - Week2', () => {
    beforeEach(async () => {
      await device.reloadReactNative();
    });
  
    it('should weekly meal plan for week 2 visible', async () => {
      await expect(element(by.id('wp-us-mealplan-4826799'))).toBeVisible();
    });
  
    it('should tap on day plans for week2', async () => {
      await expect(element(by.id('wp-us-mealplan-4826799'))).toBeVisible();
      await element(by.id('wp-us-mealplan-4826799')).tap();
      await element(by.traits(['button']))
        .atIndex(0)
        .tap();
    });
  
    it('should show detail plan of day plans for week2', async () => {
      await expect(element(by.id('wp-us-mealplan-4826799'))).toBeVisible();
      await element(by.id('wp-us-mealplan-4826799')).tap();
      await expect(element(by.text('Lunch'))).toBeVisible();
      await expect(element(by.text('Dinner'))).toBeVisible();
      await element(by.traits(['button']))
        .atIndex(0)
        .tap();
    });
  
    it('should right swipe a weekly plan and tap', async () => {
      await expect(element(by.id('wp-us-mealplan-4826799'))).toBeVisible();
      await element(by.id('wp-us-mealplan-4826799')).swipe('right', 'slow', 0.05)
      await element(by.id('wp-us-mealplan-4826799')).tap();
      await element(by.traits(['button']))
        .atIndex(0)
        .tap();
    });
  
    it('should user be able to swipe left and view the meal plan', async () => {
      await expect(element(by.id('wp-us-mealplan-4826799'))).toBeVisible();
      await element(by.id('wp-us-mealplan-4826799')).swipe('right', 'slow', 0.05)
      await element(by.id('wp-us-mealplan-4826799')).swipe('left', 'slow', 0.05)
      await element(by.id('wp-us-mealplan-4826799')).tap();
      await element(by.traits(['button']))
        .atIndex(0)
        .tap();
    });
    
  });
  