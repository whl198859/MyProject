//
//  HomeBannerModel.h
//  Exam
//
//  Created by wanghailong on 15/12/11.
//  Copyright © 2015年 Hailong.wang. All rights reserved.
//

#import <JSONModel/JSONModel.h>

@protocol HomeBannerModel <NSObject>

@end

@interface HomeBannerModel : JSONModel

PropertyCopyString(pic);
PropertyCopyString(uri);
PropertyCopyString(title);

@end
