//
//  wechatPayment.m
//  DesignPatterns
//
//  Created by 刘永杰 on 2018/12/3.
//  Copyright © 2018 刘永杰. All rights reserved.
//

#import "WechatPayment.h"

@implementation WechatPayment

- (void)preparedToPayTheMoney:(NSString *)money {
    NSLog(@"微信支付%@元", money);
}

@end
