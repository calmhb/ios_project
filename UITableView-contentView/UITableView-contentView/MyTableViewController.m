//
//  MyTableViewController.m
//  UITableView-contentView
//
//  Created by Mac on 16/3/23.
//  Copyright © 2016年 zk. All rights reserved.
//

#import "MyTableViewController.h"

@interface MyTableViewController ()
@property (nonatomic,strong) NSArray *language;
@end

@implementation MyTableViewController
-(NSArray*) language{
    return @[@"C", @"Java", @"Objective-C", @"C++", @"Swift", @"Python", @"Javascript"];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title=@"自定义contentView";
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
 }

#pragma mark - Table view data source
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.language.count;
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    static NSString *cellIdentifier=@"Cell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellIdentifier];
    
    UILabel *label=nil;
    
    if (cell==nil) {
        cell=[[UITableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:cellIdentifier];
        label=[[UILabel alloc]init];
        label.frame=CGRectMake(0, 0, 320, 44);
        label.textColor=[UIColor lightGrayColor];
        label.font=[UIFont italicSystemFontOfSize:18];//斜体
        label.textAlignment=NSTextAlignmentCenter;
        //设置阴影
        label.shadowColor=[UIColor blueColor];
        label.shadowOffset=CGSizeMake(1, 1);
        [cell.contentView addSubview:label];
        //用到了tag属性任何一个视图对象都有tag属性， 可以用于标记一个父视图中唯一的子视图，相当于编号
        //可以用此编号从父视图中拿指定编号的子视图对象:[superView viewWithTag:tag];
        label.tag=1;
    }else{
        label=(UILabel*)[cell viewWithTag:1];
    }
    // Configure the cell...
    label.text=self.language[indexPath.row];
    return cell;
}
@end
