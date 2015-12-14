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
#import "HomeBannerTableViewCell.h"
#import "HomeRecommendTableViewCell.h"

@interface HomeViewController () <UITableViewDataSource, UITableViewDelegate> {
    NSInteger _pageNumber;
}

@property (nonatomic, strong) JSONModelArray *banner;
@property (nonatomic, strong) JSONModelArray *recommend;
@property (nonatomic, strong) JSONModelArray *top;
@property (nonatomic, strong) NSMutableArray *dataSource;
@property (weak, nonatomic) IBOutlet UITableView *tableView;

@end

@implementation HomeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.title = @"集美家";
    
    [self.tableView registerClass:[UITableViewCell class] forCellReuseIdentifier:@"Identifier"];
    [self.tableView registerNib:[UINib nibWithNibName:@"HomeBannerTableViewCell" bundle:[NSBundle mainBundle]] forCellReuseIdentifier:@"banner"];
    [self.tableView registerNib:[UINib nibWithNibName:@"HomeRecommendTableViewCell" bundle:[NSBundle mainBundle]] forCellReuseIdentifier:@"recommend"];
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
        NSDictionary *dataSource = [NSJSONSerialization JSONObjectWithData:responseObject options:NSJSONReadingMutableContainers error:&error];
        NSDictionary *data = [dataSource objectForKey:@"data"];
        self.banner = [[JSONModelArray alloc] initWithArray:[[data objectForKey:@"featured_banners2"] objectForKey:@"banners"] modelClass:[HomeBannerModel class]];
        self.recommend = [[JSONModelArray alloc] initWithArray:[data objectForKey:@"temai_coupon_recommend"] modelClass:[HomeRecommendModel class]];
        self.top = [[JSONModelArray alloc] initWithArray:[data objectForKey:@"photos_tag_style_space_top20"] modelClass:[HomeTopModel class]];
        //将数据整理成Model
        [weakSelf dataFactory:data];
        [weakSelf.tableView reloadData];
    } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
        
    }];
}

- (void)dataFactory:(id)dataSource {
    NSDictionary *featured = [dataSource objectForKey:@"featured_items"];
    NSArray *items = [featured objectForKey:@"items"];
    [self arrayDataFactory:items];
}

- (void)arrayDataFactory:(NSArray *)items {
    for (NSDictionary *object in items) {
        id model = nil;
        if ([[object objectForKey:@"item_type"] isEqualToString:@"subject"]) {
            model = [[HomeItemSubjectModel alloc] initWithDictionary:object];
        } else if ([[object objectForKey:@"item_type"] isEqualToString:@"collection"]) {
            model = [[HomeItemCollectionModel alloc] initWithDictionary:object];
        } else {
            model = [[HomeItemPageModel alloc] initWithDictionary:object];
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
    NSInteger number = 0;
    if (self.banner) {
        number ++;
    }
    if (self.recommend) {
        number ++;
    }
    if (self.dataSource.count != 0) {
        number += self.dataSource.count;
    }
    return number;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    if (indexPath.row == 0) {
        HomeBannerTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"banner" forIndexPath:indexPath];
        [cell setBannerData:self.banner];
        return cell;
    } else if (indexPath.row == 1) {
        HomeRecommendTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"recommend" forIndexPath:indexPath];
        [cell setRecommendData:self.recommend];
        return cell;
    } else {
        UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"Identifier" forIndexPath:indexPath];
        NSLog(@"%@", [[self.dataSource objectAtIndex:indexPath.row - 2] class]);
        return cell;
    }
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    if (indexPath.row == 0) {
        return 170.f;
    } else if (indexPath.row == 1) {
        return 190.f;
    } else {
        return 44.f;
    }
}

@end
