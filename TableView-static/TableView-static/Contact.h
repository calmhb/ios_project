//
//  Contact.h
//  TableView-static
//
//  Created by Mac on 16/3/24.
//  Copyright © 2016年 zk. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Contact : NSObject
@property (strong,nonatomic) NSString *name;
@property (strong,nonatomic) NSString *phone;
@property (assign,nonatomic) NSUInteger  age;
@property (strong,nonatomic) NSString *photoName;

+(NSArray *) initData;
@end
