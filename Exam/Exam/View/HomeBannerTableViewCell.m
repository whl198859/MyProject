//
//  HomeBannerTableViewCell.m
//  Exam
//
//  Created by wanghailong on 15/12/14.
//  Copyright © 2015年 Hailong.wang. All rights reserved.
//

#import "HomeBannerTableViewCell.h"
#import <UIImageView+WebCache.h>

@implementation HomeBannerTableViewCell

- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier {
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        self.scrollView = [[UIScrollView alloc] initWithFrame:CGRectMake(0, 0, ScreenWidth, 170)];
//        self.title = [[UILabel alloc] initWithFrame:<#(CGRect)#>]
    }
    return self;
}

- (void)setBannerData:(JSONModelArray *)data {
    if (self.scrollView.subviews.count == 0) {
        
        for (int i = 0; i < data.count; i ++) {
            HomeBannerModel *model = [data objectAtIndex:i];
            UIImageView *image = [[UIImageView alloc] initWithFrame:CGRectMake(i * ScreenWidth, 0, ScreenWidth, 170)];
            [image sd_setImageWithURL:[NSURL URLWithString:model.pic]];
        }
    }
    
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
