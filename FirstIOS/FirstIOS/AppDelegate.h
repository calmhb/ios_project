//
//  AppDelegate.h
//  FirstIOS
//
//  Created by Mac on 16/3/7.
//  Copyright © 2016年 Mac. All rights reserved.
//

#import <UIKit/UIKit.h>

@class ViewController;//Xcode 7.2新版本需要手动添加
@interface AppDelegate : UIResponder <UIApplicationDelegate>
@property (strong, nonatomic) UIWindow *window;
@property (strong,nonatomic) ViewController *viewController;
@end

