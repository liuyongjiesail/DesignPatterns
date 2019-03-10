//
//  MacroCommand.m
//  DesignPatterns
//
//  Created by 刘永杰 on 2019/3/11.
//  Copyright © 2019 刘永杰. All rights reserved.
//

#import "MacroCommand.h"

@implementation MacroCommand

- (void)execute {
    [self.commandArray enumerateObjectsUsingBlock:^(id<Command>  _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
        [obj execute];
    }];
}

- (void)undo {
    [self.commandArray enumerateObjectsUsingBlock:^(id<Command>  _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
        [obj undo];
    }];
}

@end
