//
//  Iterator.h
//  DesignPatterns
//
//  Created by 刘永杰 on 2019/3/17.
//  Copyright © 2019 刘永杰. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@protocol Iterator <NSObject>

- (void)hasNext;

- (void)next;

- (void)remove;

@end

NS_ASSUME_NONNULL_END
