//
//  CPObserverInterface.h
//  DesignPatterns
//
//  Created by 刘永杰 on 2019/4/21.
//  Copyright © 2019 刘永杰. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "QuackObservableInterface.h"

NS_ASSUME_NONNULL_BEGIN

@interface CPObservableImp : NSObject<QuackObservableInterface>

- (instancetype)initWithDuck:(id<QuackObservableInterface>)duck;

@end

NS_ASSUME_NONNULL_END
