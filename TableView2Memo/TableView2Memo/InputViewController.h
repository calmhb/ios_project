//
//  InputViewController.h
//  TableView2Memo
//
//  Created by Mac on 16/3/23.
//  Copyright © 2016年 zk. All rights reserved.
//

#import <UIKit/UIKit.h>

@class InputViewController;
//定义协议,从界面中收集数据返回到表格
@protocol InputViewDelegate <NSObject>
-(void) inputViewController:(InputViewController*)inputVC message:(NSString*) msg;
@end

@interface InputViewController : UIViewController
@property (nonatomic,weak)id<InputViewDelegate>delegate;
@end
