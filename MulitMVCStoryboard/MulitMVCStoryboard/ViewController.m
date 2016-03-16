//
//  ViewController.m
//  MulitMVCStoryboard
//
//  Created by Mac on 16/3/16.
//  Copyright © 2016年 zk. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
- (IBAction)toSecond:(UIButton *)sender;

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

- (IBAction)toSecond:(UIButton *)sender {
    //scond是自定的一个Identifier 名称
    [self performSegueWithIdentifier:@"second" sender:self];
}
@end
