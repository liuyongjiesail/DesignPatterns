//
//  CeilingFanOffCommand.m
//  DesignPatterns
//
//  Created by 刘永杰 on 2019/3/10.
//  Copyright © 2019 刘永杰. All rights reserved.
//

#import "CeilingFanOffCommand.h"

@implementation CeilingFanOffCommand

- (void)execute {
    [self.ceilingFan off];
}

- (void)undo {
    [self.ceilingFan on];
}

@end
