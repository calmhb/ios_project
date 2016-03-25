//
//  Area.h
//  UITablView-showAreas
//
//  Created by Mac on 16/3/25.
//  Copyright © 2016年 zk. All rights reserved.
//

#import <Foundation/Foundation.h>
//描述地区,地区下面有小地区
@interface Area : NSObject
@property (nonatomic,strong) NSString *name;
@property (nonatomic,strong) NSArray *subareas;//子地区
-(Area *) initData;//初始化数据
@end
