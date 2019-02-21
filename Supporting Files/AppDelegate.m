//
//  AppDelegate.m
//  DesignPatterns
//
//  Created by 刘永杰 on 2018/11/30.
//  Copyright © 2018 刘永杰. All rights reserved.
//

#import "AppDelegate.h"
#import "MainViewController.h"
#import "FeedModel.h"
#import "ANYPizzaStore.h"
#import "AChicagoPizzaStore.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    
    MainViewController *mainVC =  [MainViewController new];
    mainVC.view.frame = [UIScreen mainScreen].bounds;
    mainVC.view.backgroundColor = [UIColor whiteColor];
    
    UINavigationController *nav = [[UINavigationController alloc] initWithRootViewController:mainVC];
    self.window.rootViewController = nav;
    [self.window makeKeyAndVisible];
    
    ANYPizzaStore *NYStore = [ANYPizzaStore new];
    [NYStore orderPizza:APizzaTypeCheese];
    
    AChicagoPizzaStore *chicagoStore = [AChicagoPizzaStore new];
    [chicagoStore orderPizza:APizzaTypeVeggie];
    

    return YES;
}

#pragma mark - Test

- (void)test {
    NSString *str = @"测试";
    
    NSMutableString *str2 = [NSMutableString stringWithFormat:@"测试2"];
    NSMutableArray *array = @[@"test"].mutableCopy;
    NSMutableArray *array2 = [NSMutableArray arrayWithObject:@"test2"];
    
    FeedModel *model = [FeedModel new];
    model.feedId = @"123";
    
    void (^BlockTest)(void) = ^{
        [str2 appendString:@"block内部"];
        array2[0] = @"array2 内部";
        model.feedId = @"345";
        NSLog(@"\n==%@,%p", str, &str);
        NSLog(@"\n==%@,%p", str2, &str2);
        NSLog(@"\n==%@,%p", array, &array);
        NSLog(@"\n==%@,%p", array2, &array2);
        NSLog(@"\n==%@,%p", model.feedId, &model);
        
    };
    
    str = @"哈哈";
    array[0] = @"Array哈哈";
    array2 = [NSMutableArray arrayWithObject:@"test3"];
    [str2 appendString:@"block 😄"];
    
    model.feedId = @"456";
    
    
    BlockTest();
    
    NSLog(@"\n==%@,%p", str, &str);
    
    NSLog(@"\n==%@,%p", str2, &str2);
    
    NSLog(@"\n==%@,%p", array2, &array2);
    
    NSLog(@"\n==%@,%p", model.feedId, &model);
}

- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
}


- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}


- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
}


- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}


- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}


@end
