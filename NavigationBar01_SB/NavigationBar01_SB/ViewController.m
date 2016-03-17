//
//  ViewController.m
//  NavigationBar01_SB
//
//  Created by Mac on 16/3/17.
//  Copyright © 2016年 zk. All rights reserved.
//

#import "ViewController.h"

static NSInteger count;

@interface ViewController ()
//定义记录当前是添加第几个UINavigationItem的计数器

@property (nonatomic,strong)UINavigationBar *navigationBar;
@end

@implementation ViewController


- (void)viewDidLoad {
    [super viewDidLoad];
    count=1;
    //创建一个导航栏
    _navigationBar=[[UINavigationBar alloc]initWithFrame:CGRectMake(0, 20, 320, 44)];
    //将导航栏添加到视图中
    [self.view  addSubview:_navigationBar];
    //调用push方法添加一个UINavigationItem
    [self push];
    
}

-(void) push{
  //把导航栏集合添加到导航栏中,设置动画打开
    [_navigationBar pushNavigationItem:[self makeNavItem] animated:YES];
    count++;
}
//出栈
-(void)pop{
   //如果还有超过两个UINavigationItem
    if (count>2) {
        count--;
        //弹出最顶层的UINavigationItem
        [_navigationBar popNavigationItemAnimated:YES];
    }else{
      //使用UIAlertView提示用户
        UIAlertView* alert=[[UIAlertView alloc] initWithTitle:@"提示"
             message:@"只有最后一个导航项,再出栈就没有了"
             delegate:nil cancelButtonTitle:@"ok" otherButtonTitles:nil];
        [alert show];
    }
}

-(UINavigationItem*) makeNavItem{
   //创建一个导航项
    UINavigationItem* navItem=[[UINavigationItem alloc]initWithTitle:nil];
    //创建一个左边按钮
    UIBarButtonItem *leftBtn=[[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemAdd target:self action:@selector(push)];
    //创建一个右边按钮
    UIBarButtonItem *rightBtn=[[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemCancel target:self action:@selector(pop)];
    //设置导航栏内容
    navItem.title=[NSString stringWithFormat:@"第[%d]个导航项",count];
    //将左右两个按钮添加到导航栏集合中
    [navItem setLeftBarButtonItem:leftBtn];
    [navItem setRightBarButtonItem:rightBtn];
    
    return navItem;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end























