//
//  LoginBackgroundView.m
//  Tinder
//
//  Created by 黄佳玮 on 2020/4/2.
//  Copyright © 2020 黄佳玮. All rights reserved.
//

#import "LoginBackgroundView.h"

@implementation LoginBackgroundView


-(instancetype)initWithFrame:(CGRect)frame{
    self = [super initWithFrame:frame];
    if(self){
        [self makeBackgroundView];
    }
    return self;
}

- (UIImageView *)headImage{
    if(!_headImage){
        _headImage = [[UIImageView alloc]init];
        _headImage.backgroundColor = [UIColor whiteColor];
        //设置圆角
        _headImage.layer.masksToBounds = YES;
        _headImage.layer.cornerRadius = 10;
    }
    return _headImage;
}





- (void)makeBackgroundView{
    //渐变器
    CAGradientLayer * gradient = [CAGradientLayer layer];
    gradient.frame = self.bounds;
    gradient.colors = [NSMutableArray arrayWithObjects:(id)[UIColor colorWithRed:250/255.0 green:94/255.0 blue:99/255.0 alpha:1].CGColor,(id)[UIColor colorWithRed:227/255.0 green:40/255.0 blue:117/255.0 alpha:1].CGColor, nil];
    //渐变
    gradient.startPoint = CGPointMake(0, 0);
    gradient.endPoint = CGPointMake(0, 1);
    [self.layer insertSublayer:gradient atIndex:0];

}


- (void)layoutSubviews{

    [super layoutSubviews];


}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
