//
//  DPViewInterface.h
//  DesignPatterns
//
//  Created by 刘永杰 on 2018/12/5.
//  Copyright © 2018 刘永杰. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "DPModelInterface.h"

NS_ASSUME_NONNULL_BEGIN

@protocol DPViewInterface <NSObject>

- (void)notifyUpdateData:(id)model;

@end

NS_ASSUME_NONNULL_END