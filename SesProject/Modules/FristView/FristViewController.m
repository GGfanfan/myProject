//
//  FristViewController.m
//  Ses
//
//  Created by ses on 15/7/20.
//  Copyright (c) 2015年 上海壹嫂网络科技有限公司. All rights reserved.
//

#import "FristViewController.h"
#import "GlobalSVP.h"
@interface FristViewController ()

@end

@implementation FristViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
}
- (IBAction)showSVP:(UIButton *)sender {
    [GlobalSVP dataFaile];
    
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
