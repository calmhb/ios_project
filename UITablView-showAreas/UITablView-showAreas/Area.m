//
//  Area.m
//  UITablView-showAreas
//
//  Created by Mac on 16/3/25.
//  Copyright © 2016年 zk. All rights reserved.
//

#import "Area.h"

@implementation Area
-(Area*) initData{
    //顶层地区
    Area *top=[[Area alloc] init];
    top.name=@"中国";
    
    Area *a1=[[Area alloc] init];
    a1.name=@"北京";
    Area *a11=[[Area alloc] init];
    a11.name=@"海淀区";
    Area *a12=[[Area alloc] init];
    a12.name=@"朝阳区";
    
    //设定a1的子地区
    a1.subareas=@[a11,a12];
    
    Area *a2=[[Area alloc] init];
    a2.name=@"湖南";
    Area *a21=[[Area alloc] init];
    a21.name=@"长沙";
    Area *a22=[[Area alloc] init];
    a22.name=@"浏阳";
    Area *a23=[[Area alloc] init];
    a23.name=@"湘潭";
    
    Area *a211=[[Area alloc] init];
    a211.name=@"天心区";
    Area *a212=[[Area alloc] init];
    a212.name=@"雨花区";
    Area *a213=[[Area alloc] init];
    a213.name=@"岳麓区";
    Area *a214=[[Area alloc] init];
    a214.name=@"芙蓉区";
    
    a21.subareas=@[a211,a212,a213,a214];
    
    a2.subareas=@[a21,a22,a23];
    
    
    Area *a3=[[Area alloc] init];
    a3.name=@"湖北";
    Area *a31=[[Area alloc] init];
    a31.name=@"汉口";
    Area *a32=[[Area alloc] init];
    a32.name=@"黄冈";
    
    a3.subareas=@[a31,a32];
    
    top.subareas=@[a1,a2,a3];
    
    

    
    return top;
}
@end
