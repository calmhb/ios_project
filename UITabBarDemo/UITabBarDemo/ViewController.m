//
//  ViewController.m
//  UITabBarDemo
//
//  Created by Mac on 16/3/25.
//  Copyright © 2016年 zk. All rights reserved.
//

#import "ViewController.h"
//实现UITabBarDelegate协议,充当UITabBar的delegate对象
@interface ViewController ()<UITabBarDelegate>

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    //创建UITabBar对象
    UITabBar* tabBar=[[UITabBar alloc]initWithFrame:CGRectMake(0, 20, 320,44 )];
    //设置代理对象
    tabBar.delegate=self;
    //将tabBar添加到标签条中
    [self.view addSubview:tabBar];
    //使用系统图标创建标签项
    UITabBarItem *tabItem1=[[UITabBarItem alloc]initWithTabBarSystemItem:UITabBarSystemItemHistory tag:0];
    //使用系统图标创建标签项
    /*ios7.0之后 ，Xcode他默认的自定义的图标是灰色的或者是背景是灰色,图片是系统可以识别的如果是其他的彩色的图片系统就回用灰色覆盖图片，点击后是蓝色的，系统默认点击后是蓝色的
     imageWithRenderingMode 设置图片的表现形式UIImageRenderingModeAlwaysOriginal 原样表示
     */
    UITabBarItem *tabItem2=[[UITabBarItem alloc] initWithTitle:@"Better Man" image:[[UIImage imageNamed:@"ibook1.png"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal] tag:1];

    tabItem2.badgeValue=@"Hot";

    UITabBarItem *tabItem3=[[UITabBarItem alloc]initWithTitle:@"用户信息" image:[[UIImage imageNamed:@"spotlight1.png"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal] tag:2];
    //为UITabBar设置多个标签项
    tabBar.items=[NSArray arrayWithObjects:tabItem1,tabItem2,tabItem3,nil];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
//有UITabBarDelegate定义的方法,当用户选中某个标签时激发该方法
-(void)tabBar:(UITabBar *)tabBar didSelectItem:(UITabBarItem *)item{
    NSString *msg=[NSString stringWithFormat:@"选中第%d项",item.tag];
    //创建并显示一个UIAlertView控件
    UIAlertView* alert=[[UIAlertView alloc] initWithTitle:@"提示" message:msg delegate:nil cancelButtonTitle:@"OK" otherButtonTitles:nil];
    [alert show];
}

@end





























