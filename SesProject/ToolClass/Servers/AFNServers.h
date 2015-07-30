//
//  AFNServers.h
//  Ses
//
//  Created by ses on 15/7/20.
//  Copyright (c) 2015年 上海壹嫂网络科技有限公司. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "AFNetworking.h"
typedef void (^Completion)(id responseObject);
@interface AFNServers : NSObject
//get请求
+(AFHTTPRequestOperation *)getWithURL:(NSString *)url
                               params:(NSMutableDictionary *)params
                           httpMethod:(NSString *)httpMethod
                                block:(Completion)block;
//post请求
+(AFHTTPRequestOperation *)postWithURL:(NSString *)url
                               params:(NSMutableDictionary *)params
                           httpMethod:(NSString *)httpMethod
                                block:(Completion)block;

//处理url
+(NSString *)getUrlOfMethod:(NSString *)httpMethod;

//处理字典参数
+(NSMutableDictionary *)handlerParams:(NSMutableDictionary *)params;
@end
