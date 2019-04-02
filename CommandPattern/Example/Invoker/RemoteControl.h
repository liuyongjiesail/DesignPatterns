//
//  RemoteControl.h
//  DesignPatterns
//
//  Created by 刘永杰 on 2019/3/10.
//  Copyright © 2019 刘永杰. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Command.h"

NS_ASSUME_NONNULL_BEGIN

@interface RemoteControl : NSObject

- (void)setCommandSlot:(NSInteger)slot onCommand:(id<Command>)onCommand offCommand:(id<Command>)offCommand;

- (void)onButtonWasPushedSlot:(NSInteger)slot;

- (void)offButtonWasPushedSlot:(NSInteger)slot;

- (void)undoButtonWasPushed;

@end

NS_ASSUME_NONNULL_END
