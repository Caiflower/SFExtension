//
//  UIColor+SFExtension.h
//  SFExtension
//
//  Created by 花菜 on 2017/7/26.
//  Copyright © 2017年 chriscaixx. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIColor (SFExtension)
/**
 *  十六进制转颜色
 *
 *  @param hex 进制
 *
 *  @return RGB颜色
 */
+ (UIColor *)sf_colorFromHex:(NSInteger)hex;
/**
 *  十六进制转颜色
 *
 *  @param hex   十六进制数字
 *  @param alpha 透明度
 *
 *  @return RGB颜色
 */
+ (UIColor *)sf_colorFromHex:(NSInteger)hex alpha:(CGFloat)alpha;
+ (UIColor *)sf_colorWithHexString:(NSString *)color;

/**
 生成随机色
 
 @return 随机色
 */
+ (UIColor *)sf_randomColor;

/**
 使用 R / G / B 数值创建颜色
 
 @param red red
 @param green green
 @param blue blue
 @return 颜色
 */
+ (UIColor *)sf_colorWithRed:(uint8_t)red green:(uint8_t)green blue:(uint8_t)blue alpha:(CGFloat)alpha;
@end
