//
//  UIView+SpecialAnimation.m
//  AndyAnimation_Test
//
//  Created by Andy on 16/8/2.
//  Copyright © 2016年 andyli. All rights reserved.
//

#import "UIView+SpecialAnimation.h"
#import "UIView+BaseAnimation.h"
#import "CALayer+SpecialAnimation.h"
#import "AndyAnimationConst.h"

@implementation UIView (SpecialAnimation)

- (void)andy_addFlashAnimation
{
    [self andy_addFlashAnimationWithForever:NO];
}

- (void)andy_addFlashAnimationWithForever:(BOOL)isForever
{
    [self andy_addFlashAnimationWithKey:nil isForever:isForever completion:nil];
}

- (void)andy_addFlashAnimationWithCompletion:(void (^)(BOOL finished))completion
{
    [self andy_addFlashAnimationWithKey:nil isForever:NO completion:completion];
}

- (void)andy_addFlashAnimationWithKey:(NSString *)key isForever:(BOOL)isForever completion:(void (^)(BOOL finished))completion
{
    CGFloat duration = ANDY_ANIMATION_DEFAULT_DURATION / 2;
    
    [self fadeOutAnimationWithDuration:duration toOpacityValue:@0.0 forKey:key completion:^(BOOL finished) {
        if (finished)
        {
            [self fadeInAnimationWithDuration:duration fromOpacityValue:@0.0 forKey:key completion:^(BOOL finished) {
                if (finished)
                {
                    [self fadeOutAnimationWithDuration:duration toOpacityValue:@0.0 forKey:key completion:^(BOOL finished) {
                        if (finished)
                        {
                            [self fadeInAnimationWithDuration:duration fromOpacityValue:@0.0 forKey:key completion:^(BOOL finished) {
                                if (finished)
                                {
                                    if (isForever)
                                    {
                                        [self andy_addFlashAnimationWithKey:key isForever:YES completion:completion];
                                    }
                                    else
                                    {
                                        if (completion != nil)
                                        {
                                            completion(finished);
                                        }
                                    }
                                }
                            }];
                        }
                    }];
                }
            }];
        }
    }];
}


- (void)andy_addHingeAnimation
{
    [self andy_addHingeAnimationWithKey:nil completion:nil];
}

- (void)andy_addHingeAnimationWithKey:(NSString *)key completion:(void (^)(BOOL finished))completion
{
    [self.layer andy_addHingeAnimationWithKey:key completion:^(BOOL finished) {
        if (finished)
        {
            [self removeFromSuperview];
            
            if (completion != nil)
            {
                completion(finished);
            }
        }
    }];
}


- (void)andy_addShakeAnimation
{
    [self andy_addShakeAnimationWithKey:nil completion:nil];
}

- (void)andy_addShakeAnimationWithKey:(NSString *)key completion:(void (^)(BOOL finished))completion
{
    [self.layer andy_addShakeAnimationWithKey:key completion:completion];
}

- (void)andy_addSwingAnimation
{
    [self andy_addSwingAnimationWithKey:nil completion:nil];
}

- (void)andy_addSwingAnimationWithKey:(NSString *)key completion:(void (^)(BOOL finished))completion
{
    [self.layer andy_addSwingAnimationWithKey:key completion:completion];
}


- (void)andy_addPulseAnimation
{
    [self andy_addPulseAnimationWithKey:nil completion:nil];
}

- (void)andy_addPulseAnimationWithKey:(NSString *)key completion:(void (^)(BOOL finished))completion
{
    NSValue *scaleMaxValue = [NSValue valueWithCGPoint:CGPointMake(1.5, 1.5)];
    NSValue *scaleOriginValue = [NSValue valueWithCGPoint:CGPointMake(1.0, 1.0)];
    CGFloat duration = ANDY_ANIMATION_DEFAULT_DURATION / 2;
    
    [self scaleToValue:scaleMaxValue fromValue:scaleOriginValue duration:duration timingFunction:kCAMediaTimingFunctionEaseOut forKey:key completion:^(BOOL finished) {
        if(finished)
        {
            [self scaleToValue:scaleOriginValue fromValue:scaleMaxValue duration:duration timingFunction:kCAMediaTimingFunctionEaseOut forKey:key completion:^(BOOL finished) {
                if (finished)
                {
                    if (completion != nil)
                    {
                        completion(finished);
                    }
                }
            }];
        }
    }];
}


- (void)andy_addTadaAnimation
{
    [self andy_addTadaAnimationWithForever:NO];
}

- (void)andy_addTadaAnimationWithForever:(BOOL)isForever
{
    [self andy_addTadaAnimationWithKey:nil isForever:isForever completion:nil];
}

- (void)andy_addTadaAnimationWithCompletion:(void (^)(BOOL finished))completion
{
    [self andy_addTadaAnimationWithKey:nil isForever:NO completion:completion];
}

- (void)andy_addTadaAnimationWithKey:(NSString *)key isForever:(BOOL)isForever completion:(void (^)(BOOL finished))completion
{
    [self.layer andy_addTadaAnimationWithKey:key isForever:isForever completion:completion];
}


@end
