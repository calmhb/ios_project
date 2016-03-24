//
//  News.m
//  TableVIew-selfCell
//
//  Created by Mac on 16/3/24.
//  Copyright © 2016年 zk. All rights reserved.
//

#import "News.h"

@implementation News
//准备数据
+(NSArray*) initData{
    News *n1=[[News alloc] init];
    n1.title=@"JavaScript最受欢迎";
    n1.content=@"JavaScript语言在多年持续保持高热之后,在今年又是一个强劲的势头.";
    n1.count=243231;
    n1.imageName=@"javascript-256px.png";
    
    News *n2=[[News alloc] init];
    n2.title=@"Ajax能否引领Web3.0";
    n2.content=@"Ajax作为提高用户体验的关键技术是否在后期能够继续发扬.";
    n2.count=14321;
    n2.imageName=@"ajax-256px.png";
    
    News *n3=[[News alloc] init];
    n3.title=@"CSS3改变Web页面";
    n3.content=@"CSS3的新特性,然后前段攻城狮无比的激动.";
    n3.count=80323;
    n3.imageName=@"css3-256px.png";
    
    News *n4=[[News alloc] init];
    n4.title=@"html5改变页面的环境";
    n4.content=@"HTML5的优势为单页面技术提供了希望和挑战.移动端也受益匪浅";
    n4.count=433231;
    n4.imageName=@"html5-256px.png";
    
    News *n5=[[News alloc] init];
    n5.title=@"Mysql会收费吗";
    n5.content=@"Mysql被Oracle收购之后,会不会开启收费模式?如果收费贵么?";
    n5.count=53223;
    n5.imageName=@"mysql-256px.png";
    return @[n1,n2,n3,n4,n5];

}
@end
