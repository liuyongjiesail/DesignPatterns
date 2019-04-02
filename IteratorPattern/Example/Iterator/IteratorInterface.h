//
//  IteratorInterface.h
//  DesignPatterns
//
//  Created by 刘永杰 on 2019/3/31.
//  Copyright © 2019 刘永杰. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "MenuItem.h"

NS_ASSUME_NONNULL_BEGIN

@protocol IteratorInterface <NSObject>

- (BOOL)hasNext;

- (MenuItem *)next;

- (void)remove;

@end

NS_ASSUME_NONNULL_END
