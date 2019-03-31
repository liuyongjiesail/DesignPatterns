//
//  MenuItem.h
//  DesignPatterns
//
//  Created by 刘永杰 on 2019/3/31.
//  Copyright © 2019 刘永杰. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface MenuItem : NSObject
    
@property (copy, nonatomic) NSString  *name;
@property (copy, nonatomic) NSString  *Description;
@property (assign, nonatomic) BOOL    vegetarian;
@property (assign, nonatomic) CGFloat price;
    
- (instancetype)initWithName:(NSString *)name description:(NSString *)description vegetarian:(BOOL)vegetarian price:(CGFloat)price;
    
@end

NS_ASSUME_NONNULL_END
