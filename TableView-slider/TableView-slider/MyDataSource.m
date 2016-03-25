//
//  MyDataSource.m
//  TableView-slider
//
//  Created by Mac on 16/3/25.
//  Copyright © 2016年 zk. All rights reserved.
//

#import "MyDataSource.h"

@implementation MyDataSource
//重写该方法,返回3行
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return 3;
}
//重写该方法,定义行中的cell
-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    UITableViewCell *cell=[[UITableViewCell alloc]initWithStyle:UITableViewCellStyleValue1 reuseIdentifier:nil];
    cell.textLabel.text=@"独立数据源";
    cell.detailTextLabel.text=@"独立的,厉害!";
    return cell;
}
@end
