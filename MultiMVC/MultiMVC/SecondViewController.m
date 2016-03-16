//
//  SecondViewController.m
//  MultiMVC
//
//  Created by Mac on 16/3/16.
//  Copyright © 2016年 zk. All rights reserved.
//

#import "SecondViewController.h"

@interface SecondViewController ()
- (IBAction)toFirst:(UIButton *)sender;

@end

@implementation SecondViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (IBAction)toFirst:(UIButton *)sender {
    [self dismissViewControllerAnimated:YES completion:nil];
}
@end
