//
//  PaymentObject.m
//  DesignPatterns
//
//  Created by 刘永杰 on 2018/12/3.
//  Copyright © 2018 刘永杰. All rights reserved.
//

#import "PaymentObject.h"

@implementation PaymentObject

- (void)showPayment:(NSString *)money {
    [self.paymentInterface preparedToPayTheMoney:money];
}

@end
