//
//  Area.m
//  TableViewShowData01
//
//  Created by Mac on 16/3/22.
//  Copyright © 2016年 zk. All rights reserved.
//

#import "Area.h"

@implementation Area
+(NSArray *) demoData{
    Area *a1=[[Area alloc] init];
    a1.name=@"湖南"; a1.population=700; a1.imageName=@"Apple Tree.ico";
    
    Area *a2 = [[Area alloc]init];
    a2.name = @"上海";a2.population = 1000; a2.imageName = @"Bliss.ico";
    
    Area *a3 = [[Area alloc]init];
    a3.name = @"广州";a3.population = 2000;a3.imageName = @"Campfire.ico";
    
    Area *a4 = [[Area alloc]init];
    a4.name = @"深圳";a4.population = 1000;a4.imageName = @"City Night.ico";
    return @[a1, a2, a3, a4];
}
@end
