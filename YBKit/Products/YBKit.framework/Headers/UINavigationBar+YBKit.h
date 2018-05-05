//
//  UINavigationBar+YBKit.h
//  YBKit
//
//  Created by zbwx on 2018/4/3.
//  Copyright © 2018年 zbwx. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UINavigationBar (YBKit)
//修改导航条透明度
- (void)zy_setBackgroundColor:(UIColor *)backgroundColor;
- (void)zy_setTranslationY:(CGFloat)translationY;
- (void)zy_setElementsAlpha:(CGFloat)alpha;
@end
