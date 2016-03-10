//
//  AppDelegate.m
//  EmptyIOS
//
//  Created by Mac on 16/3/10.
//  Copyright © 2016年 zk. All rights reserved.
//

#import "AppDelegate.h"

@interface AppDelegate ()
@property UILabel* show;
@end

@implementation AppDelegate
//应用程序加载完成，将会自动回调该方法
- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    //创建UIWinodw对象，并将该UIWindow初始化为与屏幕相同大小
    self.window=[[UIWindow alloc] initWithFrame:[[UIScreen mainScreen]bounds]];
    //设置UIWindow背景景色
    self.window.backgroundColor=[UIColor whiteColor];
   
    //创建一个UIViewController对象
    UIViewController* controller=[[UIViewController alloc] init];
    //让该程序的窗口加载并显示viewController视图控制器管理的用户界面
    self.window.rootViewController=controller;
    //创建一个UIView对象
    UIView* rootView=[[UIView alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    //设置controller显示rootView控件
    controller.view=rootView;
    
    //创建一个圆角按钮
    UIButton* button=[UIButton buttonWithType:UIButtonTypeRoundedRect];
    //设置按钮大小
    button.frame=CGRectMake(120, 100, 80, 40);
    //为按钮设置大小
    [button setTitle:@"确定" forState:UIControlStateNormal];
    
    //将按钮添加到rootView控件中
    [rootView addSubview:button];
    //创建一个UILabel对象
    self.show=[[UILabel alloc] initWithFrame:CGRectMake(60, 40, 180, 30)];
    //将UILabel添加到rootView控件中
    [rootView addSubview:self.show];
    //设置UILabel默认显示的文本
    self.show.text=@"初始文本";
    self.show.backgroundColor=[UIColor grayColor];
    
    
    //为圆角按钮的触碰事件绑定事件处理方法
    [button addTarget:self  action:@selector(clickHandler:) forControlEvents:UIControlEventTouchUpInside];
    
    //将该UIWindow对象设为主窗口并显示出来
    [self.window makeKeyAndVisible];
    
    return YES;
}

-(void) clickHandler:(id)sendeer{
  self.show.text=@"开始学习";
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
