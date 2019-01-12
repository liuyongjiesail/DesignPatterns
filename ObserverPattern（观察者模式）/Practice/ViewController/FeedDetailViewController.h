//
//  FeedDetailViewController.h
//  DesignPatterns
//
//  Created by 刘永杰 on 2018/12/5.
//  Copyright © 2018 刘永杰. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "FeedModel.h"

NS_ASSUME_NONNULL_BEGIN

@interface FeedDetailViewController : UIViewController

@property (strong, nonatomic) FeedModel *feed;

@end

NS_ASSUME_NONNULL_END
