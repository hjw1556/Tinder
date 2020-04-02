//
//  LoginBackgroundView.h
//  Tinder
//
//  Created by 黄佳玮 on 2020/4/2.
//  Copyright © 2020 黄佳玮. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface LoginBackgroundView : UIView
//头像
@property (nonatomic, strong) UIImageView* headImage;
//账号输入框
@property (nonatomic, strong) UITextField * nameText;
//邮箱输入框
@property (nonatomic, strong) UITextField * emailText;
//密码输入框
@property (nonatomic, strong) UITextField * passwordText;
//登录按钮
@property (nonatomic, strong) UIButton * loginButton;

@end

NS_ASSUME_NONNULL_END
