//
//  Singleton.h
//  Ses
//
//  Created by ses on 15/6/19.
//  Copyright (c) 2015年 上海壹嫂网络科技有限公司. All rights reserved.
//

#import <Foundation/Foundation.h>
//单例
@interface Singleton : NSObject
+(instancetype)sharedInstance;

+(void)dropSingleton;
@end
