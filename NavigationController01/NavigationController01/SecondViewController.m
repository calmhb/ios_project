//
//  SecondViewController.m
//  NavigationController01
//
//  Created by Mac on 16/3/18.
//  Copyright © 2016年 zk. All rights reserved.
//

#import "SecondViewController.h"

@interface SecondViewController ()

@end

@implementation SecondViewController

-(void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
    //因此第二个页面的工具条
    self.navigationController.toolbarHidden=YES;
}

- (void)viewDidLoad {
    [super viewDidLoad];
   
    self.title=@"SecondVC";
    //为导航添加右边的按钮样式
    self.navigationItem.rightBarButtonItem=[[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemAdd target:nil action:nil];

}
//内存释放调用
-(void) dealloc{
    NSLog(@"SecondVC dealloc");
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)toFirstVC:(id)sender {
    [self.navigationController popViewControllerAnimated:YES];
}
@end
