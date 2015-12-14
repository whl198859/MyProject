//
//  HomePageModel.h
//  Exam
//
//  Created by wanghailong on 15/12/11.
//  Copyright © 2015年 Hailong.wang. All rights reserved.
//

#import <JSONModel/JSONModel.h>
#import "HomeBannerModel.h"
#import "HomeRecommendModel.h"
#import "HomeTopModel.h"

@interface HomePageModel : JSONModel

PropertyRetainObject(NSArray <HomeBannerModel>, banner);
PropertyRetainObject(HomeRecommendModel, recommend);
PropertyRetainObject(HomeTopModel, topPhoto);

@end
