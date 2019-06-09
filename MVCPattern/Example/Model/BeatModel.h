//
//  BeatModel.h
//  DesignPatterns
//
//  Created by 刘永杰 on 2019/5/19.
//  Copyright © 2019 刘永杰. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "DPSubjectInterface.h"
#import "DPObserverInterface.h"

NS_ASSUME_NONNULL_BEGIN

@interface BeatModel : NSObject<DPSubjectInterface>

@property (assign, nonatomic) NSInteger bpm;

- (void)on;

- (void)off;

@end

NS_ASSUME_NONNULL_END
