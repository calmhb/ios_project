//
//  FirstViewController.m
//  NavigationController02
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
     //设定导航栏标题
    self.title=@"所有联系人";
    //设置左边的按钮
    self.navigationItem.leftBarButtonItem=[[UIBarButtonItem alloc] initWithTitle:
    @"组群" style:UIBarButtonItemStylePlain target:nil action:nil];
    //为右边的按钮提供add方法处理事件
    self.navigationItem.rightBarButtonItem=[[UIBarButtonItem alloc]initWithBarButtonSystemItem:UIBarButtonSystemItemAdd target:self action:@selector(add:)];//注意:冒号表示带有参数,参数就是当前的UIBarButtonItem
}

-(void)add:(UIBarButtonItem*) buttonItem
{
   //初始化第二个界面
    SecondViewController* secondVC=[[SecondViewController alloc]initWithNibName:
    @"SecondViewController" bundle:nil];
    //为第二个界面重新创建一个NavigationController
    UINavigationController *nai2=[[UINavigationController alloc] initWithRootViewController:secondVC];
    
    [self.navigationController presentViewController:nai2 animated:YES completion:nil];
}

-(id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self=[super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        NSLog(@"初始化FirstVC视图");
    }
    return self;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
@end



















