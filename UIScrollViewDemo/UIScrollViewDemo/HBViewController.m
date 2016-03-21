//
//  HBViewController.m
//  UIScrollViewDemo
//
//  Created by Mac on 16/3/21.
//  Copyright © 2016年 zk. All rights reserved.
//

#import "HBViewController.h"

@interface HBViewController ()<UIScrollViewDelegate>
@property (nonatomic,strong) UIImageView *imageView;
@property (nonatomic,strong)UIScrollView *scrollView;
@end

@implementation HBViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    UIScrollView *scrollView=[[UIScrollView alloc] init];
    self.scrollView=scrollView;
    UIImageView *imageView=[[UIImageView alloc]initWithImage:[UIImage imageNamed:@"Sky.png"]];
    self.imageView=imageView;
    NSLog(@"imageView.frame:%.0f,%.0f,%.0f,%.0f",imageView.frame.origin.x,imageView.frame.origin.y,imageView.frame.size.width,imageView.frame.size.height);
    
    //将图片添加到滚动面板中
    [scrollView addSubview:imageView];
    //设置可滚动
    scrollView.frame=self.view.frame;
    scrollView.contentSize=imageView.frame.size;
    //设置可缩放
    float horizontalScale=scrollView.frame.size.width/imageView.frame.size.width;
    float verticalScale=scrollView.frame.size.height/imageView.frame.size.height;
    //设置最小的缩放比例
    scrollView.minimumZoomScale=MIN(horizontalScale,verticalScale);
    //设置最大的缩放比例
    scrollView.maximumZoomScale=1.0;
    //问委托,是哪个子视图要缩放
    scrollView.delegate=self;
    
    //其他属性
    //设置滚动面板周围的间距
    scrollView.contentInset=UIEdgeInsetsMake(20, 20, 20, 20);
    //将滚动面板添加到当前视图
    [self.view addSubview:scrollView];
    
    //设置导航栏
    self.title=@"scrollView";
    self.navigationItem.rightBarButtonItem=[[UIBarButtonItem alloc]initWithTitle:
    @"Move" style:UIBarButtonItemStyleDone target:self action:@selector(move)];
    //设置滚动面板没有弹性
    scrollView.bounces=NO;
    //设定起点(指示器)的样式
    scrollView.indicatorStyle=UIScrollViewIndicatorStyleWhite;
    //是否显示水平滚动条
    scrollView.showsHorizontalScrollIndicator=NO;
    //是否显示垂直滚动条
    scrollView.showsVerticalScrollIndicator=NO;
    
    
    
}
-(void)move{
    [self.scrollView setContentOffset:CGPointMake(2000, 1800) animated:YES];
}
//<UIScrollViewDelegate>的代理方法...
//scrollView中哪个子视图需要缩放,设置放大缩小的视图，要是uiscrollview的subview
-(UIView*) viewForZoomingInScrollView:(UIScrollView *)scrollView{
    return self.imageView;
}
//开始拖拽视图
- (void)scrollViewWillBeginDragging:(UIScrollView *)scrollView;
{
    NSLog(@"scrollViewWillBeginDragging");
}

//只要滚动就会触发
- (void)scrollViewDidScroll:(UIScrollView *)scrollView
{
    self.scrollView.alpha = 0.5;
}
//完成拖拽
- (void)scrollViewDidEndDragging:(UIScrollView *)scrollView willDecelerate:(BOOL)decelerate
{
    self.scrollView.alpha = 1.0;
}


//将开始降速时
- (void)scrollViewWillBeginDecelerating:(UIScrollView *)scrollView;
{
    NSLog(@"scrollViewWillBeginDecelerating");
}

//减速停止了时执行，手触摸时执行执行
- (void)scrollViewDidEndDecelerating:(UIScrollView *)scrollView;
{
    NSLog(@"scrollViewDidEndDecelerating");
}
//滚动动画停止时执行,代码改变时出发,也就是setContentOffset改变时
- (void)scrollViewDidEndScrollingAnimation:(UIScrollView *)scrollView;
{
    NSLog(@"scrollViewDidEndScrollingAnimation");
}

//完成放大缩小时调用
- (void)scrollViewDidEndZooming:(UIScrollView *)scrollView withView:(UIView *)view atScale:(float)scale;
{
    NSLog(@"scale between minimum and maximum. called after any 'bounce' animations");
}

//如果你不是完全滚动到滚轴视图的顶部，你可以轻点状态栏，那个可视的滚轴视图会一直滚动到顶部，
//那是默认行为，你可以通过该方法返回NO来关闭它
- (BOOL)scrollViewShouldScrollToTop:(UIScrollView *)scrollView;
{
    NSLog(@"scrollViewShouldScrollToTop");
    return YES;
}

- (void)scrollViewDidScrollToTop:(UIScrollView *)scrollView;
{
    NSLog(@"scrollViewDidScrollToTop");
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end

















