//
//  WeatherData.m
//  DesignPatterns
//
//  Created by 刘永杰 on 2018/12/4.
//  Copyright © 2018 刘永杰. All rights reserved.
//

#import "WeatherData.h"

@interface WeatherData ()

@property (strong, nonatomic) NSMutableArray<id<ObserverInterface>> *observerArray;
@property (assign, nonatomic) float temperature;
@property (assign, nonatomic) float humidity;
@property (assign, nonatomic) float pressure;

@end

@implementation WeatherData

- (instancetype)init {
    self = [super init];
    if (self) {
        self.observerArray = [NSMutableArray array];
    }
    return self;
}

- (void)registerObserver:(id<ObserverInterface>)observer {
    [self.observerArray addObject:observer];
}

- (void)removeObserver:(id<ObserverInterface>)observer {
    [self.observerArray removeObject:observer];
}

- (void)setMeasurements:(float)temperature humidity:(float)humidity pressure:(float)pressure {
    self.temperature = temperature;
    self.humidity = humidity;
    self.pressure = pressure;
    [self measurementsChanged];
}

- (void)notifyObservers {
    for (id<ObserverInterface> observer in self.observerArray) {
        [observer updateTemperature:self.temperature humidity:self.humidity pressure:self.pressure];
    }
}

- (void)measurementsChanged {
    [self notifyObservers];
}

@end
