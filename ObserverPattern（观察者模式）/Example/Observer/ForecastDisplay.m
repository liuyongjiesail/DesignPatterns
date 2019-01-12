//
//  ForecastDisplay.m
//  DesignPatterns
//
//  Created by 刘永杰 on 2018/12/4.
//  Copyright © 2018 刘永杰. All rights reserved.
//

#import "ForecastDisplay.h"

@interface ForecastDisplay ()

@property (assign, nonatomic) float temperature;
@property (assign, nonatomic) float humidity;
@property (assign, nonatomic) float pressure;
@property (strong, nonatomic) id<SubjectInterface>weatherData;

@end

@implementation ForecastDisplay

- (instancetype)initWithDisplay:(id<SubjectInterface>)weatherData {
    if (self) {
        self.weatherData = weatherData;
        [self.weatherData registerObserver:self];
    }
    return self;
}

- (void)updateTemperature:(float)temperature humidity:(float)humidity pressure:(float)pressure {
    self.temperature = temperature;
    self.humidity = humidity;
    self.pressure = pressure;
    [self display];
}

- (void)display {
    NSLog(@"temperature(温度) = %f,humidity(湿度) = %f, pressure() = %f", self.temperature, self.humidity, self.pressure);

}

@end
