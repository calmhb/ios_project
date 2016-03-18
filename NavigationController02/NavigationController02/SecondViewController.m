//
//  SecondViewController.m
//  NavigationController02
//
//  Created by Mac on 16/3/18.
//  Copyright © 2016年 zk. All rights reserved.
//

#import "SecondViewController.h"

@interface SecondViewController ()

@end

@implementation SecondViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    //设置标题
    self.title=@"新建联系人";
  
    //设置右边按钮
    self.navigationItem.rightBarButtonItem=[[UIBarButtonItem alloc] initWithTitle:
    @"完成" style:UIBarButtonItemStylePlain target:nil action:nil];
    
    //设置左边按钮
    self.navigationItem.leftBarButtonItem=[[UIBarButtonItem alloc] initWithTitle:
                                           @"取消" style:UIBarButtonItemStylePlain target:self action:@selector(cancle)];
    

}

-(void) cancle
{
    [self.navigationController dismissViewControllerAnimated:YES completion:nil];
}

-(id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self=[super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        NSLog(@"init SecondVC");
    }
    return self;
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
