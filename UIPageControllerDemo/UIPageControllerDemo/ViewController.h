//
//  ViewController.h
//  UIPageControllerDemo
//
//  Created by Mac on 16/3/21.
//  Copyright © 2016年 zk. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
//设定当前的页面
@property (assign, nonatomic) NSUInteger pageIndex;
//通过页面实例化页面
- (id)initWithPageNumber:(NSInteger)pageNumber;

@end

