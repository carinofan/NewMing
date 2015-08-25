//
//  HTTPMagager.m
//  NewMing
//
//  Created by Fanming on 15/8/24.
//  Copyright (c) 2015年 FanMing. All rights reserved.
//

#import "HTTPMagager.h"

@implementation HTTPMagager

#pragma mark - AFHttpRequestOperationManager ==> AFHttpRequestOperation
-(AFHTTPRequestOperation *)AFHttpRequestOperationManagerWithPath:(NSString *)urlString
                                               andRequestFormant:(requestFormant)requestformant
                                                  andRequestType:(requestType)requesttype
                                                   andParameters:(NSDictionary *)parameters{
    AFHTTPRequestOperationManager * manager = [AFHTTPRequestOperationManager manager];
    switch (requestformant) {
        case text:{
            manager.responseSerializer.acceptableContentTypes = [NSSet setWithObject:@"text/html"];
            [manager.requestSerializer setValue:@"gzip" forHTTPHeaderField:@"Accept-Encoding"];
        }
            break;
        case json:{
            [manager.requestSerializer setValue:@"gzip" forHTTPHeaderField:@"Accept-Encoding"];
            manager.responseSerializer = [AFJSONResponseSerializer serializer];
        }
            break;
        case xml:{
            [manager.requestSerializer setValue:@"gzip" forHTTPHeaderField:@"Accept-Encoding"];
            manager.responseSerializer = [AFXMLParserResponseSerializer serializer];
        }
            break;
        case downloadZip:{
            manager.responseSerializer.acceptableContentTypes = [NSSet setWithObject:@"application/zip"];
        }
            break;
        default:
            break;
    }
    [manager.requestSerializer setTimeoutInterval:10.0];
    if (self.cookieString.length > 0) {
        [manager.requestSerializer setValue:self.cookieString forHTTPHeaderField:@"cookie"];
        //        NSLog(@"cookieString——————%@",self.cookieString);
    }
    
    
    AFHTTPRequestOperation * operation_Manager;
    switch (requesttype) {
        case get:
        {
            operation_Manager = [manager GET:urlString
                                  parameters:parameters
                                     success:^(AFHTTPRequestOperation * operation, id responseObject){
                                         
                                     } failure:^(AFHTTPRequestOperation * operation, NSError * error){
                                         
                                     }];
        }
            break;
        case post:{
            operation_Manager = [manager POST:urlString parameters:parameters
                                      success:^(AFHTTPRequestOperation * operation, id responseObject){
                                          
                                      } failure:^(AFHTTPRequestOperation * operation, NSError * error){
                                          
                                      }];
        }
            break;
        case head:{
            [manager.requestSerializer setTimeoutInterval:3];
            operation_Manager = [manager HEAD:urlString
                                   parameters:parameters
                                      success:^(AFHTTPRequestOperation *operation) {
                                          
                                      } failure:^(AFHTTPRequestOperation *operation, NSError *error) {
                                          
                                      }];
        }
            break;
            
        default:
            break;
    }
    //设置新请求的网络请求为最高
    [operation_Manager setThreadPriority:NSOperationQueuePriorityVeryHigh];
    return operation_Manager;
}

@end
