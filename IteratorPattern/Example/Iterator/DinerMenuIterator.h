//
//  DinerMenuIterator.h
//  DesignPatterns
//
//  Created by 刘永杰 on 2019/3/31.
//  Copyright © 2019 刘永杰. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "IteratorInterface.h"

NS_ASSUME_NONNULL_BEGIN

@interface DinerMenuIterator : NSObject<IteratorInterface>

- (instancetype)initMenuItems:(NSMutableDictionary<NSString *, MenuItem *> *)menuItems;

@end

NS_ASSUME_NONNULL_END
