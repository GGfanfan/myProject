//
//  BaseTabBarViewController.m
//  Ses
//
//  Created by ses on 15/6/18.
//  Copyright (c) 2015年 上海壹嫂网络科技有限公司. All rights reserved.
//

#import "BaseTabBarViewController.h"
#import "MyViewController.h"
#import "OneViewController.h"
@interface BaseTabBarViewController ()

@end

@implementation BaseTabBarViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    id My=[[UIStoryboard storyboardWithName:@"My" bundle:nil] instantiateInitialViewController];
    id One=[[UIStoryboard storyboardWithName:@"One" bundle:nil]instantiateInitialViewController];
    
    self.viewControllers=@[One,My];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
