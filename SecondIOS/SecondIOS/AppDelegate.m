//
//  AppDelegate.m
//  SecondIOS
//
//  Created by Mac on 16/3/9.
//  Copyright © 2016年 zk. All rights reserved.
//

#import "AppDelegate.h"

#import "ViewController.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    //当应用程序启动后将会调用该方法
    //创建UIWindow对象，并初始化该窗口的大小与主屏幕大小相同
    //程序将创建的UIWindow对象赋值给该程序委托对象的window属性
    self.window=[[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    //创建ViewController对象，并使用ViewController界面布局文件来初始化该视图控制器关联的
    //用户界面
    self.viewController=[[ViewController alloc] initWithNibName:
                         @"ViewController" bundle:nil];
    //让该程序的窗口加载并显示viewController视图控制器关联的用户界面
    self.window.rootViewController=self.viewController;
    //将该UIWindow对象设为主窗口，并显示出来
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
