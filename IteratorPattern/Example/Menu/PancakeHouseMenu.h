//
//  PancakeHouseMenu.h
//  DesignPatterns
//
//  Created by 刘永杰 on 2019/3/31.
//  Copyright © 2019 刘永杰. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "MenuInterface.h"
#import "MenuItem.h"

NS_ASSUME_NONNULL_BEGIN

@interface PancakeHouseMenu : NSObject<MenuInterface>
    
@property (strong, readonly, nonatomic) NSMutableArray<MenuItem *> *menuItems;

@end

NS_ASSUME_NONNULL_END
