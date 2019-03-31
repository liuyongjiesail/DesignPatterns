//
//  Waitress.m
//  DesignPatterns
//
//  Created by 刘永杰 on 2019/3/31.
//  Copyright © 2019 刘永杰. All rights reserved.
//

#import "Waitress.h"
#import "IteratorInterface.h"

@interface Waitress ()

@property (strong, nonatomic) id<MenuInterface>pancakeHouseMenu;
@property (strong, nonatomic) id<MenuInterface>dinerMenu;
@property (strong, nonatomic) id<MenuInterface>cafeMenu;

@end

@implementation Waitress

- (instancetype)initWithPancakeHouseMenu:(id<MenuInterface>)pancakeHouseMenu dinerMenu:(id<MenuInterface>)dinerMenu cafeMenu:(id<MenuInterface>)cafeMenu {

    self = [super init];
    if (self) {
        self.pancakeHouseMenu = pancakeHouseMenu;
        self.dinerMenu = dinerMenu;
        self.cafeMenu = cafeMenu;
    }
    return self;
}

- (void)printMenu {
    
    id<IteratorInterface> pancakeHouseMenuIterator = self.pancakeHouseMenu.createIterator;
    id<IteratorInterface> dinerMenuIterator = self.dinerMenu.createIterator;
    id<IteratorInterface> cafeMenuIterator = self.cafeMenu.createIterator;

    NSLog(@"------------Menu--------------\n");
    
    NSLog(@"------------BREAKFAST--------------\n");
    
    [self printMenu:pancakeHouseMenuIterator];
    
    NSLog(@"------------LANCH--------------\n");
    
    [self printMenu:dinerMenuIterator];
    
    NSLog(@"------------DINNER--------------\n");
    
    [self printMenu:cafeMenuIterator];
    
}

- (void)printMenu:(id<IteratorInterface>)iteratorInterface {
    while (iteratorInterface.hasNext) {
        MenuItem *menuItem = iteratorInterface.next;
        NSLog(@"%@, %@, %.2f", menuItem.name, menuItem.Description, menuItem.price);
    }
}

@end
