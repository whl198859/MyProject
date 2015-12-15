//
//  HomeCollectionCell.m
//  Exam
//
//  Created by wanghailong on 15/12/14.
//  Copyright © 2015年 Hailong.wang. All rights reserved.
//

#import "HomeCollectionCell.h"
#import <UIImageView+WebCache.h>

@implementation HomeCollectionCell

- (void)setCollectionCellData:(HomeItemCollectionModel *)data {
    self.title.text = data.title;
    [self.covImage sd_setImageWithURL:[NSURL URLWithString:data.pic]];
    [self.authorFace sd_setImageWithURL:[NSURL URLWithString:data.authorFace]];
    self.authorFace.layer.masksToBounds = YES;
    self.authorFace.layer.cornerRadius = 25.f;
    self.nickName.text = data.authorNickname;
    self.subtitle.text = data.subtitle;
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
