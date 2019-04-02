//
//  SimpleRemoteControl.h
//  DesignPatterns
//
//  Created by 刘永杰 on 2019/3/10.
//  Copyright © 2019 刘永杰. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Command.h"

NS_ASSUME_NONNULL_BEGIN

@interface SimpleRemoteControl : NSObject

@property (strong, nonatomic)id<Command> slot;

- (void)buttonWasPressed;

@end

NS_ASSUME_NONNULL_END
