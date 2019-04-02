//
//  GarageDoorDownCommand.m
//  DesignPatterns
//
//  Created by 刘永杰 on 2019/3/10.
//  Copyright © 2019 刘永杰. All rights reserved.
//

#import "GarageDoorDownCommand.h"

@implementation GarageDoorDownCommand

- (void)execute {
    [self.door down];
}

- (void)undo {
    [self.door up];
}

@end
