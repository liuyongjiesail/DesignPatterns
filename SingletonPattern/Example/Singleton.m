//
//  Singleton.m
//  DesignPatterns
//
//  Created by 刘永杰 on 2019/3/10.
//  Copyright © 2019 刘永杰. All rights reserved.
//

#import "Singleton.h"

@implementation Singleton

+ (instancetype)instance {
    static Singleton *uniqueInstance;
    if (uniqueInstance == nil) {
        uniqueInstance = Singleton.new;
    }
    return uniqueInstance;
}

// 以上方法非线程安全的，为了解决线程安全，有三种方法可行

// 一、使用 @synchronized 加锁，但是这样会影响性能
+ (instancetype)safeInstance1 {
    static Singleton *uniqueInstance;
    @synchronized (self) {
        if (uniqueInstance == nil) {
            uniqueInstance = Singleton.new;
        }
        return uniqueInstance;
    }
}

// 二、使用“急切”创建实例，而不用延迟实例化的做法
+ (instancetype)safeInstance2 {
    static Singleton *uniqueInstance;
    uniqueInstance = Singleton.new;
    return uniqueInstance;
}

// 三、使用“双重检查加锁”，减少使用同步
+ (instancetype)safeInstance3 {
    static Singleton *uniqueInstance;
    if (uniqueInstance == nil) {
        @synchronized (self) {
            if (uniqueInstance == nil) {
                uniqueInstance = Singleton.new;
            }
        }
    }
    return uniqueInstance;
}

// 四、GCD
+ (instancetype)safeInstance4 {
    static dispatch_once_t onceToken;
    static Singleton *uniqueInstance;
    dispatch_once(&onceToken, ^{
        uniqueInstance = Singleton.new;
    });
    return uniqueInstance;
}

@end
