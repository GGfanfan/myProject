//
//  DatePicker.h
//  Ses
//
//  Created by ses on 15/7/9.
//  Copyright (c) 2015年 上海壹嫂网络科技有限公司. All rights reserved.
//

#import <UIKit/UIKit.h>


typedef void(^nowTime)(NSString *str);
@interface DatePicker : UIView
@property(nonatomic,strong)nowTime myTime;
@end
