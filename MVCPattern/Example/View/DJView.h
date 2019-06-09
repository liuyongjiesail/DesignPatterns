//
//  DJView.h
//  DesignPatterns
//
//  Created by 刘永杰 on 2019/6/9.
//  Copyright © 2019 刘永杰. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "DPSubjectInterface.h"
#import "DPObserverInterface.h"
#import "BeatViewController.h"

NS_ASSUME_NONNULL_BEGIN

@interface DJView : UIView<DPObserverInterface>

@property (strong, nonatomic) BeatViewController *controller;
@property (strong, nonatomic) id<DPSubjectInterface> model;

@end

NS_ASSUME_NONNULL_END
