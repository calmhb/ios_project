//
//  ViewController.m
//  MultiMVC
//
//  Created by Mac on 16/3/16.
//  Copyright © 2016年 zk. All rights reserved.
//

#import "FirstViewController.h"
#import "SecondViewController.h"

@interface FirstViewController ()
- (IBAction)goToSecond:(UIButton *)sender;

@end

@implementation FirstViewController

-(id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self= [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        //Custom initalization
    }
    return self;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)goToSecond:(UIButton *)sender {
   //获得SecondViewController
    SecondViewController* secondView=[[SecondViewController alloc] initWithNibName:@"SecondViewController" bundle:nil];
    [self presentViewController:secondView animated:YES completion:nil];
}
@end
