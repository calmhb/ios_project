//
//  Contact.h
//  TableViewEditDemo01
//
//  Created by Mac on 16/3/23.
//  Copyright © 2016年 zk. All rights reserved.
//

#import <Foundation/Foundation.h>
//封装联系人对象
@interface Contact : NSObject
@property (nonatomic, strong) NSString *name;//姓名
@property (nonatomic, strong) NSString *phoneNumber;//电话号码
@property (nonatomic,assign) NSUInteger age;//年龄
//初始化数据
+ (NSArray *)initData;
@end
