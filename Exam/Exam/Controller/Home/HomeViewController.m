//
//  HomeViewController.m
//  Exam
//
//  Created by wanghailong on 15/12/11.
//  Copyright © 2015年 Hailong.wang. All rights reserved.
//

#import "HomeViewController.h"
#import "HomeDataModel.h"
#import "HomePageModel.h"
#import "HomeBannerModel.h"
#import "HomeRecommendModel.h"
#import "HomeTopModel.h"
#import "HomeItemCollectionModel.h"
#import "HomeItemPageModel.h"
#import "HomeItemSubjectModel.h"

@interface HomeViewController () <UITableViewDataSource, UITableViewDelegate> {
    NSInteger _pageNumber;
}

@property (nonatomic, strong) HomeDataModel *model;
@property (nonatomic, strong) NSMutableArray *dataSource;
@property (weak, nonatomic) IBOutlet UITableView *tableView;

@end

@implementation HomeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self.tableView registerClass:[UITableViewCell class] forCellReuseIdentifier:@"Identifier"];
}

- (void)initData {
    self.dataSource = [[NSMutableArray alloc] initWithCapacity:0];
    _pageNumber = 1;
    [self getNetData];
}

- (void)getNetData {
    __weak typeof(self) weakSelf = self;
    AFHTTPSessionManager *manager = [AFHTTPSessionManager manager];
    manager.responseSerializer = [AFHTTPResponseSerializer serializer];
    [manager GET:kHomePage parameters:@{@"page":@(_pageNumber)} progress:NULL success:^(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseObject) {
        NSError *error = nil;
        weakSelf.model = [[HomeDataModel alloc] initWithData:responseObject error:&error];
        //将数据整理成Model
        [weakSelf dataFactory:responseObject];
        [weakSelf.tableView reloadData];
    } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
        
    }];
}

- (void)dataFactory:(id)responseObject {
    NSError *error = nil;
    NSDictionary *dataSource = [NSJSONSerialization JSONObjectWithData:responseObject options:NSJSONReadingMutableContainers error:&error];
    NSDictionary *data = [dataSource objectForKey:@"data"];
    NSDictionary *featured = [data objectForKey:@"featured_items"];
    NSArray *items = [featured objectForKey:@"items"];
    [self arrayDataFactory:items];
}

- (void)arrayDataFactory:(NSArray *)items {
    for (NSDictionary *object in items) {
        id model = nil;
        if ([[object objectForKey:@"item_type"] isEqualToString:@"subject"]) {
            model = [[HomeItemSubjectModel alloc] init];
        } else if ([[object objectForKey:@"item_type"] isEqualToString:@"collection"]) {
            model = [[HomeItemCollectionModel alloc] init];
        } else {
            model = [[HomeItemPageModel alloc] init];
        }
        [self.dataSource addObject:model];
    }
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
