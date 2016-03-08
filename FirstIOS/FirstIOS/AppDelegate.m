//
//  AppDelegate.m
//  FirstIOS
//
//  Created by Mac on 16/3/7.
//  Copyright © 2016年 Mac. All rights reserved.
//

#import "AppDelegate.h"
#import "ViewController.h"

@interface AppDelegate ()

@end

@implementation AppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:
   (NSDictionary *)launchOptions {
    //当应用程序启动后将会调用该方法
    //创建UIWindow对象，并初始化该窗口的大小与主屏幕大小相同
    //程序将创建的UIWindow对象赋值给该程序委托对象的window属性
    self.window=[[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    //创建ViewController对象，并使用ViewController界面布局文件来初始化该视图控制器关联的
    //用户界面
    self.viewController=[[ViewController alloc] initWithNibName:
                         @"ZKViewController" bundle:nil];
    //让该程序的窗口加载并显示viewController视图控制器关联的用户界面
    self.window.rootViewController=self.viewController;
    //将该UIWindow对象设为主窗口，并显示出来
    [self.window makeKeyAndVisible];
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application {
    //当应用程序从活动状态转入不活动状态时，系统将会调用该方法
    //通常而言，当应用程序突然被中断(如有电话，短信进来时)，系统会回调该方法
    //另外，当用户离开该程序，程序开始转入后台状态时也会回调该方法
}

- (void)applicationDidEnterBackground:(UIApplication *)application {
   //通常通过重写该方法来释放共享资源，保存用户数据，取消定时器
   //开发者通过该方法来保存足够的状态数据，这样保证用户重新启动该应用时能正确恢复到当前状态
   //如果应用程序支持后台执行，当用户退出时，系统调用该方法，而不是调用
    //applicationWillTerminate:方法
}

- (void)applicationWillEnterForeground:(UIApplication *)application {
     //当应用程序将要进入前台是将会调用该方法
}

- (void)applicationDidBecomeActive:(UIApplication *)application {
    // 当应用程序进入前台并转入活动状态是将会调用该方法
}

- (void)applicationWillTerminate:(UIApplication *)application {
    //当应用程序被终止时，系统将会调用该方法
}
@end
