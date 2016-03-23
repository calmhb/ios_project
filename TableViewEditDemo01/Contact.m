//
//  Contact.m
//  TableViewEditDemo01
//
//  Created by Mac on 16/3/23.
//  Copyright © 2016年 zk. All rights reserved.
//

#import "Contact.h"

@implementation Contact
+(NSArray*)initData{
    Contact* c1=[[Contact alloc] init];
    c1.name=@"haoren";c1.phoneNumber=@"13585858588";c1.age=30;
    
    Contact *c2 = [[Contact alloc]init];
    c2.name = @"betterMan";c2.phoneNumber = @"18610001003";c2.age = 26;
    
    Contact *c3 = [[Contact alloc]init];
    c3.name = @"goodMan";c3.phoneNumber = @"18610001001";c3.age = 32;
    
    return @[c1,c2,c3];
}
@end
