//
//  FeedCell.m
//  DesignPatterns
//
//  Created by 刘永杰 on 2018/12/5.
//  Copyright © 2018 刘永杰. All rights reserved.
//

#import "FeedCell.h"

@interface FeedCell ()

@property (strong, nonatomic) UILabel  *titleLabel;
@property (strong, nonatomic) UIButton *praiseButton;

@end

@implementation FeedCell

- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier {
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        [self setupViews];
    }
    return self;
}

- (void)setupViews {
    
    self.titleLabel = [UILabel new];
    self.titleLabel.frame = CGRectMake(16, 0, 150, 45);
    self.titleLabel.text = @"测试";
    [self.contentView addSubview:self.titleLabel];
    
    self.praiseButton = [UIButton buttonWithType:UIButtonTypeCustom];
    self.praiseButton.frame = CGRectMake([UIScreen mainScreen].bounds.size.width - 100 - 16, 5, 100, 35);
    self.praiseButton.backgroundColor = [UIColor blueColor];
    [self.praiseButton setTitle:@"赞" forState:UIControlStateNormal];
    [self.praiseButton setTitle:@"取消赞" forState:UIControlStateSelected];
    
    [self.praiseButton setTitleColor:[UIColor redColor] forState:UIControlStateNormal];
    [self.praiseButton setTitleColor:[UIColor whiteColor] forState:UIControlStateSelected];
    
    [self.praiseButton addTarget:self action:@selector(praiseAction:) forControlEvents:UIControlEventTouchUpInside];

    [self.contentView addSubview:self.praiseButton];
    
}

- (void)praiseAction:(UIButton *)sender {
    //模拟网络请求
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(1 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        self.feed.isPraise = !self.feed.isPraise;
    });
}

- (void)setFeed:(FeedModel *)feed {
    _feed = feed;
    self.titleLabel.text = [NSString stringWithFormat:@"id=%@ : %@", self.feed.feedId, self.feed.title];
    self.praiseButton.selected = self.feed.isPraise;
}

#pragma mark - DPViewInterface

- (void)notifyUpdateData:(id)model {
    self.feed = model;
}

@end
