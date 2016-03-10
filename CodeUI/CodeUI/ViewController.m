//
//  ViewController.m
//  CodeUI
//
//  Created by Mac on 16/3/10.
//  Copyright © 2016年 zk. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController
//定义一个变量来记录下一个将要添加的UILabel的位置
int nextY=80;

- (void)viewDidLoad {
    [super viewDidLoad];
    //设置该view的背景颜色
    self.view.backgroundColor=[UIColor grayColor];
    //初始化labels数组
    self.labels=[NSMutableArray array];
    //创建UIButtonTypeRoundedRect类型的UIButton对象
    UIButton* addBtn=[UIButton buttonWithType:UIButtonTypeRoundedRect];
    //设置addBtn的大小和位置
    addBtn.frame=CGRectMake(30, 30, 60, 40);
    //为UIButton设置按钮文本
    [addBtn setTitle:@"添 加" forState:UIControlStateNormal];
    //为addBtn的Touch up Inside事件绑定事件处理方法
    [addBtn addTarget:self action:@selector(add:) forControlEvents:UIControlEventTouchUpInside];
    //创建UIButtonTypeRoundedRect类型的UIButton对象
    UIButton* removeBtn=[UIButton buttonWithType:UIButtonTypeRoundedRect];
    //设置removeBtn的大小和位置
    removeBtn.frame=CGRectMake(230, 30, 60, 40);
    //为UIButton设置按钮文本
    [removeBtn setTitle:@"删 除" forState:UIControlStateNormal];
    
    [self.view addSubview:addBtn];
    [self.view addSubview:removeBtn];
    
}

-(void) add:(id)sender{
  //创建一个UILabel控件
    UILabel* label=[[UILabel alloc] initWithFrame:CGRectMake(80, nextY, 160, 30)];
    label.text=@"swift";//设置UILabel显示的文本
    [self.labels addObject:label];//添加到labels数组中
    [self.view addSubview:label];//将UILabel添加到view父控件中
    nextY+=50;
    

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



























@end
