//
//  GarageDoorOpenCommand.m
//  DesignPatterns
//
//  Created by 刘永杰 on 2019/3/10.
//  Copyright © 2019 刘永杰. All rights reserved.
//

#import "GarageDoorOpenCommand.h"

@implementation GarageDoorOpenCommand

- (void)execute {
    [self.door up];
}

- (void)undo {
    [self.door down];
}

@end
