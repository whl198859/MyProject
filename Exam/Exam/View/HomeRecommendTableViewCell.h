//
//  HomeRecommendTableViewCell.h
//  Exam
//
//  Created by wanghailong on 15/12/14.
//  Copyright © 2015年 Hailong.wang. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "HomeRecommendModel.h"

@interface HomeRecommendTableViewCell : UITableViewCell

@property (nonatomic, strong) JSONModelArray *dataSource;
@property (weak, nonatomic) IBOutlet UIButton *firstButton;
@property (weak, nonatomic) IBOutlet UIButton *secondButton;
@property (weak, nonatomic) IBOutlet UIButton *thirdButton;
@property (weak, nonatomic) IBOutlet UIButton *fourButton;

- (void)setRecommendData:(JSONModelArray *)data;

@end
