//
//  Duck.m
//  DesignPatterns
//
//  Created by 刘永杰 on 2018/12/3.
//  Copyright © 2018 刘永杰. All rights reserved.
//

#import "Duck.h"

@implementation Duck

- (void)swimming {
    NSLog(@"游啊游");
}

- (void)display {
    //子类重载
}

- (void)quack {
    [self.quackInterface quack];
}

- (void)fly {
    [self.flyInterface fly];
}

@end
