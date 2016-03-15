//
//  ViewController.m
//  LginDemo
//
//  Created by Mac on 16/3/15.
//  Copyright © 2016年 zk. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()<UIAlertViewDelegate>
@property (strong, nonatomic) IBOutlet UITextField *nameFeild;
@property (strong, nonatomic) IBOutlet UITextField *pwdFeild;

- (IBAction)finshEdit:(UITextField *)sender;
- (IBAction)bgResign:(UIControl *)sender;
- (IBAction)submit:(UIButton *)sender;

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
//文本框输入完成关闭键盘
- (IBAction)finshEdit:(UITextField *)sender {
    //放弃作为第一响应者
    [sender resignFirstResponder];
    //密码框作为第一响应者
    [self.pwdFeild becomeFirstResponder];
}
//提供放弃第一个响应者的方法
-(void) resign{
    //文本框放弃作为第一响应者
    [self.nameFeild resignFirstResponder];
    //密码框放弃作为第一响应者
    [self.pwdFeild resignFirstResponder];
}
//触碰键盘关闭键盘
- (IBAction)bgResign:(UIControl *)sender {
    [self resign];
}

- (IBAction)submit:(UIButton *)sender {
    [self resign];
    //获得文本框信息和密码框密码
    NSString* name=self.nameFeild.text;
    NSString* pwd=self.pwdFeild.text;
    if ([name isEqualToString:@"haoren"]&&[pwd isEqualToString:@"250"]) {
        UIAlertView* alert=[[UIAlertView alloc] initWithTitle:@"登录成功" message:@"欢迎进入系统" delegate:self cancelButtonTitle:@"取消" otherButtonTitles:@"确定",nil];
        [alert show];
    }else{
        UIAlertView* alert=[[UIAlertView alloc] initWithTitle:@"登录失败" message:@"用户名或者密码错误!" delegate:self cancelButtonTitle:@"确定" otherButtonTitles:nil];
        [alert show];
        
    }
 
    
}
//弹出对话框
-(void) alertView:(UIAlertView *)alertView clickedButtonAtIndex:(NSInteger)buttonIndex{
    NSLog(@"buttonIndex=%d",buttonIndex);
    if (buttonIndex==0) {
        NSLog(@"用户取消了登录!");
    }else if(buttonIndex==1){
        NSLog(@"用户登录成功!");
    }
}
@end
