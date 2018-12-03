//
//  ApplePayment.m
//  DesignPatterns
//
//  Created by 刘永杰 on 2018/12/3.
//  Copyright © 2018 刘永杰. All rights reserved.
//

#import "ApplePayment.h"

@implementation ApplePayment

- (void)preparedToPayTheMoney:(NSString *)money {
    NSLog(@"苹果支付%@元", money);
}

@end
