//
//  HomeViewController.m
//  Exam
//
//  Created by wanghailong on 15/12/11.
//  Copyright © 2015年 Hailong.wang. All rights reserved.
//

#import "HomeViewController.h"

@interface HomeViewController () <UITableViewDataSource, UITableViewDelegate> {
    NSInteger _pageNumber;
}

@property (nonatomic, strong) NSArray *dataSource;
@property (weak, nonatomic) IBOutlet UITableView *tableView;

@end

@implementation HomeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self.tableView registerClass:[UITableViewCell class] forCellReuseIdentifier:@"Identifier"];
}

- (void)initData {
    _pageNumber = 1;
    __weak typeof(self) weakSelf = self;
    AFHTTPSessionManager *manager = [AFHTTPSessionManager manager];
    manager.responseSerializer = [AFHTTPResponseSerializer serializer];
    [manager GET:kHomePage parameters:@{@"page":@(_pageNumber)} progress:NULL success:^(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseObject) {
        NSLog(@"%@", responseObject);
        [weakSelf.tableView reloadData];
    } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
        
    }];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - UITableViewDelegate & UITableViewDataSource
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 10;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"Identifier" forIndexPath:indexPath];
    return cell;
}

@end
