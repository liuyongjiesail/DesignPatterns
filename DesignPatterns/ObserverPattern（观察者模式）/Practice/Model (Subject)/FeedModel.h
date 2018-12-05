//
//  FeedModel.h
//  DesignPatterns
//
//  Created by 刘永杰 on 2018/12/5.
//  Copyright © 2018 刘永杰. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "DPModelInterface.h"
#import "DPViewInterface.h"

NS_ASSUME_NONNULL_BEGIN

@interface FeedModel : NSObject<DPModelInterface>

@property (copy, nonatomic) NSString *feedId;
@property (copy, nonatomic) NSString *title;

@property (assign, nonatomic) BOOL   isPraise;

- (instancetype)initFeed:(NSString *)feedId title:(NSString *)title praise:(BOOL)isPraise;

@end

NS_ASSUME_NONNULL_END
