//
//  AbstractClass.h
//  DesignPatterns
//
//  Created by 刘永杰 on 2019/3/24.
//  Copyright © 2019 刘永杰. All rights reserved.
//

// 抽象类

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface AbstractClass : NSObject

// 这个属性也是一种钩子的用法，可重写它的getter放决定模板方法的行为
@property (assign, nonatomic) BOOL isAddOther;

// 模板方法，子类也不可重写
- (void)templateMethod;

// 这两个方法定义成抽象，由具体的子类实现
- (void)primitiveOperation1;

- (void)primitiveOperation2;

// 具体的方法，子类不可重写
- (void)concreteOperation;

// 这也是一个具体的方法，但它什么事情都不做。默认不做事情的方法，我们称之为钩子。子类可以视情况决定要不要覆盖它们
- (void)hook;

@end

NS_ASSUME_NONNULL_END
