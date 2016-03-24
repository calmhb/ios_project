//
//  Contact.m
//  TableView-static
//
//  Created by Mac on 16/3/24.
//  Copyright © 2016年 zk. All rights reserved.
//

#import "Contact.h"

@implementation Contact
+(NSArray*) initData{
    Contact* c1=[[Contact alloc] init];
    c1.name=@"BetterMan";
    c1.phone=@"15858585858";
    c1.age=28;
    c1.photoName=@"betterMan.png";
    
    Contact* c2=[[Contact alloc]init];
    c2.name=@"goodMan";
    c2.phone=@"13838383838";
    c2.age=18;
    c2.photoName=@"betterMan.png";
    
    return @[c1,c2];
}
@end
