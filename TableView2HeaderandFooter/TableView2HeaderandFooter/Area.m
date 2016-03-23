//
//  Area.m
//  TableView2HeaderandFooter
//
//  Created by Mac on 16/3/23.
//  Copyright © 2016年 zk. All rights reserved.
//

#import "Area.h"
//重写方法,准备数据
@implementation Area
+(NSArray*) demoData{
    Area *a1 = [[Area alloc]init];
    a1.name = @"北京";a1.population = 2000;a1.imageName = @"Apple Tree.ico";
    a1.subarea = @[@"玄武区",@"朝阳区",@"海淀区"];
    
    Area *a2 = [[Area alloc]init];
    a2.name = @"上海"; a2.population = 1600;a2.imageName = @"Bliss.ico";
    a2.subarea = @[@"浦东区",@"洋浦区",@"徐汇区",@"闸北区"];
    
    Area *a3 = [[Area alloc]init];
    a3.name = @"广州"; a3.population = 1500;a3.imageName = @"Campfire.ico";
    a3.subarea = @[@"天河区", @"海珠区", @"棠下区"];
    
    Area *a4 = [[Area alloc]init];
    a4.name = @"湖南";a4.population = 1000;a4.imageName = @"City Night.ico";
    a4.subarea = @[@"长沙", @"湘潭",@"浏阳"];
    
    return @[a4, a2, a3, a1];
  
}
@end
