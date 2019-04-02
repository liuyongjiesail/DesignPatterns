//
//  StereoOffCommand.h
//  DesignPatterns
//
//  Created by 刘永杰 on 2019/3/10.
//  Copyright © 2019 刘永杰. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Command.h"
#import "Stereo.h"

NS_ASSUME_NONNULL_BEGIN

@interface StereoOffCommand : NSObject<Command>

@property (strong, nonatomic) Stereo *stereo;

@end

NS_ASSUME_NONNULL_END
