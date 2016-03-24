//
//  QplayConfigTableViewController.m
//  TableView-staticQQMusic
//
//  Created by Mac on 16/3/24.
//  Copyright © 2016年 zk. All rights reserved.
//

#import "QplayConfigTableViewController.h"

@interface QplayConfigTableViewController ()
//表头内容
@property (strong, nonatomic) IBOutlet UIView *headerView;
@property (weak, nonatomic) IBOutlet UIImageView *userImageView;
//第一分区第1行
@property (strong, nonatomic) IBOutlet UITableViewCell *myGreenCell;
//第2分区所有行

@property (strong, nonatomic) IBOutlet UITableViewCell *setCell;

@property (strong, nonatomic) IBOutlet UITableViewCell *wifiCell;
@property (strong, nonatomic) IBOutlet UITableViewCell *qplayCell;
@property (strong, nonatomic) IBOutlet UITableViewCell *itemOffCell;
//第3分区

@property (strong, nonatomic) IBOutlet UITableViewCell *aboutCell;
//第4分区
@property (strong, nonatomic) IBOutlet UITableViewCell *exitCel;


@end

@implementation QplayConfigTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title=@"更多";
    self.tableView.tableHeaderView=self.headerView;
    self.userImageView.image=[UIImage imageNamed:@"user.png"];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
 }

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 4;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    switch (section) {
        case 0:return 1;
        case 1:return 4;
        case 2:return 1;
        case 3:return 1;
    }
    return 0;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    NSInteger section=indexPath.section;
    NSInteger row=indexPath.row;
    if (section==0&& row==0) {
        return  self.myGreenCell;
    }else if(section==1&& row==0){
        return self.setCell;
    }else if(section==1&& row==1){
        return self.wifiCell;
    }else if(section==1&& row==2){
        return self.qplayCell;
    }else if(section==1&& row==3){
        return self.itemOffCell;
    }else if(section==2&& row==0){
        return self.aboutCell;
    }else if(section==3&& row==0){
        return self.exitCel;
    }
    
    return  nil;
}
@end
