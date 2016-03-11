//
//  ViewController.m
//  UITextFieldDemo
//
//  Created by Mac on 16/3/11.
//  Copyright © 2016年 zk. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)finshEdit:(UITextField *)sender {
    //sender放弃作为第一响应者
    [sender resignFirstResponder];
}

- (IBAction)backTap:(UIControl *)sender {
    //让用户名文本框放弃作为第一响应者
    [self.nameField resignFirstResponder];
    //让密码框放弃作为第一响应者
    [self.pwdField resignFirstResponder];
}


@end
