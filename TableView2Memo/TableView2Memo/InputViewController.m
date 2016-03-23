//
//  InputViewController.m
//  TableView2Memo
//
//  Created by Mac on 16/3/23.
//  Copyright © 2016年 zk. All rights reserved.
//

#import "InputViewController.h"

@interface InputViewController ()
@property (strong, nonatomic) IBOutlet UITextField *txtField;

@end

@implementation InputViewController
 //为按钮单击事件绑定submit方法
- (IBAction)submit:(id)sender {
    //初始化delegate
    [self.delegate inputViewController:self message:self.txtField.text];
    //导航栏弹出当前界面
    [self.navigationController popViewControllerAnimated:YES];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
