//
//  YJPizzaStroe.h
//  DesignPatterns
//
//  Created by 刘永杰 on 2018/12/24.
//  Copyright © 2018 刘永杰. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "YJPizza.h"

NS_ASSUME_NONNULL_BEGIN

@interface YJPizzaStore : NSObject

- (YJPizza *)orderPizza:(YJPizzaType)type;

/**
  生成pizza，由子类实现。

 @param type type
 @return pizza
 */
- (YJPizza *)createPizza:(YJPizzaType)type;

@end

NS_ASSUME_NONNULL_END
