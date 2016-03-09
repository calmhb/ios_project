//
//  ViewController.m
//  SecondIOS
//
//  Created by Mac on 16/3/9.
//  Copyright © 2016年 zk. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController
//重写该方法，当该控制器关联的视图加载完成后系统会调用该方法
- (void)viewDidLoad {
    [super viewDidLoad];
    NSLog(@"---nib文件加载完成---");
    //如果程序需要在nib视图文件加载完成后执行某些额外的处理，可以在此处编写代码
    //借助viewWithTag:方法即可通过UI控件的Tag属性来获取该控件
    UILabel* myLb=(UILabel*)[self.view viewWithTag:12];
    //设置myLab文本内容
    [myLb setText:@"BetterMan"];
    //直接通过IBOutlet属性来访问第一个UILabel控件
    [self.myTxt setText:@"Hao Ren"];
    //为logiBtn控件的UIControlEventTouchUpInside事件绑定事件处理方法
    //以当前对象的loginHandler:方法作为事件处理方法
    [self.loginBtn addTarget:self action:@selector(loginHandler:) forControlEvents:UIControlEventTouchUpInside];
   
}
//实现部分手动新增的方法
-(void)loginHandler:(UIButton *)sender{
    [self.myTxt setText:@"通过代码绑定事件处理方法"];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)clickHandler:(UIButton *)sender {
    [self.myTxt setText:@"按钮被触摸了"];
}
@end


















