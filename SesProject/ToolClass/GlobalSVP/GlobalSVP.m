//
//  GlobalSVP.m
//  Ses
//
//  Created by ses on 15/7/20.
//  Copyright (c) 2015年 上海壹嫂网络科技有限公司. All rights reserved.
//

#import "GlobalSVP.h"

@implementation GlobalSVP
+(void)dataLoadSVPText:(NSString *)text{
    [SVProgressHUD showWithStatus:text maskType:SVProgressHUDMaskTypeClear];
}
+(void)dataSucess{
    [SVProgressHUD showSuccessWithStatus:@"成功" maskType:SVProgressHUDMaskTypeNone];
}
+(void)dataError{
    [SVProgressHUD showErrorWithStatus:@"失败" maskType:SVProgressHUDMaskTypeBlack];
}
@end
