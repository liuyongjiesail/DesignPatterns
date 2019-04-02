//
//  AbstractClass.m
//  DesignPatterns
//
//  Created by 刘永杰 on 2019/3/24.
//  Copyright © 2019 刘永杰. All rights reserved.
//

#import "AbstractClass.h"

@implementation AbstractClass

- (void)templateMethod {
    
    [self primitiveOperation1];
    [self primitiveOperation2];
    [self concreteOperation];
    [self hook];
    if (self.isAddOther) {
        [self otherConcreteOperation];
    }
    
}

- (void)primitiveOperation1 {}

- (void)primitiveOperation2 {}

- (void)concreteOperation {
    
    // 这里是实现
}

- (void)otherConcreteOperation {
    // 实现
    
}

- (void)hook {}

- (BOOL)isAddOther {
    return YES;
}

@end
