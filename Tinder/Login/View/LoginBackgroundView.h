//
//  LoginBackgroundView.h
//  Tinder
//
//  Created by 黄佳玮 on 2020/4/2.
//  Copyright © 2020 黄佳玮. All rights reserved.
//

#import <UIKit/UIKit.h>

//照片点击 代理传值
@protocol RegistImgDelegate <NSObject>

- (void)selectImg;

@end

NS_ASSUME_NONNULL_BEGIN

@interface LoginBackgroundView : UIView
//头像
@property (nonatomic, strong) UIImageView* headImage;
//头像上的提示lable
@property (nonatomic, strong) UILabel * headLable;
//账号输入框
@property (nonatomic, strong) UITextField * nameText;
//邮箱输入框
@property (nonatomic, strong) UITextField * emailText;
//密码输入框
@property (nonatomic, strong) UITextField * passwordText;
//登录按钮
@property (nonatomic, strong) UIButton * loginButton;
//注册按钮
@property (nonatomic, strong) UIButton * regButton;

@property (nonatomic, weak) id<RegistImgDelegate> delegate;

@end

NS_ASSUME_NONNULL_END
