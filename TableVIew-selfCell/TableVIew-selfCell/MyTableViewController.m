//
//  MyTableViewController.m
//  TableVIew-selfCell
//
//  Created by Mac on 16/3/24.
//  Copyright © 2016年 zk. All rights reserved.
//

#import "MyTableViewController.h"
#import "MyViewCell.h"
#import "News.h"

@interface MyTableViewController ()

@end

@implementation MyTableViewController
static NSString *cellIdentifier=@"NewsCell";
- (void)viewDidLoad {
    [super viewDidLoad];
     self.title=@"zKing语言圈";
    //实例化自定义的cell对象
    UINib *nib=[UINib nibWithNibName:@"MyViewCell" bundle:nil];
    //注册自定义的cell
    [self.tableView registerNib:nib forCellReuseIdentifier:cellIdentifier];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

#pragma mark - Table view data source
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.news.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    News *n1=self.news[indexPath.row];
    MyViewCell *cell=[tableView dequeueReusableCellWithIdentifier:cellIdentifier];
    cell.titleLabel.text=n1.title;
    cell.contentLabel.text=n1.content;
    int x=n1.count/10000;
cell.countLabel.text=[NSString stringWithFormat:@"跟帖:%d%@",x?x:n1.count,x?@"万":@""];
   cell.newsImage.image=[UIImage imageNamed:n1.imageName];
    return cell;
}
//设定行高
-(CGFloat) tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    return 75;
}
@end
