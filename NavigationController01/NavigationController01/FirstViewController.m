//
//  FirstViewController.m
//  NavigationController01
//
//  Created by Mac on 16/3/18.
//  Copyright © 2016年 zk. All rights reserved.
//

#import "FirstViewController.h"
#import "SecondViewController.h"

@interface FirstViewController ()

@end

@implementation FirstViewController

- (void)viewDidLoad {
    [super viewDidLoad];
     self.title=@"FirstVC";//设置标题
    //为导航提供左边按钮,使用系统的默认的样式,该样式显示 left
    //self.navigationItem.leftBarButtonItem=[[UIBarButtonItem alloc] initWithTitle:@"left" style:UIBarButtonItemStylePlain target:nil action:nil];
    //使用自定义的按钮样式 ios8.0建议使用UIBarButtonItemStylePlain
    UIBarButtonItem *item1=[[UIBarButtonItem alloc] initWithTitle:@"B1" style:UIBarButtonItemStyleBordered target:nil action:nil];
    
    UIBarButtonItem *item2=[[UIBarButtonItem alloc]initWithTitle:@"B2" style:UIBarButtonItemStylePlain target:nil action:nil];
    //向左边添加多个自定义的按钮
    self.navigationItem.leftBarButtonItems=@[item1,item2];
    
    /**向右边添加按钮 单击会跳转到第二个界面**/
    self.navigationItem.rightBarButtonItem=[[UIBarButtonItem alloc]initWithTitle:@"Right" style:UIBarButtonSystemItemDone target:self action:@selector(next)];
    
    /**为导航栏提供UIToolBar 注意:默认ToolBar是隐藏的,重写viewWillAppear将其显示**/
    //1.准备按钮
    UIBarButtonItem* tb1=[[UIBarButtonItem alloc] initWithTitle:@"Tool1" style:UIBarButtonItemStyleBordered target:nil action:nil];
    
    UIBarButtonItem* tb2=[[UIBarButtonItem alloc]initWithTitle:@"Tool2" style:UIBarButtonItemStylePlain target:nil action:nil];
    
    UIBarButtonItem* tb3=[[UIBarButtonItem alloc]initWithTitle:@"Tool3" style:UIBarButtonItemStylePlain target:nil action:nil];
    //将ToolBar设置为显示,但是三个按钮在底部不是平均分布,所以要优化
   // self.toolbarItems=@[tb1,tb2,tb3];

    
    //木棍按钮:设定一个固定长度的按钮将其他三个按钮的位置进行调整
    UIBarButtonItem* fixed=[[UIBarButtonItem alloc]initWithBarButtonSystemItem:UIBarButtonSystemItemFixedSpace target:nil action:nil];
    fixed.width=20;
    
    //弹簧按钮:能够更具实际的宽度自动调整宽度
    UIBarButtonItem* flexible=[[UIBarButtonItem alloc]initWithBarButtonSystemItem:UIBarButtonSystemItemFlexibleSpace target:nil action:nil];
   // self.toolbarItems=@[fixed,tb1,tb2,tb3];
    //左右一个木棍按钮,设置左右两边都是20个像素
    //中将使用弹簧按钮将三个组件合适分布
    self.toolbarItems=@[fixed,tb1,flexible,tb2,flexible,tb3,fixed];
    
    
    
}
-(void) viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
    //设置UIToolBar的显示
    self.navigationController.toolbarHidden=NO;
}
//释放内存时执行该方法.
-(void) dealloc{
    NSLog(@"FirstVC dealloc...");
}
//为按钮绑定IBAction方法
-(IBAction )next{
    SecondViewController *secondVC=[[SecondViewController alloc] initWithNibName:
    @"SecondViewController" bundle:nil];
      //跳转到指定的页面
    [self.navigationController pushViewController:secondVC animated:YES];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end





























