//
//  ViewController.m
//  FirstIOS
//
//  Created by Mac on 16/3/7.
//  Copyright © 2016年 Mac. All rights reserved.
//

#import "ViewController.h"
//定义ViewController的扩展，对该项目没有什么实际意义，可删除
@interface ViewController ()
@end
//定义ViewController的实现部分
@implementation ViewController
//重写该方法，当该控制器关联的视图加载完成后系统会调用该方法
- (void)viewDidLoad {
    [super viewDidLoad];
    NSLog(@"nib文件加载完成!!");
    //如果程序需要在nib视图文件加载完成后执行某些额外的处理，可在此处编写代码
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    //此处可考虑释放那些可以以后重建的资源
}

@end
