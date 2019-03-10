//
//  MacroCommand.h
//  DesignPatterns
//
//  Created by 刘永杰 on 2019/3/11.
//  Copyright © 2019 刘永杰. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Command.h"

NS_ASSUME_NONNULL_BEGIN

@interface MacroCommand : NSObject<Command>

@property (strong, nonatomic) NSMutableArray<id<Command>> *commandArray;

@end

NS_ASSUME_NONNULL_END
