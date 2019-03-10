//
//  CeilingFanOnCommand.m
//  DesignPatterns
//
//  Created by 刘永杰 on 2019/3/10.
//  Copyright © 2019 刘永杰. All rights reserved.
//

#import "CeilingFanOnCommand.h"

@implementation CeilingFanOnCommand

- (void)execute {
    [self.ceilingFan on];
}

- (void)undo {
    [self.ceilingFan off];
}

@end
