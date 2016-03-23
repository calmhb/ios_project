//
//  ShowTableViewController.m
//  TableView2Memo
//
//  Created by Mac on 16/3/23.
//  Copyright © 2016年 zk. All rights reserved.
//

#import "ShowTableViewController.h"
#import "InputViewController.h"

@interface ShowTableViewController ()<InputViewDelegate>
@property (nonatomic,strong)NSMutableArray *memos;
@end

@implementation ShowTableViewController
-(NSMutableArray*)memos{
    if (!_memos) {
        _memos=[@[@"明天上课",@"晚上打LOL",@"早上吃包子"] mutableCopy];
    }
    return _memos;
}
//重写协议方法,将信息保存到数组中
-(void)inputViewController:(InputViewController *)inputVC message:(NSString *)msg{
    [self.memos addObject:msg];
    //重新加载数据
    //[self.tableView reloadData];每次会重新加载表格数据,影响性能
    //根据行号和分区实例化一个NSIndexPath对象
    NSIndexPath *indexPath=[NSIndexPath indexPathForRow:self.memos.count-1 inSection:0];
    [self.tableView insertRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationAutomatic];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title=@"备忘录";
    //定义导航栏右边的按钮,同事绑定数据
    self.navigationItem.rightBarButtonItem=[[UIBarButtonItem alloc]initWithBarButtonSystemItem:UIBarButtonSystemItemAdd target:self action:@selector(addMemo:)];
 }
//定义右边按钮,跳转到VC界面
-(void) addMemo:(UIBarButtonItem *)sender{
    InputViewController *inputVC=[[InputViewController alloc]initWithNibName:
    @"InputViewController" bundle:nil];
    //将inputVC对象作为代理对象
    inputVC.delegate=self;
    [self.navigationController pushViewController:inputVC animated:YES];
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.memos.count;
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    static NSString *cellIdentifier=@"Cell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellIdentifier];
    if (cell==nil) {
        cell=[[UITableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:cellIdentifier];
    }
    // Configure the cell...
    cell.textLabel.text=self.memos[indexPath.row];
    return cell;
}

@end
