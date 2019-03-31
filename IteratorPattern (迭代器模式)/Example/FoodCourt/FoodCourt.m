//
//  FoodCourt.m
//  DesignPatterns
//
//  Created by 刘永杰 on 2019/3/31.
//  Copyright © 2019 刘永杰. All rights reserved.
//

#import "FoodCourt.h"
#import "Waitress.h"
#import "PancakeHouseMenu.h"
#import "DinerMenu.h"
#import "CafeMenu.h"

@implementation FoodCourt

+ (void)testWaitress {
    
    Waitress *waitress = [[Waitress alloc] initWithPancakeHouseMenu:[PancakeHouseMenu new] dinerMenu:[DinerMenu new] cafeMenu:[CafeMenu new]];
    
    [waitress printMenu];
}

@end
