//
//  ContactMode.h
//  私人通信录
//
//  Created by zhanglu1988em on 16/1/11.
//  Copyright © 2016年 wbder. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ContactMode : NSObject

@property (nonatomic,copy) NSString* name;
@property (nonatomic,copy) NSString* phonenum;

+(instancetype) contactModeWithNameAndPhone :(NSString*) name :(NSString*) phone;

@end
