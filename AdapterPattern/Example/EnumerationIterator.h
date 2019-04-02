//
//  EnumerationIterator.h
//  DesignPatterns
//
//  Created by 刘永杰 on 2019/3/17.
//  Copyright © 2019 刘永杰. All rights reserved.
//

/*
 
 将枚举接口适配成迭代器接口
 
 */

#import <Foundation/Foundation.h>
#import "Iterator.h"
#import "Enumeration.h"

NS_ASSUME_NONNULL_BEGIN

@interface EnumerationIterator : NSObject<Iterator>

@property (strong, nonatomic) id<Enumeration> enumeration;

@end

NS_ASSUME_NONNULL_END
