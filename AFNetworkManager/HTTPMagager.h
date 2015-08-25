//
//  HTTPMagager.h
//  NewMing
//
//  Created by Fanming on 15/8/24.
//  Copyright (c) 2015年 FanMing. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "AFNetworking.h"

//网络请求格式
typedef enum {
    post,
    get,
    head,
}requestType;

//网络请求返回数据格式
typedef enum{
    text,
    json,
    xml,
    downloadZip,
} requestFormant;

@interface HTTPMagager : NSObject

@property (nonatomic, strong)NSString * cookieString;

/**
 *  使用AFNetHTTPRequestOperationManager进行网络数据请求
 *
 *  @param urlString      接口Url
 *  @param requestformant 请求返回类型 支持xml json text zip等格式
 *  @param requesttype    请求方式get post head等
 *  @param parameters     提交参数
 *
 *  @return 返回AFHTTPRequestOperation 可通过setCompletionBlockWithSuccess..failure...获取网络请求回执
 */
-(AFHTTPRequestOperation *)AFHttpRequestOperationManagerWithPath:(NSString *)urlString
                                               andRequestFormant:(requestFormant)requestformant
                                                  andRequestType:(requestType)requesttype
                                                   andParameters:(NSDictionary *)parameters;


@end
