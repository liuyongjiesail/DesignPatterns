//
//  LightOnCommand.m
//  DesignPatterns
//
//  Created by 刘永杰 on 2019/3/10.
//  Copyright © 2019 刘永杰. All rights reserved.
//

#import "LightOnCommand.h"

@implementation LightOnCommand

- (void)execute {
    [self.light on];
}

- (void)undo {
    [self.light off];
}

@end
