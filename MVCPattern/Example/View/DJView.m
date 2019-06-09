//
//  DJView.m
//  DesignPatterns
//
//  Created by 刘永杰 on 2019/6/9.
//  Copyright © 2019 刘永杰. All rights reserved.
//

#import "DJView.h"
#import "BeatModel.h"

@interface DJView ()

@property (strong, nonatomic) UILabel *bpmLabel;
@property (strong, nonatomic) UITextField *bpmTextField;
@property (strong, nonatomic) UIButton *setButton;
@property (strong, nonatomic) UIButton *addButton;
@property (strong, nonatomic) UIButton *subButton;

@end

@implementation DJView

- (void)dealloc {
    [self.model removeObserver:self];
}

- (instancetype)initWithFrame:(CGRect)frame {
    self = [super initWithFrame:frame];
    if (self) {
        [self setupSuviews];
    }
    return self;
}

- (void)setupSuviews {
    [self addSubview:self.bpmLabel];
}

- (void)setModel:(id<DPSubjectInterface>)model {
    _model = model;
    
    [model registerObserver:self];
}

- (void)buttonAction:(UIButton *)sender {
    if (sender == self.setButton) {
        [self.controller setBPM:self.bpmTextField.text.integerValue];
    } else if (sender == self.addButton) {
        [self.controller increaseBPM];
    } else if (sender == self.subButton) {
        [self.controller decreaseBPM];
    }
}

#pragma mark - DPObserverInterface

- (void)updateBPM {
    self.bpmLabel.text = [NSString stringWithFormat:@"%ld", [(BeatModel *)self.model bpm]];
}

#pragma mark - Lazy Loading

- (UILabel *)bpmLabel {
    if (!_bpmLabel) {
        _bpmLabel = [UILabel new];
    }
    return _bpmLabel;
}

- (UIButton *)setButton {
    if (!_setButton) {
        _setButton = [UIButton buttonWithType:UIButtonTypeCustom];
        [_setButton addTarget:self action:@selector(buttonAction:) forControlEvents:UIControlEventTouchUpInside];
    }
    return _setButton;
}

- (UIButton *)addButton {
    if (!_addButton) {
        _addButton = [UIButton buttonWithType:UIButtonTypeCustom];
        [_addButton addTarget:self action:@selector(buttonAction:) forControlEvents:UIControlEventTouchUpInside];
    }
    return _addButton;
}

- (UIButton *)subButton {
    if (!_subButton) {
        _subButton = [UIButton buttonWithType:UIButtonTypeCustom];
        [_subButton addTarget:self action:@selector(buttonAction:) forControlEvents:UIControlEventTouchUpInside];
    }
    return _subButton;
}

@end
