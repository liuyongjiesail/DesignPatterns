//
//  BeatModel.m
//  DesignPatterns
//
//  Created by 刘永杰 on 2019/5/19.
//  Copyright © 2019 刘永杰. All rights reserved.
//

#import "BeatModel.h"

@interface BeatModel ()

@property (strong, nonatomic) NSHashTable <id<DPObserverInterface>>* observersArray;

@end

@implementation BeatModel

- (void)on {
    
}

- (void)off {
    
}

#pragma mark - DPSubjectInterface

- (void)notifyObservers {
    [self.observersArray.allObjects enumerateObjectsUsingBlock:^(id<DPObserverInterface>  _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
        [obj updateBPM];
    }];
}

- (void)registerObserver:(nonnull id<DPObserverInterface>)observer {
    [self.observersArray addObject:observer];
}

- (void)removeObserver:(nonnull id<DPObserverInterface>)observer {
    [self.observersArray removeObject:observer];
}

- (NSHashTable<id<DPObserverInterface>> *)observersArray {
    if (!_observersArray) {
        _observersArray = [NSHashTable hashTableWithOptions:NSPointerFunctionsWeakMemory];
    }
    return _observersArray;
}

@end
