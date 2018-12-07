//
//  DecorateViewController.m
//  DesignPatterns
//
//  Created by 刘永杰 on 2018/12/7.
//  Copyright © 2018 刘永杰. All rights reserved.
//

#import "DecorateViewController.h"
#import "HouseBlend.h"
#import "Mocha.h"
#import "Milk.h"
#import "Soy.h"
#import "Whip.h"

@interface DecorateViewController ()

@end

@implementation DecorateViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    
    Beverage *beverage = [HouseBlend new];
    beverage = [[Mocha alloc] initWithBeverage:beverage];
    beverage = [[Milk alloc] initWithBeverage:beverage];
    
    NSLog(@"%@, $%.2f", beverage.objectDescription, [beverage cost]);
    
    beverage = [[Mocha alloc] initWithBeverage:beverage];
    beverage = [[Soy alloc] initWithBeverage:beverage];

    NSLog(@"%@, $%.2f", beverage.objectDescription, [beverage cost]);
    
    // Do any additional setup after loading the view.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
