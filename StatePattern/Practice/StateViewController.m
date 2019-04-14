//
//  StateViewController.m
//  DesignPatterns
//
//  Created by 刘永杰 on 2019/4/15.
//  Copyright © 2019 刘永杰. All rights reserved.
//

#import "StateViewController.h"
#import "GumballMachine.h"

@interface StateViewController ()

@end

@implementation StateViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    GumballMachine *gumballMachine = [[GumballMachine alloc] initWithNumberGumballs:5];
    
    NSLog(@"%@", gumballMachine);
    
    [gumballMachine insertQuarter];
    [gumballMachine turnCrank];
    
    NSLog(@"%@", gumballMachine);

    [gumballMachine insertQuarter];
    [gumballMachine turnCrank];
    [gumballMachine insertQuarter];
    [gumballMachine turnCrank];
    
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
