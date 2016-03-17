//
//  SecondViewController.h
//  MultiVCCall02
//
//  Created by Mac on 16/3/17.
//  Copyright © 2016年 zk. All rights reserved.
//

#import <UIKit/UIKit.h>
//先导入SecondViewController,而不真正使用该文件
@class SecondViewController;

//1.定义委托协议
@protocol SecondViewDelegate <NSObject>

-(void) secondViewController:(SecondViewController*) secondVC message:(NSString*) msg;

@end


@interface SecondViewController : UIViewController
  //2.定义delegate属性
  @property (nonatomic,weak) id<SecondViewDelegate> delegate;
@end
