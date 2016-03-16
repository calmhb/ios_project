//
//  Deck.m
//  CardGame
//
//  Created by Mac on 16/3/16.
//  Copyright © 2016年 zk. All rights reserved.
//

#import "Deck.h"
#import "Card.h"
//对接口进行扩展
@interface Deck()
//获得所有的扑克
@property (nonatomic,strong)NSMutableArray *cards;
@end

//牌桌类
@implementation Deck
//返回一个数组
-(NSMutableArray *) cards{
    if (!_cards)
        _cards=[[NSMutableArray alloc] init];
        return _cards;
    
}
//重写对象的初始化方法,在初始化一个牌桌时创建一副扑克牌
//从iOS7(Xcode5)开始，类的初始化方法和工厂方法的返回值使用instancetype而不是id
-(instancetype)init{
    self=[super init];//调用父类的init方法
    if (self) {
        for (NSString *suit in [Card validSuits]) {
            for (NSUInteger rank=1;rank<=[Card maxRank];rank++) {
                Card* card=[[Card alloc]init];
                card.suit=suit;
                card.rank=rank;
                [self.cards addObject:card];
            }
        }
    }
    return self;
}
//获得一个随机扑克
-(Card*) randomCard{
     //获得一个随机数
    unsigned int index=arc4random()%self.cards.count;
    Card* card=self.cards[index];
    //将对应的扑克牌从数组中移除
    [self.cards removeObjectAtIndex:index];
    return card;
}
@end





























