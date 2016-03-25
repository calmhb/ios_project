//
//  TableSliderViewController.m
//  TableView-slider
//
//  Created by Mac on 16/3/25.
//  Copyright © 2016年 zk. All rights reserved.
//

#import "TableSliderViewController.h"
#import "MyDataSource.h"
//遵守UITableViewDataSource,UITableViewDelegate两个协议
@interface TableSliderViewController ()<UITableViewDelegate,UITableViewDataSource>
//关联ib中的表
@property (weak, nonatomic) IBOutlet UITableView *ibTable;
@property (strong,nonatomic) UITableView *addTable;
//定义的数据源
@property (strong,nonatomic) MyDataSource *myDataSource;

@end

@implementation TableSliderViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title=@"TableView";
    //设定一个区域,在滑块的下部分
    CGRect frame=CGRectMake(0, 270, 320, 200);
    //在指定的frame中创建一个表视图
    UITableView *myTableView=[[UITableView alloc]initWithFrame:frame style:UITableViewStylePlain];
    self.addTable=myTableView;
    [self.view addSubview:myTableView];
    
    //实例化自定义的DataSource
    self.myDataSource=[[MyDataSource alloc]init];
    //讲自定义的数据会显示在自定义的表格中
    myTableView.dataSource=self.myDataSource;
    myTableView.delegate=self;
    
    //[self tableView:self.ibTable numberOfRowsInSection:0];

}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    //如果是Interface Builder界面中的表格
    if (tableView==self.ibTable) {
        return 50;//50行
    }else{
        return 8;
    }
}

-(UITableViewCell *) tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    UITableViewCell *cell=[tableView dequeueReusableCellWithIdentifier:@"MyCell"];
    if (cell==nil) {
        cell=[[UITableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"MyCell"];
    }
    if (tableView==self.ibTable) {
        cell.textLabel.text=[NSString stringWithFormat:@"ibTable-%d",indexPath.row];
    }else{
        cell.textLabel.text=@"End....";
    }
    return cell;
}

//选中行之后执行该方法
-(void) tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    if (tableView==self.ibTable) {
        NSLog(@"用户点击了%d行",indexPath.row);
    }else{
        NSLog(@"随便...");
    }
}
//为slider绑定事件
- (IBAction)sliderValueChange:(UISlider *)sender {
    NSLog(@"===slider===");
    CGFloat height=self.ibTable.contentSize.height;
    CGFloat scrollVal=sender.value*height;
    CGPoint offset=self.ibTable.contentOffset;
    offset.y=scrollVal;
    self.ibTable.contentOffset=offset;
}
@end
