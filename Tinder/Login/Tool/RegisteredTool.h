//
//  RegisteredTool.h
//  Tinder
//
//  Created by 黄佳玮 on 2020/4/3.
//  Copyright © 2020 黄佳玮. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface RegisteredTool : NSObject

/**
 用户姓名, 20位以内中文或字母
 @param text 用户名
 @return YES/NO
 */
+ (BOOL)isVerificationName:(NSString *)text;

/**
 判断是否为邮箱
 @param text 邮箱
 @return YES/NO
 */
+ (BOOL)isVerificationEmail:(NSString *)text;

@end

NS_ASSUME_NONNULL_END
