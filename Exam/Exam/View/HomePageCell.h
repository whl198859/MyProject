//
//  HomePageCell.h
//  Exam
//
//  Created by wanghailong on 15/12/14.
//  Copyright © 2015年 Hailong.wang. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "HomeItemPageModel.h"

@interface HomePageCell : UITableViewCell

@property (weak, nonatomic) IBOutlet UILabel *title;
@property (weak, nonatomic) IBOutlet UILabel *descr;
@property (weak, nonatomic) IBOutlet UIImageView *covPic;

- (void)setPageCellData:(HomeItemPageModel *)data;

@end
