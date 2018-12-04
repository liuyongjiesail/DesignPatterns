//
//  ObserverInterface.h
//  DesignPatterns
//
//  Created by 刘永杰 on 2018/12/4.
//  Copyright © 2018 刘永杰. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@protocol ObserverInterface <NSObject>

- (void)updateTemperature:(float)temperature humidity:(float)humidity pressure:(float)pressure;

@end

NS_ASSUME_NONNULL_END
