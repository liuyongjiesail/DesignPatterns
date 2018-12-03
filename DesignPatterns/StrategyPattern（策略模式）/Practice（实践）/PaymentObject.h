//
//  PaymentObject.h
//  DesignPatterns
//
//  Created by 刘永杰 on 2018/12/3.
//  Copyright © 2018 刘永杰. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "PaymentInterface.h"

NS_ASSUME_NONNULL_BEGIN

@interface PaymentObject : NSObject

@property (strong, nonatomic) id<PaymentInterface> paymentInterface;

- (void)showPayment:(NSString *)money;

@end

NS_ASSUME_NONNULL_END
