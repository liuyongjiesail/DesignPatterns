//
//  CPMenu.h
//  DesignPatterns
//
//  Created by 刘永杰 on 2019/4/7.
//  Copyright © 2019 刘永杰. All rights reserved.
//

// 菜单

#import "MenuComponent.h"
#import "CPMenuItem.h"

NS_ASSUME_NONNULL_BEGIN

@interface CPMenu : MenuComponent

- (instancetype)initWithName:(NSString *)name description:(NSString *)description;

@end

NS_ASSUME_NONNULL_END
