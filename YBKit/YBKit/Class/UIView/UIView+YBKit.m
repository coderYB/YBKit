//
//  UIView+YBKit.m
//  YBKit
//
//  Created by zbwx on 2018/4/3.
//  Copyright © 2018年 zbwx. All rights reserved.
//

#import "UIView+YBKit.h"
#import "UIColor+YBKit.h"
@implementation UIView (YBKit)
/**
 视图坐标
 */
-(CGPoint)origin{
    return self.frame.origin;
}

/**
 设置origin
 
 @param origin <#origin description#>
 */
-(void)setOrigin:(CGPoint)origin{
    CGRect newframe = self.frame;
    newframe.origin = origin;
    self.frame = newframe;
}

/**
 视图大小
 */
-(CGSize)size{
    return self.frame.size;
}

/**
 设置视图大小
 
 @param size <#size description#>
 */
-(void)setSize:(CGSize)size{
    CGRect newframe = self.frame;
    newframe.size = size;
    self.frame = newframe;
}

/**
 x坐标
 */
-(CGFloat)left{
    return self.frame.origin.x;
}

/**
 设置x坐标
 
 @param left <#left description#>
 */
-(void)setLeft:(CGFloat)left{
    CGRect newframe = self.frame;
    newframe.origin.x = left;
    self.frame = newframe;
}
/**
 y坐标
 */
-(CGFloat)top{
    return self.frame.origin.y;
}

/**
 设置y坐标
 
 @param top <#top description#>
 */
-(void)setTop:(CGFloat)top{
    CGRect newframe = self.frame;
    newframe.origin.y = top;
    self.frame = newframe;
}

/**
 宽度
 */
-(CGFloat)width{
    return self.frame.size.width;
}

/**
 设置宽度
 
 @param width <#width description#>
 */
-(void)setWidth:(CGFloat)width{
    CGRect newframe = self.frame;
    newframe.size.width = width;
    self.frame = newframe;
}

/**
 高度
 */
-(CGFloat)height{
    return self.frame.size.height;
}

/**
 设置高度
 
 @param height <#height description#>
 */
-(void)setHeight:(CGFloat)height{
    CGRect newframe = self.frame;
    newframe.size.height = height;
    self.frame = newframe;
}

/**
 右边x坐标
 */
-(CGFloat)right{
    return self.frame.origin.x + self.frame.size.width;
}

/**
 设置右边x坐标
 
 @param right <#right description#>
 */
-(void)setRight:(CGFloat)right{
    CGRect newframe = self.frame;
    newframe.origin.x = right - newframe.size.width;
    self.frame = newframe;
}

/**
 底部y坐标
 */
-(CGFloat)bottom{
    return self.frame.origin.y + self.frame.size.height;
}

/**
 设置底部y坐标
 
 @param bottom <#bottom description#>
 */
-(void)setBottom:(CGFloat)bottom{
    CGRect newframe = self.frame;
    newframe.origin.y = bottom - newframe.size.height;
    self.frame = newframe;
}

/**
 中心x坐标
 */
-(CGFloat)centerX{
    return self.center.x;
}

/**
 设置中心x坐标
 
 @param centerX <#centerX description#>
 */
-(void)setCenterX:(CGFloat)centerX{
    CGPoint newCenter = self.center;
    newCenter.x = centerX;
    self.center = newCenter;
}

/**
 中心y坐标
 
 @return <#return value description#>
 */
-(CGFloat)centerY{
    return self.center.y;
}

/**
 设置中心y坐标
 
 @param centerY <#centerY description#>
 */
-(void)setCenterY:(CGFloat)centerY{
    CGPoint newCenter = self.center;
    newCenter.y = centerY;
    self.center = newCenter;
}

/**
 *  通过响应者链找到view的viewController
 *
 *  @return <#return value description#>
 */
-(UIViewController *)viewController{
    UIResponder *next = self.nextResponder;
    while (next != nil) {
        if ([next isKindOfClass:[UIViewController class]]) {
            return (UIViewController *)next;
        }
        next = next.nextResponder;
    }
    return nil;
}

/**
 view截图
 
 @return <#return value description#>
 */
- (UIImage *)convertToScreenScaleImage{
    return [self convertToImageWithScale:[UIScreen mainScreen].scale];
}

/**
 view截图
 
 @return <#return value description#>
 */
- (UIImage *)convertToImageWithScale:(CGFloat)scale{
    UIGraphicsBeginImageContextWithOptions(CGSizeMake(self.width, self.height), NO,scale);
    [self.layer renderInContext:UIGraphicsGetCurrentContext()];
    UIImage *image = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    return image;
}

/**
 设置边框
 
 @param width 宽度
 @param color 颜色
 */
- (void)setBorderWidth:(CGFloat)width color:(UIColor *)color{
    self.layer.borderWidth = width;
    self.layer.borderColor = color.CGColor;
}

/**
 设置圆角
 
 @param cornerRadius 度数
 */
- (void)setCornerRadius:(CGFloat)cornerRadius{
    self.layer.shouldRasterize = YES;
    self.layer.rasterizationScale = [UIScreen mainScreen].scale;
    self.layer.cornerRadius = cornerRadius;
    self.layer.masksToBounds = YES;
}
- (CGFloat)x{
    return self.frame.origin.x;
}

- (void)setX:(CGFloat)newX{
    CGRect newFrame = self.frame;
    newFrame.origin.x = newX;
    self.frame = newFrame;
}

- (CGFloat)y{
    return self.frame.origin.y;
}

- (void)setY:(CGFloat)newY{
    CGRect newFrame = self.frame;
    newFrame.origin.y = newY;
    self.frame = newFrame;
}

#pragma mark Middle Point

- (CGPoint)middlePoint{
    return CGPointMake(self.middleX, self.middleY);
}

- (CGFloat)middleX{
    return self.width / 2;
}

- (CGFloat)middleY{
    return self.height / 2;
}


- (void)setBorderWidth:(CGFloat)width andColor:(UIColor *)color{
    self.layer.borderWidth = width;
    self.layer.borderColor = color.CGColor;
}


/**
 *  移动view
 *
 *  @param point     <#point description#>
 *  @param animation <#animation description#>
 */

- (void) moveToPoint:(CGPoint) point animation:(BOOL)animation{
    if (animation) {
        [UIView animateWithDuration:0.25 animations:^{
            self.left = point.x;
            self.top = point.y;
        }];
    }else{
        self.left = point.x;
        self.top = point.y;
    }
}

/**
 ** lineView:       需要绘制成虚线的view
 ** lineLength:     虚线的宽度
 ** lineSpacing:    虚线的间距
 ** lineColor:      虚线的颜色
 **/
+ (void)drawDashLine:(UIView *)lineView lineLength:(int)lineLength lineSpacing:(int)lineSpacing lineColor:(UIColor *)lineColor{
    if(lineColor==nil){
        lineColor = [UIColor colorWithHex:0xe6e6e6];
    }
    CAShapeLayer *shapeLayer = [CAShapeLayer layer];
    [shapeLayer setBounds:lineView.bounds];
    [shapeLayer setPosition:CGPointMake(CGRectGetWidth(lineView.frame) / 2, CGRectGetHeight(lineView.frame))];
    [shapeLayer setFillColor:[UIColor clearColor].CGColor];
    //  设置虚线颜色为blackColor
    [shapeLayer setStrokeColor:lineColor.CGColor];
    //  设置虚线宽度
    [shapeLayer setLineWidth:CGRectGetHeight(lineView.frame)];
    [shapeLayer setLineJoin:kCALineJoinRound];
    //  设置线宽，线间距
    [shapeLayer setLineDashPattern:[NSArray arrayWithObjects:[NSNumber numberWithInt:lineLength], [NSNumber numberWithInt:lineSpacing], nil]];
    //  设置路径
    CGMutablePathRef path = CGPathCreateMutable();
    CGPathMoveToPoint(path, NULL, 0, 0);
    CGPathAddLineToPoint(path, NULL, CGRectGetWidth(lineView.frame), 0);
    [shapeLayer setPath:path];
    CGPathRelease(path);
    //  把绘制好的虚线添加上来
    [lineView.layer addSublayer:shapeLayer];
}

/**
 *  加圆角
 *
 *  @param corner       <#corner description#>
 *  @param cornerRadius <#cornerRadius description#>
 *  @param targetSize   <#targetSize description#>
 */
- (void)zy_addCorner:(UIRectCorner)corner cornerRadius:(CGFloat)cornerRadius size:(CGSize)targetSize {
    CGRect frame = CGRectMake(0, 0, targetSize.width, targetSize.height);
    UIBezierPath *path = [UIBezierPath bezierPathWithRoundedRect:frame
                                               byRoundingCorners:corner
                                                     cornerRadii:CGSizeMake(cornerRadius, cornerRadius)];
    CAShapeLayer *layer = [CAShapeLayer layer];
    layer.frame = frame;
    layer.path = path.CGPath;
    
    self.layer.mask = layer;
}

- (void)zy_addCorner:(UIRectCorner)corner cornerRadius:(CGFloat)cornerRadius {
    [self zy_addCorner:corner cornerRadius:cornerRadius size:self.bounds.size];
}


//弹框动画
- (void) shakeToShow:(UIView*)aView bgView:(UIView*)bgView alpha:(CGFloat)alpha{
    CAKeyframeAnimation* animation = [CAKeyframeAnimation animationWithKeyPath:@"transform"];
    animation.duration = 0.5;
    
    NSMutableArray *values = [NSMutableArray array];
    [values addObject:[NSValue valueWithCATransform3D:CATransform3DMakeScale(0.1, 0.1, 1.0)]];
    [values addObject:[NSValue valueWithCATransform3D:CATransform3DMakeScale(1.2, 1.2, 1.0)]];
    [values addObject:[NSValue valueWithCATransform3D:CATransform3DMakeScale(0.9, 0.9, 1.0)]];
    [values addObject:[NSValue valueWithCATransform3D:CATransform3DMakeScale(1.0, 1.0, 1.0)]];
    animation.values = values;
    [aView.layer addAnimation:animation forKey:nil];
    
    if (bgView!=nil) {
        [UIView animateWithDuration:0.2 animations:^{
            bgView.backgroundColor=[[UIColor blackColor] colorWithAlphaComponent:alpha];
        }];
    }
}
@end
