//
//  WelcomeViewController.m
//  UIPageControlDemo
//
//  Created by Mac on 16/3/21.
//  Copyright © 2016年 zk. All rights reserved.
//

#import "WelcomeViewController.h"

//实现UIScrollViewDelegate协议
@interface WelcomeViewController ()<UIScrollViewDelegate>
@property (nonatomic,strong) UIPageControl *pageControl;
@property (nonatomic,strong) NSArray *imageNames;

@end

@implementation WelcomeViewController
-(NSArray *)imageNames{
    if (!_imageNames) {
        _imageNames=@[@"Welcome1.jpg", @"Welcome2.jpg", @"Welcome3.jpg", @"Welcome4.jpg", @"Welcome5.jpg"];
    }
    return _imageNames;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    //创建ScrollView,同时设置大小,大小为view的大小
    UIScrollView *scrollView=[[UIScrollView alloc] initWithFrame:self.view.frame];
    //加入多个子视图(ImageView)
    for(int i=0;i<self.imageNames.count;i++){
        //获得图片对象
        UIImage *image=[UIImage imageNamed:self.imageNames[i]];
        //获得图片控件
        UIImageView *imageView=[[UIImageView alloc]initWithImage:image];
        //设定大小
        CGRect frame=CGRectZero;
        //起始点坐标
        frame.origin.x=i*scrollView.frame.size.width;
        frame.size=scrollView.frame.size;
        imageView.frame=frame;
        //添加子组件
        [scrollView addSubview:imageView];
    }
    //设置相关属性
    //设置滚动控件的大小
    CGSize size=CGSizeMake(scrollView.frame.size.width*self.imageNames.count, scrollView.frame.size.height);
    //设置滚动视图的大小
    scrollView.contentSize=size;
    //不现实垂直滚动条
    scrollView.showsVerticalScrollIndicator=NO;
    //整页滚动
    scrollView.pagingEnabled=YES;
    //加入到当前视图self.view
    [self.view addSubview:scrollView];
    
    //加入页面指示控件PangeControl
    UIPageControl *pageControl=[[UIPageControl alloc]init];
    self.pageControl=pageControl;
    //设定小红点的位置[UIScreen mainScreen].bounds.size.height 获得屏幕的高度
    pageControl.frame=CGRectMake(0,[UIScreen mainScreen].bounds.size.height-40,self.view.frame.size.width,20);
    //设定总页面数
    pageControl.numberOfPages=self.imageNames.count;
    //小圆点的颜色
    pageControl.pageIndicatorTintColor=[UIColor blackColor];
    //当前小圆点颜色
    pageControl.currentPageIndicatorTintColor=[UIColor redColor];
    //用户交互不被允许
    pageControl.userInteractionEnabled=NO;

    [self.view addSubview:pageControl];
    //设定滚动控件的代理就是自己
    scrollView.delegate=self;
  
    //为最后一个图片加个按钮,单击按钮进入到程序
    UIButton *button=[UIButton buttonWithType:UIButtonTypeSystem];
    CGRect frame=self.view.frame;//大小为视图的大小
    frame.origin.x=scrollView.frame.size.width*(self.imageNames.count-1);
    button.frame=frame;
    [scrollView addSubview:button];
    //绑定一个事件
    [button addTarget:self action:@selector(enter) forControlEvents:UIControlEventTouchUpInside];
    
}
//拖动完成之后
-(void) scrollViewDidScroll:(UIScrollView *)scrollView{
    CGPoint offset=scrollView.contentOffset;
    if (offset.x<=0) {
        offset.x=0;
        scrollView.contentOffset=offset;
    }
    //根据图片的x轴坐标实现
    NSUInteger index=round(offset.x/scrollView.frame.size.width);
    //设定当前页
    self.pageControl.currentPage=index;
}

-(void)enter{
    NSLog(@"进入音乐应用!");
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}
@end

























