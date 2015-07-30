//
//  Singleton.m
//  Ses
//
//  Created by ses on 15/6/19.
//  Copyright (c) 2015年 上海壹嫂网络科技有限公司. All rights reserved.
//

#import "Singleton.h"

static Singleton *singleton=nil;
@implementation Singleton

+(instancetype)sharedInstance{
    @synchronized(self){
        if (singleton==nil) {
            singleton=[[Singleton alloc]init];
        }
    }return singleton;
}

+(id)allocWithZone:(struct _NSZone *)zone{
    @synchronized(self){
        if (singleton==nil) {
            singleton=[super allocWithZone:zone];
            return singleton;
        }
    }return nil;
}

-(id)copyWithZone:(NSZone *)zone{
    return self;
}

+(void)dropSingleton{
    if (singleton!=nil) {
        singleton=nil;
    }
}


@end
