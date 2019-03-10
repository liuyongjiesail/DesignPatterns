//
//  RemoteControl.m
//  DesignPatterns
//
//  Created by 刘永杰 on 2019/3/10.
//  Copyright © 2019 刘永杰. All rights reserved.
//

#import "RemoteControl.h"
#import "NoCommand.h"

@interface RemoteControl ()

@property (strong, nonatomic) NSMutableArray<id<Command>> *onCommandArray;
@property (strong, nonatomic) NSMutableArray<id<Command>> *offCommandArray;

@property (strong, nonatomic)id<Command> undoCommand;

@end

@implementation RemoteControl

- (instancetype)init {
    self = [super init];
    if (self) {
        self.onCommandArray = [NSMutableArray array];
        self.offCommandArray = [NSMutableArray array];
        self.undoCommand = [NoCommand new];
        
        for (int i = 0 ; i < 7; i++) {
            NoCommand *noCommand = [NoCommand new];
            [self.onCommandArray addObject:noCommand];
            [self.offCommandArray addObject:noCommand];
        }
    }
    return self;
}

- (void)setCommandSlot:(NSInteger)slot onCommand:(id<Command>)onCommand offCommand:(id<Command>)offCommand {
    self.onCommandArray[slot] = onCommand;
    self.offCommandArray[slot] = offCommand;
}

- (void)onButtonWasPushedSlot:(NSInteger)slot {
    [self.onCommandArray[slot] execute];
    self.undoCommand = self.onCommandArray[slot];
}

- (void)offButtonWasPushedSlot:(NSInteger)slot {
    [self.offCommandArray[slot] execute];
    self.undoCommand = self.offCommandArray[slot];
}

- (void)undoButtonWasPushed {
    [self.undoCommand undo];
}

- (NSString *)description {
    NSMutableArray *resultArray = [NSMutableArray array];
    [self.onCommandArray enumerateObjectsUsingBlock:^(id<Command>  _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
        NSString *string = [NSString stringWithFormat:@"端口：%ld, 打开:%@, 关闭：%@", idx, NSStringFromClass(self.onCommandArray[idx].class), NSStringFromClass(self.offCommandArray[idx].class)];
        [resultArray addObject:string];
        
    }];
    return [resultArray componentsJoinedByString:@"\n"];
}

@end
