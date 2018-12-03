//
//  Alipayment.m
//  DesignPatterns
//
//  Created by 刘永杰 on 2018/12/3.
//  Copyright © 2018 刘永杰. All rights reserved.
//

#import "Alipayment.h"

@implementation Alipayment

- (void)preparedToPayTheMoney:(NSString *)money {
    NSLog(@"支付宝支付%@元", money);
}

@end
