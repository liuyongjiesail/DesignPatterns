//
//  Beverage.h
//  DesignPatterns
//
//  Created by 刘永杰 on 2018/12/6.
//  Copyright © 2018 刘永杰. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Beverage : NSObject

@property (copy, nonatomic) NSString *objectDescription;

- (float)cost;

@end

NS_ASSUME_NONNULL_END
