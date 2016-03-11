//
//  ViewController.h
//  UITextFieldDemo
//
//  Created by Mac on 16/3/11.
//  Copyright © 2016年 zk. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
- (IBAction)finshEdit:(UITextField *)sender;
- (IBAction)backTap:(UIControl *)sender;

@property (strong, nonatomic) IBOutlet UITextField *nameField;
@property (strong, nonatomic) IBOutlet UITextField *pwdField;

@end

