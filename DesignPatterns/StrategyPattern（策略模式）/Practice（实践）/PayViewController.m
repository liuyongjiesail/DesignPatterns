//
//  PayViewController.m
//  DesignPatterns
//
//  Created by 刘永杰 on 2018/12/3.
//  Copyright © 2018 刘永杰. All rights reserved.
//

#import "PayViewController.h"
#import "MallardDuck.h"
#import "FlyNoWay.h"
#import "RedHeadDuck.h"

#import "ApplePayment.h"
#import "WechatPayment.h"
#import "Alipayment.h"
#import "PaymentObject.h"

@interface PayViewController ()

@property (strong, nonatomic) NSMutableArray *dataArray;

@end

@implementation PayViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.title = @"策略模式";
    
    //示例测试
    
    Duck *duck = [MallardDuck new];
    [duck display];
    [duck swimming];
    [duck fly];
    [duck quack];
    //动态修改飞行行为
    duck.flyInterface = [FlyNoWay new];
    [duck fly];
    
    Duck *redDuck = [RedHeadDuck new];
    [redDuck display];
    [redDuck swimming];
    [redDuck fly];
    [redDuck quack];
    
    
    self.dataArray = @[@"ApplePay", @"微信", @"支付宝"].mutableCopy;
    [self.tableView registerClass:[UITableViewCell class] forCellReuseIdentifier:@"cell"];
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.dataArray.count;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell" forIndexPath:indexPath];
    cell.textLabel.text = self.dataArray[indexPath.row];
    // Configure the cell...
    
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
    
    PaymentObject *paymentObject = [PaymentObject new];
    
    switch (indexPath.row) {
        case 0: paymentObject.paymentInterface = [ApplePayment new]; break;
        case 1: paymentObject.paymentInterface = [WechatPayment new]; break;
        case 2: paymentObject.paymentInterface = [Alipayment new]; break;
    }
    
    [paymentObject showPayment:@"5"];
}

@end
