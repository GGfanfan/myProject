//
//  GlobalSVP.h
//  Ses
//
//  Created by ses on 15/7/20.
//  Copyright (c) 2015年 上海壹嫂网络科技有限公司. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "SVProgressHUD.h"
@interface GlobalSVP : NSObject
//加载
+(void)dataLoadSVPText:(NSString *)text;
//成功
+(void)dataSucess;
//失败
+(void)dataError;
@end
