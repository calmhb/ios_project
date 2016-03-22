//
//  Area.h
//  TableViewShowData01
//
//  Created by Mac on 16/3/22.
//  Copyright © 2016年 zk. All rights reserved.
//

#import <Foundation/Foundation.h>
//定义一个类描述地区
@interface Area : NSObject
//描述地区名称
@property (nonatomic,strong) NSString *name;
//描述人口数量
@property (nonatomic,assign) NSUInteger population;
//对应的图片名称
@property (nonatomic,strong) NSString *imageName;
//类方法,返回数据
+(NSArray *) demoData;
@end
