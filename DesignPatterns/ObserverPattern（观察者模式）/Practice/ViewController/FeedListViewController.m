//
//  FeedListViewController.m
//  DesignPatterns
//
//  Created by 刘永杰 on 2018/12/4.
//  Copyright © 2018 刘永杰. All rights reserved.
//

#import "FeedListViewController.h"
#import "WeatherData.h"
#import "CurrentConditionsDisplay.h"
#import "StatisticsDisplay.h"
#import "ForecastDisplay.h"
#import "FeedCell.h"
#import "FeedDetailViewController.h"

@interface FeedListViewController ()

@property (strong, nonatomic) NSMutableArray *dataArray;

@end

@implementation FeedListViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.title = @"观察者模式 - 信息流列表";
    
    WeatherData *weatherData = [WeatherData new];
    
    CurrentConditionsDisplay *currentDisplay = [[CurrentConditionsDisplay alloc] initDisplay:weatherData];
    StatisticsDisplay *statisticsDisplay = [[StatisticsDisplay alloc] initWithDisplay:weatherData];
    ForecastDisplay *forecastDisplay = [[ForecastDisplay alloc] initWithDisplay:weatherData];
    
    [weatherData setMeasurements:37.9 humidity:45.0 pressure:29.0f];
    
    [weatherData setMeasurements:38.9 humidity:48.0 pressure:29.1f];

    [weatherData setMeasurements:39.9 humidity:49.0 pressure:29.5f];

    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
    
    self.dataArray = [NSMutableArray array];
    
    [self.tableView registerClass:[FeedCell class] forCellReuseIdentifier:@"feedCell"];
    
    FeedModel *model1 = [[FeedModel alloc] initFeed:@"100" title:@"毒液" praise:YES];
    FeedModel *model2 = [[FeedModel alloc] initFeed:@"101" title:@"浩克" praise:NO];
    FeedModel *model3 = [[FeedModel alloc] initFeed:@"102" title:@"黑寡妇" praise:NO];
    FeedModel *model4 = [[FeedModel alloc] initFeed:@"100" title:@"蚁人" praise:YES];
    FeedModel *model5 = [[FeedModel alloc] initFeed:@"101" title:@"美国队长" praise:NO];

    for (int i = 0; i < 5; i++) {
        [self.dataArray addObject:model1];
        [self.dataArray addObject:model2];
        [self.dataArray addObject:model3];
        [self.dataArray addObject:model4];
        [self.dataArray addObject:model5];
    }
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.dataArray.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    FeedCell *cell = [tableView dequeueReusableCellWithIdentifier:@"feedCell" forIndexPath:indexPath];
    cell.feed = self.dataArray[indexPath.row];
    
    // Configure the cell...
    
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
    
    FeedDetailViewController *detailVC = [FeedDetailViewController new];
    detailVC.feed = self.dataArray[indexPath.row];
    [self showViewController:detailVC sender:nil];
}

- (void)tableView:(UITableView *)tableView willDisplayCell:(UITableViewCell *)cell forRowAtIndexPath:(NSIndexPath *)indexPath {
    FeedModel *feed = self.dataArray[indexPath.row];
    [feed registerObserver:cell]; //将要显示的时候注册
}

- (void)tableView:(UITableView *)tableView didEndDisplayingCell:(UITableViewCell *)cell forRowAtIndexPath:(NSIndexPath *)indexPath {
    FeedModel *feed = self.dataArray[indexPath.row];
    [feed removeObserver:cell];  //将要消失的时候移除
}

@end
