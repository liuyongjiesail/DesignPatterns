//
//  Light.h
//  DesignPatterns
//
//  Created by 刘永杰 on 2019/3/10.
//  Copyright © 2019 刘永杰. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Light : NSObject

@property (copy, nonatomic) NSString *place;

- (void)on;

- (void)off;

@end

NS_ASSUME_NONNULL_END
