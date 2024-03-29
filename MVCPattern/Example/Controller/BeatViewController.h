//
//  BeatViewController.h
//  DesignPatterns
//
//  Created by 刘永杰 on 2019/6/9.
//  Copyright © 2019 刘永杰. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface BeatViewController : UIViewController

- (void)increaseBPM;

- (void)decreaseBPM;

- (void)setBPM:(NSInteger)bpm;

@end

NS_ASSUME_NONNULL_END
