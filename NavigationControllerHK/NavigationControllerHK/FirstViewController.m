//
//  FirstViewController.m
//  NavigationControllerHK
//
//  Created by Mac on 16/3/18.
//  Copyright © 2016年 zk. All rights reserved.
//

#import "FirstViewController.h"

@interface FirstViewController ()
//建立页Label的关联
@property (strong, nonatomic) IBOutlet UILabel *textLabel;
//建立看不清按钮的关联
@property (strong, nonatomic) IBOutlet UIButton *btn2;

@end

@implementation FirstViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    //设定Label的字体
    self.textLabel.font=[UIFont systemFontOfSize:self.size];
    self.title=[NSString stringWithFormat:@"%d",self.size];
}
//用户单击看不清按钮,提交数据,计算结果
- (IBAction)submit:(id)sender {
    float value=(1.7-self.size*1.5/100);
    UIAlertView *alert=[[UIAlertView alloc ]initWithTitle:@"测试结果" message:
    [NSString stringWithFormat:@"您的视力是:%.1f",value ] delegate:nil cancelButtonTitle:@"OK" otherButtonTitles:nil];
    [alert show];
}
//用户单击看得清按钮,获得下一个测试界面
- (IBAction)next:(id)sender {
    if (self.size==0) {
        self.btn2.enabled=NO;//将看不清设置为不可操作
        return;
    }
    FirstViewController* vc=[[FirstViewController alloc]initWithNibName:
    @"FirstViewController" bundle:nil];
    
    vc.size=self.size-5;
    [self.navigationController pushViewController:vc animated:YES];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}
@end



























