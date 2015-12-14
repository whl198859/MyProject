//
//  HomeRecommendTableViewCell.m
//  Exam
//
//  Created by wanghailong on 15/12/14.
//  Copyright © 2015年 Hailong.wang. All rights reserved.
//

#import "HomeRecommendTableViewCell.h"
#import <UIButton+WebCache.h>

@implementation HomeRecommendTableViewCell

- (void)setRecommendData:(JSONModelArray *)data {
    if (!data) {
        return;
    }
    self.dataSource = data;
    HomeRecommendModel *first = [self.dataSource objectAtIndex:0];
    HomeRecommendModel *second = [self.dataSource objectAtIndex:1];
    HomeRecommendModel *third = [self.dataSource objectAtIndex:2];
    HomeRecommendModel *four = [self.dataSource objectAtIndex:3];
    [self.firstButton sd_setImageWithURL:[NSURL URLWithString:first.url] forState:UIControlStateNormal];
    [self.secondButton sd_setImageWithURL:[NSURL URLWithString:second.url] forState:UIControlStateNormal];
    [self.thirdButton sd_setImageWithURL:[NSURL URLWithString:third.url] forState:UIControlStateNormal];
    [self.fourButton sd_setImageWithURL:[NSURL URLWithString:four.url] forState:UIControlStateNormal];
}

- (IBAction)firstButtonDidClicked:(id)sender {
    
}

- (IBAction)secondButtonDidClicked:(id)sender {

}

- (IBAction)thirdButtonDidClicked:(id)sender {

}

- (IBAction)fourButtonDidClicked:(id)sender {

}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
