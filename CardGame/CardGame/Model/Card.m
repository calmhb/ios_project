//
//  Card.m
//  CardGame
//
//  Created by Mac on 16/3/16.
//  Copyright © 2016年 zk. All rights reserved.
//

#import "Card.h"

@implementation Card
//设置属性对应的成员变量名称
@synthesize  suit=_suit;
//如果点数相同得4分,花色相同得1分
-(int)match:(Card *)otherCard{
    int score=0;
    if (self.rank==otherCard.rank) {
        score=4;
    }else if(self.suit==otherCard.suit){
        score=1;
    }
    return score;
}
//返回合法的花色
+(NSArray *) validSuits{
    return @[@"♠️",@"♣️",@"♥️",@"♦️"];
}
//设置花色
-(void) setSuit:(NSString *)suit{
    //如果花色在当前的数组中
    if([[Card validSuits] containsObject:suit ]){
        _suit=suit;
    }
}
//获得花色
-(NSString *)suit
{
    //如果suit存在,返回;如果不存在返回?
    return _suit ? _suit : @"?";
}
//返回所有的点数
+ (NSArray *)randStrins
{
    return @[@"?", @"A", @"2", @"3", @"4", @"5", @"6", @"7", @"8", @"9", @"10", @"J", @"Q", @"K"];
}
//获得点数的最大值
+(NSUInteger)maxRank{
    return [[Card randStrins] count]-1;
}
//设置点数
-(void)setRank:(NSUInteger)rank{
    if (rank<=13) {
        _rank=rank;
    }
}
//返回扑克牌的内容
-(NSString *) content{
    NSString *rankString=[Card randStrins][self.rank];
    return [self.suit stringByAppendingString:rankString];
}

@end











































