//
//  main.m
//  oopDemo04
//
//  Created by Mac on 16/3/7.
//  Copyright © 2016年 Mac. All rights reserved.
//

#import <Foundation/Foundation.h>
/*
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSLog(@"Hello, World!");
    }
    return 0;
}
*/
/*类扩展
#import "ZKCar+drive.h"
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        ZKCar* car=[[ZKCar alloc] init];
        //为对象赋值
        car.brand=@"BMW";
        car.model=@"X8";
        car.color=@"白色";
        [car drive];
        [car drive:@"zs"];
    }
    return 0;
}
*/
/*定义协议*/
#import "ZKPrint.h"
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        ZKPrint* printer=[[ZKPrint alloc]init];
        //调用方法
        [printer addData:@"Objective-C"];
        [printer addData:@"swift"];
        [printer output];
        [printer addData:@"android"];
        [printer addData:@"java"];
        [printer addData:@"C++"];
        [printer output];
        //创建一个ZKPrint对象，当成ZKProductable使用
        NSObject<ZKProductable>* p=[[ZKPrint alloc] init];
        //调用ZKProductable协议定义的方法
        NSLog(@"%@",p.getProdcueTime);
        //创建ZKPrint对象，当成ZKOutput使用
        id<ZKOutput> out=[[ZKPrint alloc] init];
        //调用ZKOutput协议中定义的方法
        [out addData:@"zs"];
        [out output];
    }
    return 0;
}

