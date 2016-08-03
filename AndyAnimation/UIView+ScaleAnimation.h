//
//  UIView+ScaleAnimation.h
//  AndyAnimation_Test
//
//  Created by Andy on 16/8/2.
//  Copyright © 2016年 andyli. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIView (ScaleAnimation)

- (void)andy_addScaleAnimationToValue:(NSValue *)value;

- (void)andy_addScaleAnimationToValue:(NSValue *)value completion:(void (^)(BOOL finished))completion;

- (void)andy_addScaleAnimationToValue:(NSValue *)value duration:(CGFloat)duration;

- (void)andy_addScaleAnimationToValue:(NSValue *)value duration:(CGFloat)duration completion:(void (^)(BOOL finished))completion;

- (void)andy_addScaleAnimationToValue:(NSValue *)value fromValue:fromValue duration:(CGFloat)duration forKey:(NSString *)key completion:(void (^)(BOOL finished))completion;


@end
