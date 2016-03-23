//
//  ContactTableViewController.m
//  TableViewEditDemo01
//
//  Created by Mac on 16/3/23.
//  Copyright © 2016年 zk. All rights reserved.
//

#import "ContactTableViewController.h"
#import "Contact.h"

@interface ContactTableViewController ()

@end

@implementation ContactTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title=@"联系人";
    //self.editButtonItem是父类准备好的按钮对象
    //此按钮对象按下后，TableView就会进入编辑模式，再按一次就会退出编辑模式
    self.navigationItem.rightBarButtonItem=self.editButtonItem;
    self.navigationItem.leftBarButtonItem=[[UIBarButtonItem alloc]initWithTitle:
    @"编辑" style:UIBarButtonItemStylePlain target:self action:@selector(editTableView:)];
    //输出数据源
    NSLog(@"%@",self.tableView.dataSource);
    
}
-(void)editTableView:(UIBarButtonItem *)button{
    //将表的编辑状态从可编辑状态转为不可编辑,或从不可编辑到可编辑
    [self.tableView setEditing:!self.tableView.editing animated:YES];
    if (self.tableView.editing) {
        button.title=@"完成";
    }else{
        button.title=@"编辑";
    }
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

#pragma mark - Table view data source
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.contacts.count;
}
//设定Cell内容.
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    static NSString *cellIdentifier=@"Cell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellIdentifier];
    if (cell==nil) {
        cell=[[UITableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:cellIdentifier];
    }
    // Configure the cell...
    Contact *contact=self.contacts[indexPath.row];
    cell.textLabel.text=contact.name;
    //cell附件的类型.
    cell.accessoryType=UITableViewCellAccessoryDetailDisclosureButton;//采用详细按钮
    //cell.accessoryType=UITableViewCellAccessoryCheckmark;//类似于勾
    return cell;
}

// 根据条件进入到编辑状态
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
    if (indexPath.row==0) {
        return NO;
    }
    return YES;
}
//返回cell的编辑样式
-(UITableViewCellEditingStyle) tableView:(UITableView *)tableView
           editingStyleForRowAtIndexPath:(NSIndexPath *)indexPath{
    //最后一个提供插入的样式
    if (indexPath.row==self.contacts.count-1) {
        return UITableViewCellEditingStyleInsert;//插入样式
    }
        return UITableViewCellEditingStyleDelete;//删除样式
}
//设定提交的编辑样式
-(void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)
editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath{
    if (editingStyle==UITableViewCellEditingStyleDelete) {
        //1.先删除数据源中的数据
        [self.contacts removeObjectAtIndex:indexPath.row];
        //2.在删除tableView中对应的行
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    }else if (editingStyle==UITableViewCellEditingStyleInsert){//如果是插入样式
       //1.向数据源增加数据
        Contact* con=[[Contact alloc]init];
        con.name=@"new";
        con.age=0;
        con.phoneNumber=@"18000010002";
        [self.contacts addObject:con];
       //2.再向TableView增加行
        NSIndexPath *indexPath=[NSIndexPath indexPathForItem:self.contacts.count-1 inSection:0];
        [tableView insertRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationAutomatic];
    }
}


//重排表格视图:从formIndexPath移除数据,toIndexPath插入数据
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)
fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath {
    Contact *con=self.contacts[fromIndexPath.row];
    [self.contacts removeObjectAtIndex:fromIndexPath.row];
    [self.contacts insertObject:con atIndex:toIndexPath.row];
}
// 定义支持表格视图重排的条件
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath {
    if (indexPath.row==2) {
        return NO;
    }
    return YES;
}
#pragma mark - Table view delegate
//选择指定的Cell后触发该方法
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    Contact *con=self.contacts[indexPath.row];
    NSLog(@"用户点击了Cell本身,直接给%@打电话",con.name);
    //1.获得当前的Cell对象
    UITableViewCell *cell=[tableView cellForRowAtIndexPath:indexPath];
    //2.设置cell的accessoryType
    if (cell.accessoryType==UITableViewCellAccessoryCheckmark) {
        cell.accessoryType=UITableViewCellAccessoryDetailDisclosureButton;
    }else{
        cell.accessoryType=UITableViewCellAccessoryCheckmark;
    }
    
}
//单击附件按钮之后触发的方法
-(void)tableView:(UITableView *)tableView accessoryButtonTappedForRowWithIndexPath:(NSIndexPath *)indexPath{
    Contact *con=self.contacts[indexPath.row];
    NSLog(@"用户点击的是Cell上的按钮而不是Cell本身,看%@的详细信息",con.name);
}
@end
