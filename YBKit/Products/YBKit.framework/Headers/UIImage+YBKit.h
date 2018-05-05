//
//  UIImage+YBKit.h
//  YBKit
//
//  Created by zbwx on 2018/4/3.
//  Copyright © 2018年 zbwx. All rights reserved.
//

#import <UIKit/UIKit.h>
//便捷创建UIImage
#define YBNameImage(name) [UIImage imageNamed:name]
@interface UIImage (YBKit)


/**
 按指定的大小颜色生成图片
 
 @param color <#color description#>
 @param size <#size description#>
 @return <#return value description#>
 */
+(UIImage*)imageWithColor:(UIColor*)color size:(CGSize)size;
/**
 *  生成圆角图片
 *
 *  @param image ····
 *  @param size  ····
 *  @param r     弧度
 *
 *  @return ·····
 */
+ (id)createRoundedRectImage:(UIImage*)image size:(CGSize)size radius:(NSInteger)r;
- (UIImage *)applyLightEffect;
- (UIImage *)applyExtraLightEffect;
- (UIImage *)applyDarkEffect;
- (UIImage *)applyTintEffectWithColor:(UIColor *)tintColor;

- (UIImage *)applyBlurWithRadius:(CGFloat)blurRadius tintColor:(UIColor *)tintColor saturationDeltaFactor:(CGFloat)saturationDeltaFactor maskImage:(UIImage *)maskImage;


/**
 图片合成
 
 @param topImage 上边图片
 @param bottomImage 上边图片
 @param margin 两者间隔
 @return <#return value description#>
 */
+ (UIImage *) combineWithTopImg:(UIImage*)topImage
                      bottomImg:(UIImage*)bottomImage
                     withMargin:(NSInteger)margin
                          scale:(CGFloat)scale;

/**
 <#Description#>
 
 @param topImage    <#topImage description#>
 @param bottomImage <#bottomImage description#>
 @param imageWidth    图片的宽
 @param scale       <#scale description#>
 
 @return <#return value description#>
 */
+ (UIImage *) combineWithTopImg:(UIImage*)topImage
                      bottomImg:(UIImage*)bottomImage
                     ImageWidth:(float)imageWidth
                          scale:(CGFloat)scale;
/**
 截取屏幕某一部分图片
 
 @param frame <#frame description#>
 @return <#return value description#>
 */
+(UIImage *)fullScreenshots:(CGSize)frame;
/**
 *  传入图片放缓一个像素大小的UIImage图片
 *
 *  @param color <#color description#>
 *
 *  @return <#return value description#>
 */
+(UIImage*)imageWithColor:(UIColor*)color;

/**
 压缩图片至目标尺寸
 
 @param sourceImage sourceImage 源图片
 @param targetWidt 图片最终尺寸的宽
 @return 返回按照源图片的宽、高比例压缩至目标宽、高的图片
 */
+(UIImage *)compressImage:(UIImage *)sourceImage toTargetWidth:(CGFloat)targetWidt;

/**
 生成高斯模糊UIImage
 
 @param image 原始图片
 @param blur 0.0~1.0f强度
 @return <#return value description#>
 */
+(UIImage *)blurImage:(UIImage *)image withBlur:(CGFloat)blur;

@end
