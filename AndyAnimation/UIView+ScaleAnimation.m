//
//  UIView+ScaleAnimation.m
//  AndyAnimation_Test
//
//  Created by Andy on 16/8/2.
//  Copyright © 2016年 andyli. All rights reserved.
//

#import "UIView+ScaleAnimation.h"
#import "UIView+BaseAnimation.h"
#import "AndyAnimationConst.h"

#define ScaleOriganValue [NSValue valueWithCGPoint:CGPointMake(1.0, 1.0)]

@implementation UIView (ScaleAnimation)

- (void)andy_addScaleAnimationToValue:(NSValue *)value
{
    [self andy_addScaleAnimationToValue:(NSValue *)value completion:nil];
}

- (void)andy_addScaleAnimationToValue:(NSValue *)value completion:(void (^)(BOOL finished))completion
{
    [self andy_addScaleAnimationToValue:value duration:ANDY_ANIMATION_DEFAULT_DURATION completion:completion];
}

- (void)andy_addScaleAnimationToValue:(NSValue *)value duration:(CGFloat)duration
{
    [self andy_addScaleAnimationToValue:value duration:duration completion:nil];
}

- (void)andy_addScaleAnimationToValue:(NSValue *)value duration:(CGFloat)duration completion:(void (^)(BOOL finished))completion
{
    [self andy_addScaleAnimationToValue:value fromValue:ScaleOriganValue duration:ANDY_ANIMATION_DEFAULT_DURATION forKey:nil completion:completion];
}

- (void)andy_addScaleAnimationToValue:(NSValue *)value fromValue:fromValue duration:(CGFloat)duration forKey:(NSString *)key completion:(void (^)(BOOL finished))completion
{
    [self scaleToValue:value fromValue:fromValue duration:duration timingFunction:kCAMediaTimingFunctionLinear forKey:key completion:completion];
}


@end
