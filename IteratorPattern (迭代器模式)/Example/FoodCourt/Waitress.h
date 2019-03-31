//
//  Waitress.h
//  DesignPatterns
//
//  Created by 刘永杰 on 2019/3/31.
//  Copyright © 2019 刘永杰. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "MenuInterface.h"

NS_ASSUME_NONNULL_BEGIN

@interface Waitress : NSObject

- (instancetype)initWithPancakeHouseMenu:(id<MenuInterface>)pancakeHouseMenu dinerMenu:(id<MenuInterface>)dinerMenu cafeMenu:(id<MenuInterface>)cafeMenu;

- (void)printMenu;

@end

NS_ASSUME_NONNULL_END
