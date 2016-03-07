//
//  ZKCar.m
//  oopDemo04
//
//  Created by Mac on 16/3/7.
//  Copyright © 2016年 Mac. All rights reserved.
//

#import "ZKCar+drive.h"

@implementation ZKCar
@synthesize brand;
@synthesize model;
@synthesize color;
-(void) drive{
    NSLog(@"%@汽车",self);
}

-(void) drive:(NSString*) owner{
    NSLog(@"%@开着%@汽车",owner,self);
}

-(NSString*) description{
    return [NSString stringWithFormat:@"<ZKCard[brand=%@,model=%@,color=%@]>",self.brand,self.model,self.color];
}
@end
