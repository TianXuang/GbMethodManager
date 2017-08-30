//
//  UITextField+Extension.h
//  uhuiqRecover
//
//  Created by 天轩 on 2017/8/8.
//  Copyright © 2017年 uhqsh. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UITextField (Extension)
/**
 获取光标的位置
 */
- (NSInteger)curOffset;
/**
 光标的偏移
 */
- (void)makeOffset:(NSInteger)offset;
/**
 将光标置于首部
 */
- (void)makeOffsetFromBeginning:(NSInteger)offset;
@end
