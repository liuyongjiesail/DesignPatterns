//
//  GooseAdapter.h
//  DesignPatterns
//
//  Created by 刘永杰 on 2019/4/21.
//  Copyright © 2019 刘永杰. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "CPQuackInterface.h"
#import "Goose.h"

NS_ASSUME_NONNULL_BEGIN

@interface GooseAdapter : NSObject<CPQuackInterface>

- (instancetype)initGooseAdapter:(Goose *)goose;

@end

NS_ASSUME_NONNULL_END
