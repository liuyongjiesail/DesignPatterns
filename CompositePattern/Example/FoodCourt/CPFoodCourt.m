//
//  CPFoodCourt.m
//  DesignPatterns
//
//  Created by 刘永杰 on 2019/4/7.
//  Copyright © 2019 刘永杰. All rights reserved.
//

#import "CPFoodCourt.h"
#import "CPWaitress.h"
#import "CPPancakeHouseMenu.h"
#import "CPDinerMenu.h"
#import "CPCafeMenu.h"
#import "CPDessertMenu.h"

@implementation CPFoodCourt

+ (void)testWaitress {
    
    MenuComponent *pancakeHouseMenu = [[CPPancakeHouseMenu alloc] initWithName:@"Pancake House Menu" description:@"Breakfast"];
    MenuComponent *dinerMenu = [[CPDinerMenu alloc] initWithName:@"Diner Menu.h" description:@"Lunch"];
    MenuComponent *cafeMenu = [[CPCafeMenu alloc] initWithName:@"Cafe Menu" description:@"Dinner"];
    MenuComponent *dessertMenu = [[CPDessertMenu alloc] initWithName:@"Dessert Menu" description:@"Dessert of course!"];
    
    MenuComponent *allMenus = [[CPMenu alloc] initWithName:@"ALL MENUS" description:@"All menus combined"];
    
    [allMenus add:pancakeHouseMenu];
    [allMenus add:dinerMenu];
    [allMenus add:cafeMenu];
    
    [dinerMenu add:dessertMenu];
    
    CPWaitress *waitress = [[CPWaitress alloc] initWithMenuComponent:allMenus];
    
    [waitress print];
}

@end
