//
//  ZKPrint.m
//  oopDemo04
//
//  Created by Mac on 16/3/7.
//  Copyright © 2016年 Mac. All rights reserved.
//

#import "ZKPrint.h"
#define MAX_CACHE_LINE 5

//为ZKPrint提供实现部分
@implementation ZKPrint
{
     //使用数组记录所有需要缓存的打印数据
    NSString* printData[MAX_CACHE_LINE];
    int dataNum;//记录当前需要打印的作业数
}
-(void)output{
    //只要还有作业，继续打印
    while (dataNum>0) {
        NSLog(@"打印机使用%@打印:%@",self.printColor,printData[0]);
        //将剩下的作业书减1
        dataNum--;
        //把作业队列整体前移一位
        for (int i=0; i<dataNum; i++) {
            printData[i]=printData[i+1];
        }
    }
}

-(void) addData:(NSString *)msg{
    if (dataNum>=MAX_CACHE_LINE) {
        NSLog(@"队列已满，添加失败");
    }else{
     //把答应数据添加到队列中
        printData[dataNum++]=msg;
    }
}

-(NSDate*) getProdcueTime{
    return [[NSDate alloc] init];
}

-(NSString*) printColor{
  return @"黄色";
}
@end
