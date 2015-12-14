//
//  HomeBannerTableViewCell.h
//  Exam
//
//  Created by wanghailong on 15/12/14.
//  Copyright © 2015年 Hailong.wang. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "HomeBannerModel.h"

@interface HomeBannerTableViewCell : UITableViewCell

@property (nonatomic, strong) UIScrollView *scrollView;

- (void)setBannerData:(JSONModelArray *)data;

@end
