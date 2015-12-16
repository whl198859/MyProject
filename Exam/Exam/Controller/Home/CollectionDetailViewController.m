//
//  CollectionDetailViewController.m
//  Exam
//
//  Created by wanghailong on 15/12/16.
//  Copyright © 2015年 Hailong.wang. All rights reserved.
//

#import "CollectionDetailViewController.h"
#import "CollectionDetailModel.h"
#import "CollectionPhotoModel.h"
#import <JSONModelArray.h>
#import "CollectionAuthorCell.h"
#import "CollectionImageCell.h"

@interface CollectionDetailViewController () <UITableViewDataSource, UITableViewDelegate>

@property (nonatomic, copy) NSString *collectionId;
@property (nonatomic, copy) NSString *titleText;
@property (nonatomic, strong) CollectionDetailModel *detail;
@property (nonatomic, strong) JSONModelArray *photos;
@property (weak, nonatomic) IBOutlet UITableView *tableView;

@end

@implementation CollectionDetailViewController

- (instancetype)initWithCollectionID:(NSString *)collectionID title:(NSString *)title {
    self = [super init];
    if (self) {
        self.collectionId = collectionID;
        self.titleText = title;
    }
    return self;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.title = self.titleText;
}

- (void)initData {
    [self getNetData];
}

- (void)getNetData {
    __weak typeof(self) weakSelf = self;
    AFHTTPSessionManager *manager = [AFHTTPSessionManager manager];
    manager.responseSerializer = [AFHTTPResponseSerializer serializer];
    [manager GET:kHomeCollectionDetail parameters:@{@"col_id":self.collectionId, @"tab":@"photo"} progress:NULL success:^(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseObject) {
        NSDictionary *data = [NSJSONSerialization JSONObjectWithData:responseObject options:NSJSONReadingMutableContainers error:nil];
        weakSelf.detail = [[CollectionDetailModel alloc] initWithDictionary:[[data objectForKey:@"collection_info"] objectForKey:@"info"]];
        weakSelf.photos = [[JSONModelArray alloc] initWithArray:[[[data objectForKey:@"collection_photos2"] objectForKey:@"photos"] objectForKey:@"value"] modelClass:[CollectionPhotoModel class]];
        [weakSelf.tableView reloadData];
    } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
        
    }];
}

- (void)createView {
    [self.tableView registerClass:[UITableViewCell class] forCellReuseIdentifier:@"cell"];
}

- (void)addTouchAction {

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - UITableViewDelegate & UITableViewDataSource
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 3;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    if (section == 0) {
        return 4;
    } else if (section == 1) {
        return 1;
    } else {
        return 1;
    }
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell" forIndexPath:indexPath];
    return cell;
}

@end
