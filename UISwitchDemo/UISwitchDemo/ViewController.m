//
//  ViewController.m
//  UISwitchDemo
//
//  Created by Mac on 16/3/15.
//  Copyright © 2016年 zk. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
- (IBAction)changeBackColor:(UISwitch *)sender;


@property (strong, nonatomic) IBOutlet UISlider *alphaSlider;
@property (strong, nonatomic) IBOutlet UIImageView *img;

- (IBAction)sliderChangeAlpha:(UISlider *)sender;



- (IBAction)sliderValueChange:(UISlider *)sender;
@property (strong, nonatomic) IBOutlet UILabel *showLabel;
@property (strong, nonatomic) IBOutlet UILabel *colorLabel;

@end

@implementation ViewController



- (void)viewDidLoad {
    [super viewDidLoad];
    self.stepper.minimumValue=10;
    self.stepper.maximumValue=100;
    self.stepper.stepValue=3;
    //代码创建Stepper
    // Frame defines location, size values are ignored
    UIStepper *stepper = [[UIStepper alloc] initWithFrame:CGRectMake(120, 120, 0, 0)];
      // Set action target and action for a particular value changed event
//    [stepper addTarget:self action:@selector(stepperPressed:) forControlEvents:UIControlEventValueChanged];
    // Set min and max
    [stepper setMinimumValue:0];
    [stepper setMaximumValue:99];
    // Value wraps around from minimum to maximum
    [stepper setWraps:YES];
    // If continuos (default), changes are sent for each change in stepper,
    // otherwise, change event occurs once user lets up on button
    [stepper setContinuous:NO];
    // To change the increment value for each step
    // (default is 1)
    [stepper setStepValue:10];
    
    [self.view addSubview:stepper];
    
    
    //自定义stepper的图标
    //设置减法的图标
    [self.myself setDecrementImage:[UIImage imageNamed:@"minus.gif"] forState:UIControlStateNormal];
    //设置加法的图标
    [self.myself setIncrementImage:[UIImage imageNamed:@"plus.gif"] forState:UIControlStateNormal];
    
    //创建可拉伸图片,指定对heart.gif图片整体进行平铺
    UIImage* minImage=[[UIImage imageNamed:@"heart.gif"] resizableImageWithCapInsets:UIEdgeInsetsZero resizingMode:UIImageResizingModeTile];
    //创建可拉伸图片,指定对grow.gif图片整体进行平铺
    UIImage* maxImage=[[UIImage imageNamed:@"grow.gif"] resizableImageWithCapInsets:UIEdgeInsetsZero resizingMode:UIImageResizingModeTile];
    //设置拖动条已完成部分的轨道图片
    [self.alphaSlider setMinimumTrackImage:minImage forState:UIControlStateNormal];
    //设置未完成部分的轨道图片
    [self.alphaSlider setMaximumTrackImage:maxImage forState:UIControlStateNormal];
    //设置滑块的图片
    [self.alphaSlider setThumbImage:[UIImage imageNamed:@"z.png"] forState:UIControlStateNormal];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (IBAction)stepperValueChange:(UIStepper *)sender {
    self.stepperTxt.text=[NSString stringWithFormat:@"%g",sender.value];
}
- (IBAction)sliderChangeAlpha:(UISlider *)sender {
    [self.img setAlpha:sender.value];
}

- (IBAction)sliderValueChange:(UISlider *)sender {
    NSLog(@"sender.value=%.2f",sender.value);
    self.colorLabel.backgroundColor=[UIColor colorWithRed:sender.value green:sender.value blue:0.0 alpha:1.0];
    self.showLabel.text=[NSString stringWithFormat:@"值:%.0f",sender.value*255];
}
- (IBAction)changeBackColor:(UISwitch *)sender {
    
    if ([sender isOn]==YES) {
        self.view.backgroundColor=[UIColor whiteColor];
    }else{
        self.view.backgroundColor=[UIColor blackColor];
    }
}
@end
