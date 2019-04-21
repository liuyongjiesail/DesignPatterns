//
//  DuckSimulate.m
//  DesignPatterns
//
//  Created by 刘永杰 on 2019/4/21.
//  Copyright © 2019 刘永杰. All rights reserved.
//

#import "DuckSimulator.h"
#import "Goose.h"
#import "GooseAdapter.h"
#import "CPQuackInterface.h"
#import "CountingDuckFactory.h"
#import "Flock.h"
#import "Quackologist.h"

@interface DuckSimulator ()

@property (strong, nonatomic) AbstractDuckFactory *duckFactory;

@end

@implementation DuckSimulator

- (void)simulate {
    
    id<CPQuackInterface> mallardDuck = self.duckFactory.createMallardDuck;
    id<CPQuackInterface> redheadDuck = self.duckFactory.createRedheadDuck;
    id<CPQuackInterface> duckCall = self.duckFactory.createDuckCall;
    id<CPQuackInterface> rubberDuck = self.duckFactory.createRubberDuck;
    id<CPQuackInterface> gooseDuck = [[GooseAdapter alloc] initGooseAdapter:Goose.new];
    
    Flock *flockOfDucks = [Flock new];
    
    [flockOfDucks.quackArray addObject:mallardDuck];
    [flockOfDucks.quackArray addObject:redheadDuck];
    [flockOfDucks.quackArray addObject:duckCall];
    [flockOfDucks.quackArray addObject:rubberDuck];
    [flockOfDucks.quackArray addObject:gooseDuck];
    
    Quackologist *quackologist = [Quackologist new];
    
    [flockOfDucks registerObserver:quackologist];
    
    [self simulate:flockOfDucks];

    NSLog(@"叫的次数为：%ld", QuackCounter.numberOfQuacks);
    
}

- (void)simulate:(id<CPQuackInterface>)duck {
    [duck quack];
}

- (AbstractDuckFactory *)duckFactory {
    return CountingDuckFactory.new;
}

@end
