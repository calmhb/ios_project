//
//  ViewController.h
//  UISwitchDemo
//
//  Created by Mac on 16/3/15.
//  Copyright © 2016年 zk. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
@property (strong, nonatomic) IBOutlet UITextField *stepperTxt;
- (IBAction)stepperValueChange:(UIStepper *)sender;
@property (strong, nonatomic) IBOutlet UIStepper *stepper;
@property (strong, nonatomic) IBOutlet UIStepper *myself;



@end

