//
//  NSString+YBKit.h
//  YBKit
//
//  Created by zbwx on 2018/4/3.
//  Copyright © 2018年 zbwx. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "NSData+YBKit.h"
#import "UIColor+YBKit.h"
@interface NSString (YBKit)
/**
 *  判断身份证号码是否正确
 *
 *  @return <#return value description#>
 */
-(BOOL)validateIDCardNumber;
/**
 *  判断是否为手机号码
 *
 *  @return <#return value description#>
 */
-(BOOL)validatePhoneNumber;
/**
 *  简单的11位手机号码校验
 *
 *  @return <#return value description#>
 */
-(BOOL)simpleValidatePhone;
/**
 *  判断是否为身份证
 *
 *  @return <#return value description#>
 */
-(BOOL) validateIdentityCard;
/**
 *  判断是否为车牌号
 *
 *  @return <#return value description#>
 */
-(BOOL) validateCarNo;
/**
 *  判断是否为邮箱
 *
 *  @return <#return value description#>
 */
-(BOOL) validateEmail;
/**
 *  字符串去首位空格
 *
 *  @return <#return value description#>
 */
-(NSString*)trim;

/**
 *  SHA1加密
 *
 *  @return <#return value description#>
 */
-(NSString*)sha1;

/**
 *  url编码
 *
 *  @return <#return value description#>
 */
-(NSString*)urlEncode;
/**
 *  url解码
 *
 *  @return <#return value description#>
 */
-(NSString*)urlDecode;
/**
 *  md5
 *
 *  @return <#return value description#>
 */
-(NSString*)md5;


/**
 DES+Base64加密
 
 @param key <#key description#>
 @return <#return value description#>
 */
- (NSString *)desEncryptWithKey:(NSString*)key;

/**
 DES+Base64解密
 
 @param key <#key description#>
 @return <#return value description#>
 */
- (NSString *)desDecryptWithKey:(NSString*)key;

/**
 AES加密
 
 @param key <#key description#>
 @return <#return value description#>
 */
- (NSString *)aesEncryptWitKey:(NSString*)key;

/**
 AES解密
 
 @param key <#key description#>
 @return <#return value description#>
 */
- (NSString *)aesDecryptWitKey:(NSString*)key;

/**
 *  base64编码
 *
 *  @return <#return value description#>
 */
-(NSString*)base64Encoding;
/**
 *  base64解码
 *
 *  @return <#return value description#>
 */
-(NSString*)base64Decodeing;

/**
 *  截取URL中的参数
 *
 *  @return NSMutableDictionary parameters
 */
- (NSMutableDictionary *)getURLParameters;
/**
 将某段字符串处理成带富文本属性的字符串
 
 @param partOfStr 需要将字符串中那些子串进行处理
 @param color 处理成的颜色
 @param font 处理成的字体
 @return <#return value description#>
 */
- (NSMutableAttributedString *)mutableAttributedStringWithPartStr:(NSString *)partOfStr changeToColor:(UIColor *)color font:(UIFont *)font;
- (NSMutableAttributedString *)mutableAttributedStringWithPartStrRange:(NSRange)range changeToColor:(UIColor *)color font:(UIFont *)font;

/**
 *  给字符串增加千位符
 *
 *  @param digitString <#digitString description#>
 *
 *  @return <#return value description#>
 */

+ (NSString *)separatedDigitStringWithStr:(NSString *)digitString;

+ (BOOL)judueIPhonePlatformSupportTouchID;

-(NSString *) returnHourMinutesType;
@end
