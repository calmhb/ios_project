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
/*类扩展*/
#import "ZKCar+drive.h"
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        ZKCar* car=[[ZKCar alloc] init];
        //为对象赋值
        car.brand=@"BMW";
        car.model=@"X8";
        car.color=@"白色";
        [car drßive];
        [car drive:@"zs"];
    }
    return 0;
}