//
//  CollectionDetailViewController.m
//  Exam
//
//  Created by wanghailong on 15/12/16.
//  Copyright © 2015年 Hailong.wang. All rights reserved.
//

#import "CollectionDetailViewController.h"

@interface CollectionDetailViewController ()

@property (nonatomic, copy) NSString *collectionId;
@property (nonatomic, copy) NSString *titleText;
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
    AFHTTPSessionManager *manager = [AFHTTPSessionManager manager];
    manager.responseSerializer = [AFHTTPResponseSerializer serializer];
    [manager GET:kHomeCollectionDetail parameters:@{@"col_id":self.collectionId, @"tab":@"photo"} progress:NULL success:^(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseObject) {
        NSLog(@"%@", task.currentRequest.URL.absoluteString);
    } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
        
    }];
}

- (void)createView {
    
}

- (void)addTouchAction {

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
