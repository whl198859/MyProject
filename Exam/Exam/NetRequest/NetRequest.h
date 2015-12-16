//
//  NetRequest.h
//  Exam
//
//  Created by wanghailong on 15/12/11.
//  Copyright © 2015年 Hailong.wang. All rights reserved.
//

#ifndef NetRequest_h
#define NetRequest_h

//首页
#define kHomePage @"http://api.meilijia.com/app/featured_page3"
//首页collection详情
/*********
 col_id   传入选择的作品的id
 tab        photo
 *********/
#define HomeCollectionDetail @"http://api.meilijia.com/app/collection_page2"
//首页subject详情
/*********
 subject_id   传入选择的subject的id
 *********/
#define HomeSubjectDetail @"http://api.meilijia.com/app/featured_subject?"
//作品列表
/*********
 col_id   传入选择的作品的id
 tab        photo
 *********/
#define WorkList @"http://api.meilijia.com/app/idea_photos?page=%ld&show_styles=1"

#endif /* NetRequest_h */
