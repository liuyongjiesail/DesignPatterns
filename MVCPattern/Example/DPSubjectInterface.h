//
//  DPSubjectInterface.h
//  DesignPatterns
//
//  Created by 刘永杰 on 2019/5/19.
//  Copyright © 2019 刘永杰. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol DPObserverInterface;

NS_ASSUME_NONNULL_BEGIN

@protocol DPSubjectInterface <NSObject>

@required

- (void)registerObserver:(id<DPObserverInterface>)observer;

- (void)removeObserver:(id<DPObserverInterface>)observer;

- (void)notifyObservers;

@end

NS_ASSUME_NONNULL_END
