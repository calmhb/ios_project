//
//  StaticTableViewController.m
//  TableView-static
//
//  Created by Mac on 16/3/24.
//  Copyright © 2016年 zk. All rights reserved.
//

#import "StaticTableViewController.h"

@interface StaticTableViewController ()

@end

@implementation StaticTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title=@"静态表格";
  }

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

#pragma mark - Table view data source
//3个分区
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 3;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    switch(section){
        case 0: return 1; //第一个分区一行
        case 1: return 2; //第二个分区两行
    }
    return 5;//最后一个分区3行
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    static NSString *cellIdentifier=@"Cell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellIdentifier];
    if (cell==nil) {
        cell=[[UITableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:cellIdentifier];
    }
    // Configure the cell...
    NSInteger section=indexPath.section;
    NSInteger row=indexPath.row;
    if (section==0&&row==0) {
        cell.textLabel.text=@"-0-0-";
    }else if(section==1&&row==1){
        cell.textLabel.text=@"-2-2-";
    }else{
      cell.textLabel.text=[NSString stringWithFormat:@"第%d分区第%d行",(section+1),(row+1)];
    }
    
    return cell;
}
@end
