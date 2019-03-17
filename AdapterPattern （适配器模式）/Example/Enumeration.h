//
//  Enumeration.h
//  DesignPatterns
//
//  Created by 刘永杰 on 2019/3/17.
//  Copyright © 2019 刘永杰. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@protocol Enumeration <NSObject>

- (void)hasMoreElements;

- (void)nextElement;

@end

NS_ASSUME_NONNULL_END
