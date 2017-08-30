//
//  UIView+cornerRadius.m
//  GbMethodManager
//
//  Created by 天轩 on 2017/8/2.
//  Copyright © 2017年 天轩. All rights reserved.
//

#import "UIView+cornerRadius.h"

@implementation UIView (cornerRadius)
-(void)cutViewForCornerRadiusSize:(CGFloat)size
{
    UIBezierPath *maskPath = [UIBezierPath bezierPathWithRoundedRect:self.bounds byRoundingCorners:UIRectCornerAllCorners cornerRadii:CGSizeMake(size, 0)];
    
    CAShapeLayer *maskLayer = [[CAShapeLayer alloc]init];
    //设置大小
    maskLayer.frame = self.bounds;
    //设置图形样子
    maskLayer.path = maskPath.CGPath;
    self.layer.mask = maskLayer;
}
@end
