//
//  SecondViewController.h
//  MultiViewCall01
//
//  Created by Mac on 16/3/17.
//  Copyright © 2016年 zk. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "FirstViewController.h"

@interface SecondViewController : UIViewController
@property (nonatomic,strong) NSString* content;
@property (weak,nonatomic) FirstViewController *first;
@end