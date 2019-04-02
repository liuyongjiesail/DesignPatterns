//
//  EnumerationIterator.m
//  DesignPatterns
//
//  Created by 刘永杰 on 2019/3/17.
//  Copyright © 2019 刘永杰. All rights reserved.
//

#import "EnumerationIterator.h"

@implementation EnumerationIterator

- (void)hasNext {
    [self.enumeration hasMoreElements];
}

- (void)next {
    [self.enumeration nextElement];
}

- (void)remove {
    NSLog(@"不支持");
}

@end
