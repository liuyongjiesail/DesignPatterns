//
//  Light.m
//  DesignPatterns
//
//  Created by 刘永杰 on 2019/3/10.
//  Copyright © 2019 刘永杰. All rights reserved.
//

#import "Light.h"

@implementation Light

- (void)on {
    NSLog(@"%@灯打开", self.place);
}

- (void)off {
    NSLog(@"%@灯关闭", self.place);
}

@end
