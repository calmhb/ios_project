//
//  ZKOutput.h
//  oopDemo04
//
//  Created by Mac on 16/3/7.
//  Copyright © 2016年 Mac. All rights reserved.
//

#import <Foundation/Foundation.h>

//定义协议：定义一个输出设备
@protocol ZKOutput
  //定义协议的方法
@optional
-(void) output;
@required
-(void) addData:(NSString*) msg;
@end
