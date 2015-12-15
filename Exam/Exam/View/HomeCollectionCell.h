//
//  HomeCollectionCell.h
//  Exam
//
//  Created by wanghailong on 15/12/14.
//  Copyright © 2015年 Hailong.wang. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "HomeItemCollectionModel.h"

@interface HomeCollectionCell : UITableViewCell {
    UIBezierPath *_bezier;
}

@property (nonatomic, strong) HomeItemCollectionModel *model;
@property (weak, nonatomic) IBOutlet UILabel *title;
@property (weak, nonatomic) IBOutlet UIImageView *covImage;
@property (weak, nonatomic) IBOutlet UIImageView *authorFace;
@property (weak, nonatomic) IBOutlet UILabel *nickName;
@property (weak, nonatomic) IBOutlet UILabel *subtitle;

- (void)setCollectionCellData:(HomeItemCollectionModel *)data;

@end
