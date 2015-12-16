//
//  CollectionPhotoModel.h
//  Exam
//
//  Created by wanghailong on 15/12/16.
//  Copyright © 2015年 Hailong.wang. All rights reserved.
//

#import <JSONModel/JSONModel.h>

@interface CollectionPhotoModel : JSONModel

@property (nonatomic, copy) NSString *pic;
@property (nonatomic, copy) NSString *originPic;

@end
