//
//  ZKCar.h
//  oopDemo04
//
//  Created by Mac on 16/3/7.
//  Copyright © 2016年 Mac. All rights reserved.
//

#import <Foundation/Foundation.h>
//定义类的接口部分
@interface ZKCar : NSObject
@property (nonatomic,copy) NSString* brand;
@property (nonatomic,copy) NSString* model;
-(void) drive;
@end
