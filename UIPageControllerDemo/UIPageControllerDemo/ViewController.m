//
//  ViewController.m
//  UIPageControllerDemo
//
//  Created by Mac on 16/3/21.
//  Copyright © 2016年 zk. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (nonatomic,strong) NSArray * contentList;
@property (nonatomic,strong) NSArray * converList;
@end

@implementation ViewController
- (id)initWithPageNumber:(NSInteger)pageNumber;
{
    //正面列表
    self.contentList=[NSArray arrayWithObjects:@"iOS01.png",@"iOS02.png",@"iOS03.png",@"iOS04.png",nil];
    //背面列表
    self.converList=@[@"iOS04.png",@"iOS03.png",@"iOS02.png",@"iOS01.png"];
    self.pageIndex=pageNumber;
    self=[super initWithNibName:nil bundle:nil];
    if (self) {
        //设置背景
        self.view.backgroundColor=[UIColor grayColor];
        //创建UILabel控件
        UILabel * label=[[UILabel alloc] initWithFrame:CGRectMake(260, 10, 60, 35)];
        label.backgroundColor=[UIColor clearColor];
        label.textColor=[UIColor redColor];
        //设置UILabel控件显示的文本
        label.text=[NSString stringWithFormat:@"第[%ld]页",pageNumber+1];
        //将UILabel添加到程序界面中
        [self.view addSubview:label];
        //创建UILabel控件
        UILabel* bookLabel=[[UILabel alloc] initWithFrame:CGRectMake(0, 30, CGRectGetWidth(self.view.frame), 60)];
        bookLabel.textAlignment=NSTextAlignmentCenter;
        bookLabel.numberOfLines=2;
        bookLabel.font=[UIFont systemFontOfSize:24];
        bookLabel.backgroundColor=[UIColor clearColor];
        bookLabel.textColor=[UIColor blueColor];
        //设置UILabel控件显示的文本
        bookLabel.text=[self.contentList objectAtIndex:pageNumber%4];
        //将UILabel添加到程序界面中
        [self.view addSubview:bookLabel];
        
        //创建UIImageView控件
        UIImageView* bookImage=[[UIImageView alloc]initWithFrame:CGRectMake(0, 90, CGRectGetWidth(self.view.frame), 320)];
        //设置该控件的图片缩放模式
        bookImage.contentMode=UIViewContentModeScaleAspectFit;
        //设置该UIImageView所显示的图片
        bookImage.image=[UIImage imageNamed:[self.converList objectAtIndex:pageNumber%4]];
        //将UIImageView添加到程序界面中
        [self.view addSubview:bookImage];
        
        
    }
    return self;
   
}
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
































