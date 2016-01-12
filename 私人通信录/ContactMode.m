//
//  ContactMode.m
//  私人通信录
//
//  Created by zhanglu1988em on 16/1/11.
//  Copyright © 2016年 wbder. All rights reserved.
//

#import "ContactMode.h"

@implementation ContactMode

+(instancetype) contactModeWithNameAndPhone :(NSString*) name :(NSString*) phone
{
    ContactMode *mode = [[ContactMode alloc] init];
    mode.name = name;
    mode.phonenum =phone;
    return mode;
}

@end
