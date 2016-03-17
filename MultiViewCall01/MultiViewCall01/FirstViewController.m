//
//  FirstViewController.m
//  MultiViewCall01
//
//  Created by Mac on 16/3/17.
//  Copyright © 2016年 zk. All rights reserved.
//

#import "FirstViewController.h"
#import "SecondViewController.h"

@interface FirstViewController ()
@property (strong, nonatomic) IBOutlet UITextField *textField;

@end

@implementation FirstViewController
//为按钮绑定方法跳转到界面二
- (IBAction)toSecond:(UIButton *)sender {
    //初始化界面二
    SecondViewController* secondVC=[[SecondViewController alloc]initWithNibName:
    @"SecondViewController" bundle:nil];
   
    //获得用户输入的值,赋给SecondViewController的content属性
    secondVC.content=self.textField.text;
    
    [self presentViewController:secondVC animated:YES completion:nil];
    
    
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
@end
