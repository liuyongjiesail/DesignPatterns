//
//  SubjectInterface.h
//  DesignPatterns
//
//  Created by 刘永杰 on 2018/12/4.
//  Copyright © 2018 刘永杰. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ObserverInterface.h"

NS_ASSUME_NONNULL_BEGIN

@protocol SubjectInterface <NSObject>

- (void)registerObserver:(id<ObserverInterface>)observer;

- (void)removeObserver:(id<ObserverInterface>)observer;

- (void)notifyObservers;

@end

NS_ASSUME_NONNULL_END
