//
//  SimpleRemoteControl.m
//  DesignPatterns
//
//  Created by 刘永杰 on 2019/3/10.
//  Copyright © 2019 刘永杰. All rights reserved.
//

#import "SimpleRemoteControl.h"

@implementation SimpleRemoteControl

- (void)buttonWasPressed {
    [self.slot execute];
}

@end
