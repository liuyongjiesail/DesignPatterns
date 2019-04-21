//
//  Quackologist.m
//  DesignPatterns
//
//  Created by 刘永杰 on 2019/4/21.
//  Copyright © 2019 刘永杰. All rights reserved.
//

#import "Quackologist.h"

@implementation Quackologist

- (void)update:(id)duck {
    NSLog(@"---%@----", NSStringFromClass([duck class]));
}

@end
