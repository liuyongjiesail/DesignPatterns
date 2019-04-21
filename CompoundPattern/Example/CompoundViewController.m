//
//  CompoundViewController.m
//  DesignPatterns
//
//  Created by 刘永杰 on 2019/4/21.
//  Copyright © 2019 刘永杰. All rights reserved.
//

#import "CompoundViewController.h"
#import "DuckSimulator/DuckSimulator.h"

@interface CompoundViewController ()

@end

@implementation CompoundViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [DuckSimulator.new simulate];
    
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
