//
//  SecondViewController.m
//  MultiViewCall01
//
//  Created by Mac on 16/3/17.
//  Copyright © 2016年 zk. All rights reserved.
//

#import "SecondViewController.h"


@interface SecondViewController ()
@property (strong, nonatomic) IBOutlet UILabel *secondLabel;

@property (strong, nonatomic) IBOutlet UITextField *textField;
@end

@implementation SecondViewController
- (IBAction)toFirstVC:(UIButton *)sender {
    self.first.msg=self.textField.text;
    [self dismissViewControllerAnimated:YES completion:nil];
}
//覆盖父类的方法,在界面显示之前会调用该方法
-(void) viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
    self.secondLabel.text=self.content;
    
}
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
