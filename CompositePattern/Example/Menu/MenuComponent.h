//
//  MenuComponent.h
//  DesignPatterns
//
//  Created by 刘永杰 on 2019/4/7.
//  Copyright © 2019 刘永杰. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface MenuComponent : NSObject

@property (copy, nonatomic) NSString  *name;
@property (copy, nonatomic) NSString  *Description;
@property (assign, nonatomic) BOOL    vegetarian;
@property (assign, nonatomic) CGFloat price;

- (void)add:(MenuComponent *)menuComponent;

- (void)remove:(MenuComponent *)menuComponent;

- (MenuComponent *)childIndex:(NSInteger)index;

- (void)print;

@end

NS_ASSUME_NONNULL_END
