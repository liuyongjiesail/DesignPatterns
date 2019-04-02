//
//  LightOffCommand.m
//  DesignPatterns
//
//  Created by 刘永杰 on 2019/3/10.
//  Copyright © 2019 刘永杰. All rights reserved.
//

#import "LightOffCommand.h"

@implementation LightOffCommand

- (void)execute {
    [self.light off];
}

- (void)undo {
    [self.light on];
}

@end
