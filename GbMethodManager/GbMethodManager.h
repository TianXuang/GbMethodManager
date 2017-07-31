//
//  GbMethodManager.h
//  GbMethodManager
//
//  Created by 天轩 on 2017/7/31.
//  Copyright © 2017年 天轩. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface GbMethodManager : NSObject
+(GbMethodManager *)defaultManager;
/**
 字符串保留小数点个数（四舍五入）
 */
+(NSString *)stringNumberToString:(NSString *)startNumber WithDotNumber:(int)dotNum;
@end
