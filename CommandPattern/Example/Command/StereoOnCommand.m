//
//  StereoOnCommand.m
//  DesignPatterns
//
//  Created by 刘永杰 on 2019/3/10.
//  Copyright © 2019 刘永杰. All rights reserved.
//

#import "StereoOnCommand.h"

@implementation StereoOnCommand

- (void)execute {
    [self.stereo on];
}

- (void)undo {
    [self.stereo off];
}

@end
