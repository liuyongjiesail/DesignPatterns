//
//  CurrentConditionsDisplay.h
//  DesignPatterns
//
//  Created by 刘永杰 on 2018/12/4.
//  Copyright © 2018 刘永杰. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ObserverInterface.h"
#import "DisplayElementInterface.h"
#import "SubjectInterface.h"

NS_ASSUME_NONNULL_BEGIN

@interface CurrentConditionsDisplay : NSObject<ObserverInterface, DisplayElementInterface>

- (instancetype)initDisplay:(id<SubjectInterface>)weatherData;

@end

NS_ASSUME_NONNULL_END
