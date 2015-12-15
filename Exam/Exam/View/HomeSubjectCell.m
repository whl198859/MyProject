//
//  HomeSubjectCell.m
//  Exam
//
//  Created by wanghailong on 15/12/14.
//  Copyright © 2015年 Hailong.wang. All rights reserved.
//

#import "HomeSubjectCell.h"
#import <UIImageView+WebCache.h>

@implementation HomeSubjectCell

- (void)setSubjectCellData:(HomeItemSubjectModel *)model {
    self.title.text = [model.count stringByAppendingString:model.countText];
    self.title.shadowOffset = CGSizeMake(0.5, 0.5);
    self.title.shadowColor = BlackColor;
    self.colText.text = model.title;
    [self.pic sd_setImageWithURL:[NSURL URLWithString:model.pic]];
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
