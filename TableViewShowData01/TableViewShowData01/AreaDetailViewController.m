//
//  AreaDetailViewController.m
//  TableViewShowData01
//
//  Created by Mac on 16/3/22.
//  Copyright © 2016年 zk. All rights reserved.
//

#import "AreaDetailViewController.h"

@interface AreaDetailViewController ()
@property (strong, nonatomic) IBOutlet UILabel *nameLabel;
@property (strong, nonatomic) IBOutlet UILabel *populationLabel;

@end

@implementation AreaDetailViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title=self.area.name;
}
-(void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
    self.nameLabel.text=self.area.name;
    self.populationLabel.text=[NSString stringWithFormat:@"%d万",self.area.population];
    
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
