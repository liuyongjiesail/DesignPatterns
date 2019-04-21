//
//  AbstractDuckFactory.m
//  DesignPatterns
//
//  Created by 刘永杰 on 2019/4/21.
//  Copyright © 2019 刘永杰. All rights reserved.
//

#import "AbstractDuckFactory.h"

@implementation AbstractDuckFactory

- (id<CPQuackInterface>)createMallardDuck {
    return CPMallardDuck.new;
}

- (id<CPQuackInterface>)createRedheadDuck {
    return CPRedheadDuck.new;
}

- (id<CPQuackInterface>)createDuckCall {
    return CPDuckCall.new;
}

- (id<CPQuackInterface>)createRubberDuck {
    return CPRubberDuck.new;
}

@end
