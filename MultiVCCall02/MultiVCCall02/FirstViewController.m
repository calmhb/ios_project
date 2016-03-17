//
//  FirstViewController.m
//  MultiVCCall02
//
//  Created by Mac on 16/3/17.
//  Copyright © 2016年 zk. All rights reserved.
//

#import "FirstViewController.h"
#import "SecondViewController.h"

//1.遵守协议
@interface FirstViewController ()<SecondViewDelegate>
@property (strong, nonatomic) IBOutlet UILabel *txtLabel;
@end

@implementation FirstViewController
- (IBAction)toSecondVC:(UIButton *)sender {
    SecondViewController *secondVC=[[SecondViewController alloc] initWithNibName:
    @"SecondViewController" bundle:nil];
    //将自己设置成为委托方的delegate
    secondVC.delegate=self;
    
    [self presentViewController:secondVC animated:YES completion:nil];
}

//实现协议中的方法
-(void) secondViewController:(SecondViewController *)secondVC message:(NSString *)msg
{
    self.txtLabel.text=msg;
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
