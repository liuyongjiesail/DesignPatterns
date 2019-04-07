//
//  CPWaitress.h
//  DesignPatterns
//
//  Created by 刘永杰 on 2019/4/7.
//  Copyright © 2019 刘永杰. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "MenuComponent.h"

NS_ASSUME_NONNULL_BEGIN

@interface CPWaitress : NSObject

- (instancetype)initWithMenuComponent:(MenuComponent *)allMenus;

- (void)print;

@end

NS_ASSUME_NONNULL_END
