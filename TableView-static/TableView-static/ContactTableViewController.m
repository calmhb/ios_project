//
//  ContactTableViewController.m
//  TableView-static
//
//  Created by Mac on 16/3/24.
//  Copyright © 2016年 zk. All rights reserved.
//

#import "ContactTableViewController.h"

@interface ContactTableViewController ()

@end

@implementation ContactTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title=self.contact.name;
  }

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 3;
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    static NSString* cellIdentifier=@"Cell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellIdentifier];
    if (cell==nil) {
        cell=[[UITableViewCell alloc]initWithStyle:UITableViewCellStyleValue1 reuseIdentifier:cellIdentifier];
    }
    NSInteger row=indexPath.row;
    if (row==0) {
        cell.imageView.image=[UIImage imageNamed:self.contact.photoName]; 
    }else if(row==1){
        cell.textLabel.text=[NSString stringWithFormat:@"手机:%@",self.contact.phone];
    }else if(row==2){
        cell.textLabel.text=[NSString stringWithFormat:@"年龄:%d",self.contact.age];
    }
    
    return cell;
}
@end
