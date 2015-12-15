//
//  HomeSubjectCell.h
//  Exam
//
//  Created by wanghailong on 15/12/14.
//  Copyright © 2015年 Hailong.wang. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "HomeItemSubjectModel.h"

@interface HomeSubjectCell : UITableViewCell

@property (weak, nonatomic) IBOutlet UILabel *title;
@property (weak, nonatomic) IBOutlet UIImageView *pic;
@property (weak, nonatomic) IBOutlet UILabel *colText;

- (void)setSubjectCellData:(HomeItemSubjectModel *)model;

@end
