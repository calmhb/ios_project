//
//  ViewController.m
//  ButtonUI
//
//  Created by Mac on 16/3/11.
//  Copyright © 2016年 zk. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (IBAction)disableClicked:(UIButton *)sender {
    //将btn1,btn2两个按钮设置为禁用
    /*下列语句实现如果按钮启动设为禁用，如果是禁用设置为启用*/
    self.btn1.enabled=!(self.btn1.enabled);
    self.btn2.enabled=!(self.btn2.enabled);
    //切换当前事件源上的文本标题
    if([[sender titleForState:UIControlStateNormal] isEqualToString:@"禁用"]){
        [sender setTitle:@"启用" forState:UIControlStateNormal];
    }else{
        [sender setTitle:@"禁用" forState:UIControlStateNormal];
    }
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
