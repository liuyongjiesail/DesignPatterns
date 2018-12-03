//
//  PaymentInterface.h
//  DesignPatterns
//
//  Created by 刘永杰 on 2018/12/3.
//  Copyright © 2018 刘永杰. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@protocol PaymentInterface <NSObject>

- (void)preparedToPayTheMoney:(NSString *)money;

@end

NS_ASSUME_NONNULL_END
