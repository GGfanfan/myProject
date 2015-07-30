//
//  MyViewController.m
//  Ses
//
//  Created by ses on 15/6/18.
//  Copyright (c) 2015年 上海壹嫂网络科技有限公司. All rights reserved.
//

#import "MyViewController.h"

@interface MyViewController ()<UIActionSheetDelegate,UIImagePickerControllerDelegate>

@end

@implementation MyViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self dataPicker];
    // Do any additional setup after loading the view.
}
-(void)dataPicker{
    DatePicker *datePicker=[[DatePicker alloc]init];
    datePicker.myTime=^(NSString *str){
        NSLog(@"%@",str);
    };
    [self.view addSubview:datePicker];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
-(void)awakeFromNib{
    [self configItemTitle:@"我的" image:[UIImage imageNamed:@"icon_search"] selectedImage:[UIImage imageNamed:@"icon_search"]];
    
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
