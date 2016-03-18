//
//  ViewController.m
//  ImageView02_ImageShow
//
//  Created by Mac on 16/3/18.
//  Copyright © 2016年 zk. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
//连接UIImageView控件
@property (strong, nonatomic) IBOutlet UIImageView *iv1;
@property (strong, nonatomic) IBOutlet UIImageView *iv2;
//增加透明度
- (IBAction)addAlpha:(id)sender;
//减少透明度
- (IBAction)subAlpha:(id)sender;
//下一张图片
- (IBAction)next:(id)sender;
//定义封装图片的数组
@property (nonatomic,strong) NSArray* images;
@property (nonatomic) int curImage;//图片的总数
@property (nonatomic) CGFloat alpha;//定义透明度

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
     //初始化数据
    self.curImage=0;
    self.alpha=1.0;
    self.images=[NSArray arrayWithObjects:@"lijiang.jpg",
                 @"qiao.jpg", @"xiangbi.jpg"
                 , @"shui.jpg" , @"shuangta.jpg" , nil];

    //创建一个轻击的手势检测器
    UITapGestureRecognizer *singleTap=[[UITapGestureRecognizer alloc]initWithTarget:self action:@selector(clicked:)];
    //启用iv控件的用户交互,从而允许该控件能响应用户手势
    self.iv1.userInteractionEnabled=YES;
    //为ImageView添加手势检测器
    [self.iv1 addGestureRecognizer:singleTap];
   
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)addAlpha:(id)sender {
    self.alpha+=0.05;
    //如果透明度已经大于或等于1.0,将透明度设置为1.0
    if(self.alpha>=1.0){
        self.alpha=1.0;
    }
    //设置iv1的控件的透明度
    self.iv1.alpha=self.alpha;
}

- (IBAction)subAlpha:(id)sender {
    self.alpha-=0.05;
    if (self.alpha<=0.0) {
       self.alpha=0.0;
    }
    //设置iv1控件的透明度.
    self.iv1.alpha=self.alpha;
}

- (IBAction)next:(id)sender {
    //控制iv的image显示images数组中的下一张图片
    self.iv1.image=[UIImage imageNamed:[self.images objectAtIndex:(++self.curImage%self.images.count)]];
}

- (void) clicked:(UIGestureRecognizer *)gestureRecognizer
{
    // 获取正在显示的原始位图
    UIImage* srcImage = self.iv1.image;
    // 获取用户手指在iv控件上的触碰点
    CGPoint pt = [gestureRecognizer locationInView: self.iv1];
    // 获取正在显示的原图对应的CGImageRef
    CGImageRef sourceImageRef = [srcImage CGImage];
    // 获取图片实际大小与第一个UIImageView的缩放比例
    CGFloat scale = srcImage.size.width / 320;
    // 将iv控件上触碰点的左边换算成原始图片上的位置
    CGFloat x = pt.x * scale;
    CGFloat y = pt.y * scale;
    if(x + 120 > srcImage.size.width)
    {
        x = srcImage.size.width - 140;
    }
    if(y + 120 > srcImage.size.height)
    {
        y = srcImage.size.height - 140;
    }
    // 调用CGImageCreateWithImageInRect函数获取sourceImageRef中
    // 指定区域的图片
    CGImageRef newImageRef = CGImageCreateWithImageInRect(sourceImageRef,
         CGRectMake(x, y, 140, 140));
    // 让iv2控件显示newImageRef对应的图片
    self.iv2.image = [UIImage imageWithCGImage:newImageRef];
}
@end




























