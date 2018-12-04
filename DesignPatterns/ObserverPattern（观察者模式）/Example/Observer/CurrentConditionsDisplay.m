//
//  CurrentConditionsDisplay.m
//  DesignPatterns
//
//  Created by 刘永杰 on 2018/12/4.
//  Copyright © 2018 刘永杰. All rights reserved.
//

#import "CurrentConditionsDisplay.h"

@interface CurrentConditionsDisplay ()

@property (assign, nonatomic) float temperature;
@property (assign, nonatomic) float humidity;
@property (strong, nonatomic) id<SubjectInterface>weatherData;

@end

@implementation CurrentConditionsDisplay

- (instancetype)initDisplay:(id<SubjectInterface>)weatherData {
    self = [super init];
    if (self) {
        self.weatherData = weatherData;
        [weatherData registerObserver:self];
    }
    return self;
}

- (void)updateTemperature:(float)temperature humidity:(float)humidity pressure:(float)pressure {
    self.temperature = temperature;
    self.humidity = humidity;
    [self display];
}

- (void)display {
    NSLog(@"temperature(温度) = %f,humidity(湿度) = %f", self.temperature, self.humidity);
}

@end
