//
//  ZKCustomView.m
//  MoveBobbleDemo
//
//  Created by Mac on 16/3/10.
//  Copyright © 2016年 zk. All rights reserved.
//

#import "ZKCustomView.h"

@implementation ZKCustomView
//定义两个变量记录当前触碰点的坐标
int curX;
int curY;
-(void) touchesMoved:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
   //获取触碰事件的UITouch事件
    UITouch* touch=[touches anyObject];
    //得到触碰事件在当前组件上的触碰点
    CGPoint lastTouch=[touch locationInView:self];
    //获取触碰点的坐标
    curX=lastTouch.x;
    curY=lastTouch.y;
    //通知组件重绘
    [self setNeedsDisplay];
}

-(void) drawRect:(CGRect)rect{
    //获取绘图上下文
    CGContextRef ctx=UIGraphicsGetCurrentContext();
    //设置填充颜色
    CGContextSetFillColorWithColor(ctx, [[UIColor redColor] CGColor]);
    //以触碰点为圆心，绘制一个圆形
    CGContextFillEllipseInRect(ctx, CGRectMake(curX-10, curY-10, 40, 40));
}
@end






















