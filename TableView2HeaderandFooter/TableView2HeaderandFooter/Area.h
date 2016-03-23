//
//  Area.h
//  TableView2HeaderandFooter
//
//  Created by Mac on 16/3/23.
//  Copyright © 2016年 zk. All rights reserved.
//

#import <Foundation/Foundation.h>
//描述地区
@interface Area : NSObject
@property (nonatomic,strong)NSString * name;//地区名称
@property (nonatomic,assign)NSUInteger population;//人口数量
@property (nonatomic,strong)NSString * imageName;//图片名称
@property (nonatomic,strong)NSArray* subarea;//下级地区
//类方法,返回数据
+(NSArray*) demoData;
@end
