//
//  UIScrollView+YBKit.m
//  YBKit
//
//  Created by zbwx on 2018/4/3.
//  Copyright © 2018年 zbwx. All rights reserved.
//

#import "UIScrollView+YBKit.h"
#import "UIView+YBKit.h"
@implementation UIScrollView (YBKit)

/**
 *  根据视图尺寸获取视图截屏（一屏无法显示完整）,适用于UIScrollView UITableviewView UICollectionView UIWebView
 *
 *  @return UIImage 截取的图片
 */
- (UIImage *)scrollViewCutterWithScale:(CGFloat)sacale{
    //保存
    CGPoint savedContentOffset = self.contentOffset;
    CGRect savedFrame = self.frame;
    
    self.contentOffset = CGPointZero;
    self.frame = CGRectMake(0, 0, self.contentSize.width, self.contentSize.height);
    
    UIImage *image = [self convertToImageWithScale:sacale];
    
    //还原数据
    self.contentOffset = savedContentOffset;
    self.frame = savedFrame;
    return image;
}

@end
