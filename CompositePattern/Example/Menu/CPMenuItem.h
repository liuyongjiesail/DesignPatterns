//
//  CPMenuItem.h
//  DesignPatterns
//
//  Created by 刘永杰 on 2019/4/7.
//  Copyright © 2019 刘永杰. All rights reserved.
//

// 菜单项

#import "MenuComponent.h"

NS_ASSUME_NONNULL_BEGIN

@interface CPMenuItem : MenuComponent

- (instancetype)initWithName:(NSString *)name description:(NSString *)description vegetarian:(BOOL)vegetarian price:(CGFloat)price;

@end

NS_ASSUME_NONNULL_END
