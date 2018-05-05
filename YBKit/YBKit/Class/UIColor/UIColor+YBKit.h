//
//  UIColor+YBKit.h
//  YBKit
//
//  Created by zbwx on 2018/4/9.
//  Copyright © 2018年 zbwx. All rights reserved.
//

#import <UIKit/UIKit.h>
// 颜色RBG
#define RGB(r, g, b) [UIColor colorWithRed:r/255.0 green:g/255.0 blue:b/255.0 alpha:1]
//颜色RBGA
#define RGBA(r, g, b, a) [UIColor colorWithRed:r/255.0 green:g/255.0 blue:b/255.0 alpha:a]


//返回颜色
#define kUIColorFromRGB(rgbValue) [UIColor \
colorWithRed:((float)((rgbValue & 0xFF0000) >> 16))/255.0 \
green:((float)((rgbValue & 0xFF00) >> 8))/255.0 \
blue:((float)(rgbValue & 0xFF))/255.0 alpha:1.0]

@interface UIColor (YBKit)

/**
 *  16进制颜色转RGB
 *
 *  @param hexValue   色值
 *  @param alphaValue 透明度
 *
 *  @return <#return value description#>
 */
+ (UIColor*) colorWithHex:(NSInteger)hexValue alpha:(CGFloat)alphaValue;

/**
 *   16进制颜色转RGB
 *
 *  @param hexValue 色值
 *
 *  @return <#return value description#>
 */
+ (UIColor*) colorWithHex:(NSInteger)hexValue;

/**
 *  RGB转16进制颜色
 *
 *  @param color RGB颜色
 *
 *  @return 16进制颜色字符串
 */
+ (NSString *) hexFromUIColor: (UIColor*) color;

+ (UIColor*)randomColor;

//字符串转颜色
+ (UIColor*)colorWithHexString:(NSString*)stringToConvert;
@end
