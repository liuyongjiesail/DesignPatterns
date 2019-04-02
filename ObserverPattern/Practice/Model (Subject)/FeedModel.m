//
//  FeedModel.m
//  DesignPatterns
//
//  Created by 刘永杰 on 2018/12/5.
//  Copyright © 2018 刘永杰. All rights reserved.
//

#import "FeedModel.h"

// 静态数组，保存所有模型数据，用于同id的不同内存块模型数据同步
static NSHashTable *feedModelArray = nil;

@interface FeedModel ()

@property (strong, nonatomic) NSMutableArray<id<DPViewInterface>> *observerArray;

@end

@implementation FeedModel

- (instancetype)initFeed:(NSString *)feedId title:(NSString *)title praise:(BOOL)isPraise {
    self = [super init];
    if (self) {
        self.feedId = feedId;
        self.title = title;
        self.isPraise = isPraise;
        
        static dispatch_once_t onceToken;
        dispatch_once(&onceToken, ^{
            feedModelArray = [NSHashTable weakObjectsHashTable];
        });
        [feedModelArray addObject:self];
    }
    return self;
}

#pragma mark - Observer

- (void)setValue:(id)value forKey:(NSString *)key {
    [super setValue:value forKey:key];
    
    //1. 通知目前模型绑定的view修改
    [self notifyObservers];
    
    //2. 通知id一样的其他模型view修改
    for (FeedModel *model in feedModelArray) {
        if ([model.feedId isEqualToString:self.feedId]) { // id相同的才去通知
            if (![[model valueForKey:key] isEqual:value]) { // value值不一样是才去通知
                [model setValue:value forKey:key]; // 修改model的value
            }
        }
    }
}

- (void)setIsPraise:(BOOL)isPraise {
    _isPraise = isPraise;
    
    //1. 通知目前模型绑定的view修改
    [self notifyObservers];
    
    //2. 通知id一样的其他模型view修改
    for (FeedModel *model in feedModelArray) {
        if ([model.feedId isEqualToString:self.feedId]) { // id相同的才去通知
            if (model.isPraise != self.isPraise) { // value值不一样是才去通知
                model.isPraise = self.isPraise; // 修改model的value
            }
        }
    }
}

#pragma mark - DPSubjectInterface

- (void)notifyObservers {
    NSLog(@"通知状态修改 %@", self.observerArray);
    for (id<DPViewInterface> view in self.observerArray) {
        [view notifyUpdateData:self];
    }
}

- (void)registerObserver:(id<DPViewInterface>)observer {
    if (![self.observerArray containsObject:observer]) {
        [self.observerArray addObject:observer];
    }
}

- (void)removeObserver:(id<DPViewInterface>)observer {
    [self.observerArray removeObject:observer];
}

#pragma mark - Lazy Loading
- (NSMutableArray<id<DPViewInterface>> *)observerArray {
    if (!_observerArray) {
        _observerArray = [NSMutableArray array];
    }
    return _observerArray;
}

@end
