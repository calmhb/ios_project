//
//  SecondViewController.m
//  MultiVCCall02
//
//  Created by Mac on 16/3/17.
//  Copyright © 2016年 zk. All rights reserved.
//

#import "SecondViewController.h"

@interface SecondViewController ()
 @property (strong, nonatomic) IBOutlet UITextField *textField;

@end

@implementation SecondViewController

- (IBAction)toFirstVC:(UIButton *)sender {
    
    //3.给delegate发消息,传参数
    [self.delegate secondViewController:self message:self.textField.text];
    [self dismissViewControllerAnimated:YES completion:nil];
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
