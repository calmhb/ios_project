//
//  ViewController.h
//  CodeUI
//
//  Created by Mac on 16/3/10.
//  Copyright © 2016年 zk. All rights reserved.
//

#import <UIKit/UIKit.h>
//定义ViewController的扩展
@interface ViewController : UIViewController
//定义一个属性来记录所有动态添加的UILabel控件
@property (nonatomic,strong) NSMutableArray* labels;
@end

