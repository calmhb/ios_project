//
//  MyTableViewController.m
//  TableViewCell-AccessoryView
//
//  Created by Mac on 16/3/23.
//  Copyright © 2016年 zk. All rights reserved.
//

#import "MyTableViewController.h"

@interface MyTableViewController ()

@end

@implementation MyTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title=@"自定义Cell附件";
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
 }

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 2;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    if (section==0) {
        return 2;
    }else if(section ==1){
        return 3;
    }
     return 0;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:
(NSIndexPath *)indexPath {
    static NSString *cellIdentifier=@"Cell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier
                             :cellIdentifier];
    if (cell==nil) {
        cell=[[UITableViewCell alloc]initWithStyle:UITableViewCellStyleDefault
                                   reuseIdentifier:cellIdentifier];
    }
    // Configure the cell...
    if (indexPath.section==0&&indexPath.row==0) {//第一分区第一行
        cell.textLabel.text=@"蓝牙";
        UISwitch *blueBtn=[[UISwitch alloc]init];
        cell.accessoryView=blueBtn;
    }else if(indexPath.section==0&&indexPath.row==1){
       cell.textLabel.text=@"运行商";
        UIButton *serbtn=[UIButton buttonWithType:UIButtonTypeSystem];
        serbtn.frame=CGRectMake(0,0,44,44);//设定按钮的位置大小
        [serbtn setTitle:@"选择" forState:UIControlStateNormal];//标题和状态
        //按钮绑定事件和方法
        [serbtn addTarget:self action:@selector(selectService:)
         forControlEvents:UIControlEventTouchUpInside];
        //使用自定义的btn
        cell.accessoryView=serbtn;
    }else if(indexPath.section==1&&indexPath.row==0){
        cell.textLabel.text=@"姓名";
        UITextField *inputBox=[[UITextField alloc]initWithFrame:CGRectMake(0,2, 200, 40)];
        cell.accessoryView=inputBox;
    }else if(indexPath.section==1&&indexPath.row==1){
        cell.textLabel.text=@"次数:";
        //定义一个UIView接受多个组件
        UIView *view=[[UIView alloc]initWithFrame:CGRectMake(0, 0, 200, 44)];
        UILabel *label=[[UILabel alloc]initWithFrame:CGRectMake(3, 5, 20, 34)];
        label.text=@"0";
        label.textAlignment=NSTextAlignmentCenter;//文子的对其方式
        //微调器
        UIStepper *stepper=[[UIStepper alloc] initWithFrame:CGRectMake(40, 5, 160, 34)];
        [view addSubview:label];
        [view addSubview:stepper];
        cell.accessoryView=view;
    }else{
       cell.textLabel.text=@"En.....";
    }
    
    return cell;
}

-(void) selectService:(UIButton *) button{
    NSLog(@"service.....");
}
@end
