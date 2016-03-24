//
//  News.h
//  TableVIew-selfCell
//
//  Created by Mac on 16/3/24.
//  Copyright © 2016年 zk. All rights reserved.
//

#import <Foundation/Foundation.h>
//实体类:新闻
@interface News : NSObject
@property (nonatomic,strong) NSString *title;
@property (nonatomic,strong) NSString *content;
@property (nonatomic,assign) NSUInteger count;
@property (nonatomic,strong) NSString *imageName;
//初始化数据
+(NSArray*) initData;
@end
