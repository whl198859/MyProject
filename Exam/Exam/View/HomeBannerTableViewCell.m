//
//  HomeBannerTableViewCell.m
//  Exam
//
//  Created by wanghailong on 15/12/14.
//  Copyright © 2015年 Hailong.wang. All rights reserved.
//

#import "HomeBannerTableViewCell.h"
#import <UIImageView+WebCache.h>
#import "Factory.h"

#define ImageViewTagValue 100

@implementation HomeBannerTableViewCell

- (void)setBannerData:(JSONModelArray *)data {
    if (!data) {
        return;
    }
    self.dataSource = data;
    
    self.scrollView.delegate = self;
    self.scrollView.contentSize = CGSizeMake(data.count * ScreenWidth, 0);
    
    [self createUIContent];
}

- (void)createUIContent {
    if (![self.scrollView viewWithTag:ImageViewTagValue]) {
        for (int i = 0; i < self.dataSource.count; i ++) {
            HomeBannerModel *model = [self.dataSource objectAtIndex:i];
            UIImageView *image = [self.scrollView viewWithTag:ImageViewTagValue + i];
            if (!image) {
                image = [[UIImageView alloc] initWithFrame:CGRectMake(i * ScreenWidth, 0, ScreenWidth, 180)];
                image.tag = ImageViewTagValue + i;
                [self.scrollView addSubview:image];
            }
            [image sd_setImageWithURL:[NSURL URLWithString:model.pic]];
            if (i == 0) {
                self.title.text = model.title;
            }
        }
    }
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

#pragma mark - UIScrollViewDelegate
- (void)scrollViewDidEndDecelerating:(UIScrollView *)scrollView {
    int page = floorf(scrollView.contentOffset.x - scrollView.width)/scrollView.width + 1;
    HomeBannerModel *model = [self.dataSource objectAtIndex:page];
    if ([model.title length] != 0) {
        self.title.hidden = NO;
        self.title.text = model.title;
    } else {
        self.title.hidden = YES;
    }
}

@end
