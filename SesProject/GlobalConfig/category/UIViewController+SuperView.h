//
//  UIViewController+SuperView.h
//  Ses
//
//  Created by ses on 15/6/18.
//  Copyright (c) 2015年 上海壹嫂网络科技有限公司. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIViewController (SuperView)
//配置TabBarItem
-(void)configItemTitle:(NSString *)title image:(UIImage *)image selectedImage:(UIImage *)selectedImage;
//配置返回按钮
-(void)navBackBtn;
//设置点击空白区域隐藏键盘
-(void)setupForDismissKeyboard;
@end
