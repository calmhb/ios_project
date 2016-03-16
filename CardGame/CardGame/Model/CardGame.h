//
//  CardGame.h
//  CardGame
//
//  Created by Mac on 16/3/16.
//  Copyright © 2016年 zk. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Deck.h"
#import "Card.h"
//游戏类
@interface CardGame : NSObject
//初始化扑克牌总数
-(instancetype) initWithCardCount:(NSUInteger)count usingDeck:(Deck*)deck;
//用户选中了一张牌
-(void)chooseCardAtIndex:(NSUInteger)index;
//根据下标返回指定的扑克牌
-(Card*)cardAtIndex:(NSUInteger)index;
//分数
@property (nonatomic,readonly)NSInteger score;
@end
