//
//  UIViewController+SuperView.m
//  Ses
//
//  Created by ses on 15/6/18.
//  Copyright (c) 2015年 上海壹嫂网络科技有限公司. All rights reserved.
//

#import "UIViewController+SuperView.h"

@implementation UIViewController (SuperView)

-(void)configItemTitle:(NSString *)title image:(UIImage *)image selectedImage:(UIImage *)selectedImage{
    UITabBarItem *item=[[UITabBarItem alloc]initWithTitle:title image:[image imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal] selectedImage:[selectedImage imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal]];
    
    [item setTitlePositionAdjustment:UIOffsetMake(0, -2)];
    
    [item setTitleTextAttributes:@{NSForegroundColorAttributeName:UICOLORRGB_(100, 100, 100)} forState:UIControlStateNormal];
    [item setTitleTextAttributes:@{NSForegroundColorAttributeName:UICOLORRGB_(200, 200, 200)} forState:UIControlStateSelected];
    self.tabBarItem=item;
    
}

-(void)navBackBtn{
    UIButton *backBtn=[UIButton buttonWithType:UIButtonTypeSystem];
    [backBtn addTarget:self action:@selector(back:) forControlEvents:UIControlEventTouchUpInside];
    backBtn.frame=CGRectMake(0, 0, 45, 44);
    UIImage *image=[[UIImage imageNamed:@"a"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    [backBtn setImage:image forState:UIControlStateNormal];
    UIBarButtonItem *backItem=[[UIBarButtonItem alloc]initWithCustomView:backBtn];
    UIBarButtonItem *spaceItem=[[UIBarButtonItem alloc]initWithBarButtonSystemItem:UIBarButtonSystemItemFixedSpace target:nil action:nil];
    spaceItem.width=-25;
    
    
    self.navigationItem.leftBarButtonItems=@[spaceItem, backItem];
    
    
}
-(void)back:(UIButton *)button{
    [self.navigationController popViewControllerAnimated:YES];
}

//设置点击空白区域隐藏键盘
- (void)setupForDismissKeyboard {
    NSNotificationCenter *nc = [NSNotificationCenter defaultCenter];
    UITapGestureRecognizer *singleTapGR =
    [[UITapGestureRecognizer alloc] initWithTarget:self
                                            action:@selector(tapAnywhereToDismissKeyboard:)];
    
    __weak UIViewController *weakSelf = self;
    
    NSOperationQueue *mainQuene =[NSOperationQueue mainQueue];
    [nc addObserverForName:UIKeyboardWillShowNotification
                    object:nil
                     queue:mainQuene
                usingBlock:^(NSNotification *note){
                    [weakSelf.view addGestureRecognizer:singleTapGR];
                }];
    [nc addObserverForName:UIKeyboardWillHideNotification
                    object:nil
                     queue:mainQuene
                usingBlock:^(NSNotification *note){
                    [weakSelf.view removeGestureRecognizer:singleTapGR];
                }];
}

- (void)tapAnywhereToDismissKeyboard:(UIGestureRecognizer *)gestureRecognizer {
    //此method会将self.view里所有的subview的first responder都resign掉
    [self.view endEditing:YES];
}

@end
