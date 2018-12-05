//
//  FeedDetailViewController.m
//  DesignPatterns
//
//  Created by 刘永杰 on 2018/12/5.
//  Copyright © 2018 刘永杰. All rights reserved.
//

#import "FeedDetailViewController.h"
#import "FeedDetailView.h"

@interface FeedDetailViewController ()

@end

@implementation FeedDetailViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.view.backgroundColor = [UIColor whiteColor];
    
    FeedDetailView *detailView = [FeedDetailView new];
    detailView.frame = CGRectMake(0, 64, [UIScreen mainScreen].bounds.size.width, 300);
    detailView.feed = self.feed;
    [self.feed registerObserver:detailView];
    
    [self.view addSubview:detailView];
    
    // Do any additional setup after loading the view.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
