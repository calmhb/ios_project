//
//  FirstViewController.m
//  UITabBarControllerDemo
//
//  Created by Mac on 16/3/25.
//  Copyright © 2016年 zk. All rights reserved.
//

#import "FirstViewController.h"

@interface FirstViewController ()
@end

@implementation FirstViewController
- (void)viewDidLoad {
    [super viewDidLoad];
    //只会执行一次
    NSLog(@"第一个界面....");
}
-(id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil{
     self =[super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        self.title=@"FirstVC";
        self.tabBarItem.image=[UIImage imageNamed:@"tabbar_item_more.png"];
    }
    
    return self;
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}
@end
