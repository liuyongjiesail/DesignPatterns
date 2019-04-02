//
//  GarageDoorDownCommand.h
//  DesignPatterns
//
//  Created by 刘永杰 on 2019/3/10.
//  Copyright © 2019 刘永杰. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Command.h"
#import "GarageDoor.h"

NS_ASSUME_NONNULL_BEGIN

@interface GarageDoorDownCommand : NSObject<Command>

@property (strong, nonatomic) GarageDoor *door;

@end

NS_ASSUME_NONNULL_END
