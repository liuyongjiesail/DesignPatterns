//
//  FeedCell.h
//  DesignPatterns
//
//  Created by 刘永杰 on 2018/12/5.
//  Copyright © 2018 刘永杰. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "DPViewInterface.h"
#import "FeedModel.h"

NS_ASSUME_NONNULL_BEGIN

@interface FeedCell : UITableViewCell<DPViewInterface>

@property (strong, nonatomic) FeedModel *feed;

@end

NS_ASSUME_NONNULL_END
