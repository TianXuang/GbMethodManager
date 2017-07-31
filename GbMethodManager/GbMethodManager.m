//
//  GbMethodManager.m
//  GbMethodManager
//
//  Created by 天轩 on 2017/7/31.
//  Copyright © 2017年 天轩. All rights reserved.
//

#import "GbMethodManager.h"

static GbMethodManager *manager;
@implementation GbMethodManager
+(GbMethodManager *)defaultManager
{
    static dispatch_once_t token;
    dispatch_once(&token, ^{
        if (!manager) {
            manager=[[GbMethodManager alloc]init];
        }
    });
    return manager;
}
+(NSString *)stringNumberToString:(NSString *)startNumber WithDotNumber:(int)dotNum
{
    if (!dotNum) {
        dotNum=2;
    }
    NSNumberFormatter *formatter = [[NSNumberFormatter alloc] init];
    formatter.numberStyle = NSNumberFormatterDecimalStyle;
    formatter.maximumFractionDigits = dotNum;//最多保留几位小数，就是几
    formatter.groupingSeparator = @"";
    return [formatter stringFromNumber:[formatter numberFromString:startNumber]];
}
@end
