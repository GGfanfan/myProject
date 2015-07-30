//
//  DatePicker.m
//  Ses
//
//  Created by ses on 15/7/9.
//  Copyright (c) 2015年 上海壹嫂网络科技有限公司. All rights reserved.
//

#import "DatePicker.h"

@implementation DatePicker

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

-(instancetype)initWithFrame:(CGRect)frame{
//    if (self==[super initWithFrame:frame]) {
//        [self initView];
//    
//    }
    [self initView];
    return self;
}
-(void)initView{
    self.frame=CGRectMake(0, [UIScreen mainScreen].bounds.size.height-340, [UIScreen mainScreen].bounds.size.width, 340);
    self.backgroundColor=[UIColor redColor];
    UIDatePicker *picker=[[UIDatePicker alloc]initWithFrame:CGRectMake(0, 0, self.frame.size.width, self.frame.size.height)];
    picker.datePickerMode=UIDatePickerModeDateAndTime;
    picker.timeZone=[NSTimeZone timeZoneWithName:@"GTM+8"];
    picker.locale=[NSLocale localeWithLocaleIdentifier:@"zh_CN"];
    NSDate  *date=picker.date;
    NSDateFormatter *formatter=[[NSDateFormatter alloc]init];
    [formatter setDateFormat:@"yyyy-MM-dd HH:mm:ss"];
    NSString *time=[formatter stringFromDate:date];
    
    NSDate *nowData=[[NSDate alloc]init];
    picker.date=nowData;
    [self addSubview:picker];
    UIButton *button=[UIButton buttonWithType:UIButtonTypeSystem];
    button.frame=CGRectMake(0, 0, 100, 100);
    button.backgroundColor=[UIColor blackColor];
    [button addTarget:self action:@selector(gogo) forControlEvents:UIControlEventTouchUpInside];
    [self addSubview:button];
}
-(void)gogo{
    if (self.myTime) {
        self.myTime(@"block");
    }
}


@end
