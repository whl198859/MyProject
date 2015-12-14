//
//  HomeBannerTableViewCell.h
//  Exam
//
//  Created by wanghailong on 15/12/14.
//  Copyright © 2015年 Hailong.wang. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "HomeBannerModel.h"

@interface HomeBannerTableViewCell : UITableViewCell <UIScrollViewDelegate>

@property (nonatomic, strong) JSONModelArray *dataSource;
@property (nonatomic, strong) IBOutlet UIScrollView *scrollView;
@property (nonatomic, strong) IBOutlet UILabel *title;

- (void)setBannerData:(JSONModelArray *)data;

@end
