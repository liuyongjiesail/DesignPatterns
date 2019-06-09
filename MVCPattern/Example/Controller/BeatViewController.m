//
//  BeatViewController.m
//  DesignPatterns
//
//  Created by 刘永杰 on 2019/6/9.
//  Copyright © 2019 刘永杰. All rights reserved.
//

#import "BeatViewController.h"
#import "BeatModel.h"
#import "DJView.h"

@interface BeatViewController ()

@property (strong, nonatomic) BeatModel *model;
@property (strong, nonatomic) DJView *djView;

@end

@implementation BeatViewController

- (void)loadView {
    [super loadView];
    self.djView.frame = [UIScreen mainScreen].bounds;
    self.view = self.djView;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.djView.model = self.model;
    self.djView.controller = self;
    
}

- (void)increaseBPM {
    self.model.bpm++;
}

- (void)decreaseBPM {
    self.model.bpm--;
}

- (void)setBPM:(NSInteger)bpm {
    self.model.bpm = bpm;
}

#pragma mark - Lazy Loading

- (BeatModel *)model {
    if (!_model) {
        _model = [BeatModel new];
    }
    return _model;
}

- (DJView *)djView {
    if (!_djView) {
        _djView = [DJView new];
    }
    return _djView;
}

@end
