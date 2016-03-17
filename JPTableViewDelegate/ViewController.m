//
//  ViewController.m
//  JPTableViewDelegate
//
//  Created by tztddong on 16/3/17.
//  Copyright © 2016年 dongjiangpeng. All rights reserved.
//

#import "ViewController.h"
#import "JPTableViewDelegate.h"

@interface ViewController ()

@property(nonatomic,strong)JPTableViewDelegate *tableViewDelegate;

@property(nonatomic,strong)UITableView *mainTableView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    NSArray *dataList = @[@"第一行",@"第二行",@"第三行",@"第四行"];
    
    self.tableViewDelegate = [JPTableViewDelegate createTableViewDelegateWithDataList:dataList selectBlock:^(NSIndexPath *indexPath) {
        
        NSLog(@"点击第%zd行",indexPath.row);
    }];
    
    self.mainTableView = [[UITableView alloc]initWithFrame:self.view.bounds style:UITableViewStylePlain];
    [self.view addSubview:self.mainTableView];
    self.mainTableView.delegate = self.tableViewDelegate;
    self.mainTableView.dataSource = self.tableViewDelegate;
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
