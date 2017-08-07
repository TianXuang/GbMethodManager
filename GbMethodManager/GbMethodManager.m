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
+(NSArray*)spitArrayByNumber:(NSInteger)nums ToSpitArray:(NSArray *)DataArray{
    NSInteger count= DataArray.count;//数组元素个数
    NSInteger max= nums;//几个分割一次
    NSInteger segment= count / max + (count % max== 0 ? 0 : 1);//需要分割几次
    NSMutableArray *NewDataArray=[[NSMutableArray alloc]init];
    for (int i= 0;i<segment; i++){
        NSUInteger star= i*max; //开始位置
        NSUInteger end= (i==(segment-1))?(count-i*max)%(max+1):max; //结束位置
//        NSLog(@"%lu,%lu",(unsigned long)star,(unsigned long)end);
        NSRange range= NSMakeRange(star,end); //分割范围
        NSArray *subArray= [DataArray subarrayWithRange:range];//开始抽取
//        NSLog(@"===%@",subArray);
        [NewDataArray addObject:subArray];
    }
    return NewDataArray;
}
@end
