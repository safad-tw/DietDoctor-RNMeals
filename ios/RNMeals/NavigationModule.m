//
//  NavigationModule.m
//  RNMeals
//
//  Created by Mohammad Safad on 22/10/2020.
//

#import <Foundation/Foundation.h>
#import "React/RCTBridgeModule.h"
@interface RCT_EXTERN_MODULE(Navigation, NSObject)
RCT_EXTERN_METHOD(navigateTo:(NSDictionary)props)
RCT_EXTERN_METHOD(goBack)
@end
