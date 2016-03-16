//
//  Card.h
//  CardGame
//
//  Created by Mac on 16/3/16.
//  Copyright © 2016年 zk. All rights reserved.
//

#import <Foundation/Foundation.h>
//扑克牌的类
@interface Card : NSObject
@property (nonatomic,getter=isChosen) BOOL chosen;//是否翻转
@property (nonatomic,getter=isMatched) BOOL matched;//是否被匹配
@property (nonatomic,strong) NSString* suit;//花色 ♠️♣️♥️♦️
@property (nonatomic)NSUInteger rank;//点数
//和另一个扑克牌匹配,返回得分
-(int) match:(Card*) otherCard;
//返回合法的花色
+(NSArray*) validSuits;
//返回点数的最大值
+(NSUInteger)maxRank;
@end
