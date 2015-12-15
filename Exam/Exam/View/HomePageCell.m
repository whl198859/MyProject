//
//  HomePageCell.m
//  Exam
//
//  Created by wanghailong on 15/12/14.
//  Copyright © 2015年 Hailong.wang. All rights reserved.
//

#import "HomePageCell.h"
#import <UIImageView+WebCache.h>

@implementation HomePageCell

- (void)setPageCellData:(HomeItemPageModel *)data {
    self.title.text = data.title;
    self.title.shadowColor = BlackColor;
    self.title.shadowOffset = CGSizeMake(0.5, 0.5);
    [self.covPic sd_setImageWithURL:[NSURL URLWithString:data.pic]];
    self.descr.text = data.descr;
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
