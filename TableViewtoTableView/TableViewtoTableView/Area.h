//
//  Area.h
//  TableViewtoTableView
//
//  Created by Mac on 16/3/22.
//  Copyright © 2016年 zk. All rights reserved.
//

#import <Foundation/Foundation.h>
//封装地区对象
@interface Area : NSObject
@property (nonatomic, strong) NSString *name;
@property (nonatomic) NSUInteger population;
@property (nonatomic, strong) NSString *imageName;
@property (nonatomic, strong) NSArray *subarea;//子节点
//类方法
+ (NSArray *)demoData;
@end
