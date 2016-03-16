//
//  CardGame.m
//  CardGame
//
//  Created by Mac on 16/3/16.
//  Copyright © 2016年 zk. All rights reserved.
//

#import "CardGame.h"
#import "Deck.h"
#import "Card.h"
//对接口进行扩展
@interface CardGame()
//描述游戏中的扑克
@property (nonatomic,strong) NSMutableArray *cards;
//在接口的扩展部分,重新定义分数.
//OC可以在公开的头文件中声明一个只读属性，但在.m中的Extension中，再次声明此属性私有为可读可写
@property (nonatomic,readwrite)NSInteger score;
@end

@implementation CardGame
-(NSMutableArray*)cards{
    if (!_cards) {
        _cards=[[NSMutableArray alloc]init];
    }
    return _cards;
}

//在牌桌上初始化指定数量的扑克牌
-(instancetype)initWithCardCount:(NSUInteger)count usingDeck:(Deck *)deck{
    self=[super init];
    if (self) {
        for (int i=0; i<count; i++) {
            //随机获得一张扑克牌
            Card *card=[deck randomCard];
            [self.cards addObject:card];
        }
    }
    return self;
}

//用户选中了一张扑克牌
-(void)chooseCardAtIndex:(NSUInteger)index{
    //匹配
    Card* card=[self cardAtIndex:index];
    if (![card isMatched]) {//没有匹配
        if ([card isChosen]) {//被翻转
            card.chosen=NO;//在翻回去
        }else{
           //没有配置,也没有在正面
            for (Card *otherCard in self.cards) {
                if ([otherCard isChosen]&&![otherCard isMatched]) {
                    int score=[card match:otherCard];
                    if (score) {//匹配成功
                        self.score+=score;
                        card.matched=YES;
                        otherCard.matched=YES;
                    }else{
                        //匹配失败
                        otherCard.chosen=NO;
                    }
                }
            }
            //把牌翻过来
            card.chosen=YES;
        }
        
    }
    
}
//根据下标返回指定的扑克牌
-(Card*) cardAtIndex:(NSUInteger)index{
    return index<self.cards.count?self.cards[index]:nil;
}

@end


























