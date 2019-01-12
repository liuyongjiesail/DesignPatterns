//
//  DPSubjectInterface.h
//  DesignPatterns
//
//  Created by 刘永杰 on 2018/12/5.
//  Copyright © 2018 刘永杰. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "DPViewInterface.h"

NS_ASSUME_NONNULL_BEGIN

@protocol DPModelInterface <NSObject>

- (void)registerObserver:(id)observer;

- (void)removeObserver:(id)observer;

- (void)notifyObservers;

@end

NS_ASSUME_NONNULL_END
