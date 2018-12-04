//
//  WeatherData.h
//  DesignPatterns
//
//  Created by 刘永杰 on 2018/12/4.
//  Copyright © 2018 刘永杰. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "SubjectInterface.h"

NS_ASSUME_NONNULL_BEGIN

@interface WeatherData : NSObject <SubjectInterface>

- (void)setMeasurements:(float)temperature humidity:(float)humidity pressure:(float)pressure;

@end

NS_ASSUME_NONNULL_END
