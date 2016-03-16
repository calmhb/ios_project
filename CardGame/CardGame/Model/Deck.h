//
//  Deck.h
//  CardGame
//
//  Created by Mac on 16/3/16.
//  Copyright © 2016年 zk. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Card.h"
@interface Deck : NSObject
 -(Card*) randomCard;//获得一张随机的扑克牌
@end
