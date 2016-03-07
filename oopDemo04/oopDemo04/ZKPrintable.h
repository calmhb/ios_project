//
//  ZKPrintable.h
//  oopDemo04
//
//  Created by Mac on 16/3/7.
//  Copyright © 2016年 Mac. All rights reserved.
//

#import "ZKOutput.h"
#import "ZKProductable.h"

//定义一个打印机的协议，是一个输出设备也是一个产品
@protocol ZKPrintable<ZKOutput,ZKProductable>
 //定义协议的方法
-(NSString*) printColor;
@end

