//
//  AppDelegate.m
//  UITabBarControllerDemo
//
//  Created by Mac on 16/3/25.
//  Copyright © 2016年 zk. All rights reserved.
//

#import "AppDelegate.h"
#import "FirstViewController.h"
#import "SecondViewController.h"
#import "ThridViewController.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    self.window=[[UIWindow alloc]initWithFrame:[[UIScreen mainScreen]bounds]];
    self.window.backgroundColor=[UIColor whiteColor];
    //第一个界面
    FirstViewController *firstVC=[[FirstViewController alloc]initWithNibName:
    @"FirstViewController" bundle:nil];
    //第二个界面
    SecondViewController *secondVC=[[SecondViewController alloc]initWithNibName:
    @"SecondViewController" bundle:nil];
    //第三个界面
    ThridViewController *thridVC=[[ThridViewController alloc]initWithNibName:
    @"ThridViewController" bundle:nil];
    
    //定义导航控件
    UINavigationController *nav1=[[UINavigationController alloc]initWithRootViewController:firstVC];
    UINavigationController *nav2=[[UINavigationController alloc]initWithRootViewController:secondVC];
    UINavigationController *nav3=[[UINavigationController alloc]initWithRootViewController:thridVC];
    
    //定义UITabBarController
    UITabBarController *tabBar=[[UITabBarController alloc]init];
    tabBar.viewControllers=@[nav1,nav2,nav3];
    
    self.window.rootViewController=tabBar;
    
    [self.window makeKeyAndVisible];
    
    
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
