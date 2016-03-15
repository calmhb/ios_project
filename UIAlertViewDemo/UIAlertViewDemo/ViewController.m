//
//  ViewController.m
//  UIAlertViewDemo
//
//  Created by Mac on 16/3/15.
//  Copyright © 2016年 zk. All rights reserved.
//

#import "ViewController.h"
//扩展UIAlertViewDelegate协议
//扩张UIActionSheetDelegate协议
@interface ViewController ()<UIAlertViewDelegate,UIActionSheetDelegate>
- (IBAction)clicked:(UIButton *)sender;
- (IBAction)deletedMsg:(UIButton *)sender;

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
//IB中提供button之后,绑定Action方法
- (IBAction)clicked:(UIButton *)sender {
    //创建UIAlertView对象,UIAlertView对象在iOS9.0不推荐使用
    UIAlertView* alert=[[UIAlertView alloc]
                         initWithTitle:@"提示"//指定标题
                         message:@"警告框用法简单" //指定消息
                         delegate:self//指定委托对象,该必须必须遵守UIAlertViewDelegate协议
                        cancelButtonTitle:@"确定" //底部取消按钮设置标题
                         otherButtonTitles:@"按钮一",@"按钮二",@"按钮三",//另外3个按钮
                        nil];
    [alert show];
}
//IB提供button之后,绑定Action方法
- (IBAction)deletedMsg:(UIButton *)sender {
    UIActionSheet *sheet=[[UIActionSheet alloc]initWithTitle:@"确定删除?"
                          delegate:self
                          cancelButtonTitle:@"取消"
                          destructiveButtonTitle:@"确定"
                          otherButtonTitles:@"按钮1",@"按钮2",nil];
    //设置样式
    sheet.actionSheetStyle=UIActionSheetStyleAutomatic;
    [sheet showInView:self.view];
    
}
//实现UIActionSheetDeleagate协议之后重写该方法
-(void) actionSheet:(UIActionSheet *)actionSheet clickedButtonAtIndex:(NSInteger)buttonIndex{
    NSString* msg=[NSString stringWithFormat:@"单击了第%d个按钮",buttonIndex];
    //使用UIAlertView来显示用户单击了第几个按钮
    UIAlertView* alert=[[UIAlertView alloc] initWithTitle:@"提示" message:msg delegate:nil cancelButtonTitle:@"确定" otherButtonTitles:nil];
    [alert show];
}


//遵守UIAlertViewDelegate协议之后重写该方法
-(void) alertView:(UIAlertView *)alertView clickedButtonAtIndex:(NSInteger)buttonIndex{
    NSString* msg=[NSString stringWithFormat:@"点击了第%d个按钮",buttonIndex];
    //创建UIAlertView控件
    UIAlertView* alert=[[UIAlertView alloc] initWithTitle:@"提示" message:msg delegate:nil cancelButtonTitle:@"确定" otherButtonTitles:nil, nil];
    [alert show];
}
@end























