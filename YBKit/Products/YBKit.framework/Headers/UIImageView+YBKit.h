//
//  UIImageView+YBKit.h
//  YBKit
//
//  Created by zbwx on 2018/4/3.
//  Copyright © 2018年 zbwx. All rights reserved.
//

#import <UIKit/UIKit.h>
typedef void(^LBBlurredImageCompletionBlock)(void);

extern CGFloat const kLBBlurredImageDefaultBlurRadius;
@interface UIImageView (YBKit)

#pragma mark - 毛玻璃效果

/**
 Set the blurred version of the provided image to the UIImageView

 @param image <#image description#>
 @param blurRadius <#blurRadius description#>
 @param completion <#completion description#>
 */
- (void)setImageToBlur:(UIImage *)image
            blurRadius:(CGFloat)blurRadius
       completionBlock:(LBBlurredImageCompletionBlock)completion;

/**
 Set the blurred version of the provided image to the UIImageView
 with the default blur radius

 @param image <#image description#>
 @param completion <#completion description#>
 */
- (void)setImageToBlur:(UIImage *)image
       completionBlock:(LBBlurredImageCompletionBlock)completion;
@end
