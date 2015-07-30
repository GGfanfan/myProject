//
//  AFNServers.m
//  Ses
//
//  Created by ses on 15/7/20.
//  Copyright (c) 2015年 上海壹嫂网络科技有限公司. All rights reserved.
//

#import "AFNServers.h"

@implementation AFNServers
//get请求
+(AFHTTPRequestOperation *)getWithURL:(NSString *)url params:(NSMutableDictionary *)params httpMethod:(NSString *)httpMethod block:(Completion)block{
    //处理请求网址
    NSString *strUrl=[self getUrlOfMethod:url];
    //处理参数
    NSMutableDictionary *infoDic=[self handlerParams:params];
    //创建管理对象
    AFHTTPRequestOperationManager *manager=[AFHTTPRequestOperationManager manager];
    //设置请求超时时间
    manager.requestSerializer.timeoutInterval=AFNTIMEOUT;
    //设置请求类型
    manager.responseSerializer=[AFJSONResponseSerializer serializer];
    //设置可以请求的数据格式
    manager.responseSerializer.acceptableContentTypes=[NSSet setWithObjects:@"text/html",@"text/plain", nil];
    [manager GET:strUrl parameters:infoDic success:^(AFHTTPRequestOperation *operation, id responseObject) {
        block(responseObject);
    } failure:^(AFHTTPRequestOperation *operation, NSError *error) {
        NSLog(@"请求失败");
    }];
    AFHTTPRequestOperation *operation=nil;
    return operation;
}
//post请求
+(AFHTTPRequestOperation *)postWithURL:(NSString *)url params:(NSMutableDictionary *)params httpMethod:(NSString *)httpMethod block:(Completion)block{
    //处理请求网址
    NSString *strUrl=[self getUrlOfMethod:url];
    //处理参数
    NSMutableDictionary *infoDic=[self handlerParams:params];
    //创建管理对象
    AFHTTPRequestOperationManager *manager=[AFHTTPRequestOperationManager manager];
    //设置请求超时时间
    manager.requestSerializer.timeoutInterval=AFNTIMEOUT;
    //设置请求类型
    manager.responseSerializer=[AFJSONResponseSerializer serializer];
    //设置可以请求的数据格式
    manager.responseSerializer.acceptableContentTypes=[NSSet setWithObjects:@"text/html",@"text/plain", nil];
    [manager POST:strUrl parameters:infoDic success:^(AFHTTPRequestOperation *operation, id responseObject) {
        block(responseObject);
    } failure:^(AFHTTPRequestOperation *operation, NSError *error) {
        NSLog(@"请求失败");
    }];
     AFHTTPRequestOperation *operation=nil;
    return operation;
}

//处理地址
+(NSString *)getUrlOfMethod:(NSString *)httpMethod
{
    NSString *str=[NSString stringWithFormat:@"%@%@",@"http:",httpMethod];
    return str;
    
}
//处理字典参数
+(NSMutableDictionary *)handlerParams:(NSMutableDictionary *)params{
    //将字典转化为data
    NSData *data=[NSJSONSerialization dataWithJSONObject:params options:NSJSONWritingPrettyPrinted error:nil];
    //将data转化为字符串
    NSString *str=[[NSString alloc]initWithData:data encoding:NSUTF8StringEncoding];
    //移除
    [params removeAllObjects];
    //插入
    [params setObject:str forKey:@"data"];
    return params;
}

@end
