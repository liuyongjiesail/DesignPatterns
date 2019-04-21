//
//  AbstractDuckFactory.h
//  DesignPatterns
//
//  Created by 刘永杰 on 2019/4/21.
//  Copyright © 2019 刘永杰. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "CPQuackInterface.h"
#import "CPMallardDuck.h"
#import "CPRedheadDuck.h"
#import "CPDuckCall.h"
#import "CPRubberDuck.h"

NS_ASSUME_NONNULL_BEGIN

@interface AbstractDuckFactory : NSObject

- (id<CPQuackInterface>)createMallardDuck;

- (id<CPQuackInterface>)createRedheadDuck;

- (id<CPQuackInterface>)createDuckCall;

- (id<CPQuackInterface>)createRubberDuck;

@end

NS_ASSUME_NONNULL_END
