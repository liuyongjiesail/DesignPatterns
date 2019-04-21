//
//  Flock.h
//  DesignPatterns
//
//  Created by 刘永杰 on 2019/4/21.
//  Copyright © 2019 刘永杰. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "CPQuackInterface.h"

NS_ASSUME_NONNULL_BEGIN

@interface Flock : NSObject<CPQuackInterface>

@property (strong, nonatomic) NSMutableArray<id<CPQuackInterface>> *quackArray;

@end

NS_ASSUME_NONNULL_END
