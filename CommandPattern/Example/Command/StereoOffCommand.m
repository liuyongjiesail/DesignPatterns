//
//  StereoOffCommand.m
//  DesignPatterns
//
//  Created by 刘永杰 on 2019/3/10.
//  Copyright © 2019 刘永杰. All rights reserved.
//

#import "StereoOffCommand.h"

@implementation StereoOffCommand

- (void)execute {
    [self.stereo off];
}

- (void)undo {
    [self.stereo on];
}

@end
