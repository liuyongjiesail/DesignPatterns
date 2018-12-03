//
//  Duck.h
//  DesignPatterns
//
//  Created by 刘永杰 on 2018/12/3.
//  Copyright © 2018 刘永杰. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "FlyInterface.h"
#import "QuackInterface.h"

NS_ASSUME_NONNULL_BEGIN

@interface Duck : NSObject

@property (strong, nonatomic) id<FlyInterface>   flyInterface;
@property (strong, nonatomic) id<QuackInterface> quackInterface;

// 游泳
- (void)swimming;
// 外观显示（子类重载）
- (void)display;

- (void)quack;

- (void)fly;

@end

NS_ASSUME_NONNULL_END
