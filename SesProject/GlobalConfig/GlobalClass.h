//
//  GlobalClass.h
//  Ses
//
//  Created by ses on 15/6/18.
//  Copyright (c) 2015年 上海壹嫂网络科技有限公司. All rights reserved.
//

#ifndef Ses_GlobalClass_h
#define Ses_GlobalClass_h

#define UICOLORRGB_(R,G,B) [UIColor colorWithRed:R/255.0 green:G/255.0 blue:B/255.0 alpha:1.0]

#define UISCREEN        [UIScreen mainScreen].bounds
#define UISCREEN_W      [UIScreen mainScreen].bounds.size.width
#define UISCREEN_H      [UIScreen mainScreen].bounds.size.height
#define SELF_VIEW_W     self.view.frame.size.width
#define SELF_VIEW_H     self.view.frame.size.height

#define UIDEVICE        [[[UIDevice currentDevice] systemVersion] floatValue]

//Iphone&Ipad 的键盘高度
//Iphone  横屏
#define IPHONE_LANDSCAPE_KEYBOARD_HEIGHT 140
//Iphone  竖屏
#define IPHONE_PORTRAIT_KEYBOARD_HEIGHT 216
//Ipad  横屏
#define IPAD_LANDSCAPE_KEYBOARD_HEIGHT 352
//Ipad  竖屏
#define IPAD_PORTRAIT_KEYBOARD_HEIGHT 264
//请求超时
#define AFNTIMEOUT 10.0
//服务器地址
#define APP_SERVICE_BASE_URL @""
#endif
