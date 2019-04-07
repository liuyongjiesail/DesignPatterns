//
//  CPWaitress.m
//  DesignPatterns
//
//  Created by 刘永杰 on 2019/4/7.
//  Copyright © 2019 刘永杰. All rights reserved.
//

#import "CPWaitress.h"

@interface CPWaitress ()

@property (strong, nonatomic) MenuComponent *allMenus;

@end

@implementation CPWaitress

- (instancetype)initWithMenuComponent:(MenuComponent *)allMenus {
    self = [super init];
    if (self) {
        self.allMenus = allMenus;
    }
    return self;
}

- (void)print {
    [self.allMenus print];
}

@end
