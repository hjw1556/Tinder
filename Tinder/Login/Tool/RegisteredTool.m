//
//  RegisteredTool.m
//  Tinder
//
//  Created by 黄佳玮 on 2020/4/3.
//  Copyright © 2020 黄佳玮. All rights reserved.
//

#import "RegisteredTool.h"

@implementation RegisteredTool

+ (BOOL)isVerificationName:(NSString *)text{
    NSString *nameRegex = @"^[a-zA-Z\u4E00-\u9FA5]{1,20}";
    NSPredicate * pred = [NSPredicate predicateWithFormat:@"SELF MATCHES %@",nameRegex];
    return [pred evaluateWithObject:text];
}

+ (BOOL)isVerificationEmail:(NSString *)text{
    NSString *emailRegex = @"[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,4}";
    NSPredicate * pred = [NSPredicate predicateWithFormat:@"SELF MATCHES%@",emailRegex];
    return [pred evaluateWithObject:text];
}

@end
