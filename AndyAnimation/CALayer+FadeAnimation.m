//
//  CALayer+FadeAnimation.m
//  AndyAnimation_Test
//
//  Created by 李扬 on 16/7/28.
//  Copyright © 2016年 andyli. All rights reserved.
//

#import "CALayer+FadeAnimation.h"
#import "CALayer+BaseAnimation.h"
#import "AndyAnimationConst.h"

@implementation CALayer (FadeAnimation)

- (void)andy_addFadeInAnimation
{
    [self andy_addFadeInAnimationWithCompletion:nil];
}

- (void)andy_addFadeInAnimationWithCompletion:(void (^)(BOOL))completion
{
    [self andy_addFadeInAnimationWithDuration:ANDY_ANIMATION_DEFAULT_DURATION completion:(void (^)(BOOL))completion];
}

- (void)andy_addFadeInAnimationWithDuration:(CGFloat)duration
{
    [self andy_addFadeInAnimationWithDuration:duration completion:nil];
}

- (void)andy_addFadeInAnimationWithDuration:(CGFloat)duration completion:(void (^)(BOOL))completion
{
    [self andy_addFadeInAnimationWithDuration:duration fromOpacityValue:@0.0 forKey:nil completion:completion];
}

- (void)andy_addFadeInAnimationWithDuration:(CGFloat)duration fromOpacityValue:(NSValue *)fromValue forKey:(NSString *)key completion:(void (^)(BOOL))completion
{
    [self fadeInAnimationWithDuration:duration fromOpacityValue:fromValue forKey:key completion:completion];
}



- (void)andy_addFadeOutAnimation
{
    [self andy_addFadeOutAnimationWithCompletion:nil];
}

- (void)andy_addFadeOutAnimationWithCompletion:(void (^)(BOOL)) completion
{
    [self andy_addFadeOutAnimationWithDuration:ANDY_ANIMATION_DEFAULT_DURATION completion:completion];
}

- (void)andy_addFadeOutAnimationWithDuration:(CGFloat)duration
{
    [self andy_addFadeOutAnimationWithDuration:duration completion:nil];
}

- (void)andy_addFadeOutAnimationWithDuration:(CGFloat)duration completion:(void (^)(BOOL)) completion
{
    [self andy_addFadeOutAnimationWithDuration:duration toOpacityValue:@0.0 forKey:nil completion:completion];
}

- (void)andy_addFadeOutAnimationWithDuration:(CGFloat)duration toOpacityValue:(NSValue *)toValue forKey:(NSString *)key completion:(void (^)(BOOL finished)) completion
{
    [self fadeOutAnimationWithDuration:duration toOpacityValue:toValue forKey:key completion:completion];
}



- (void)andy_addFadeInDownAnimation
{
    [self andy_addFadeInDownAnimationWithCompletion:nil];
}

- (void)andy_addFadeInDownAnimationWithCompletion:(void (^)(BOOL finished)) completion
{
    [self andy_addFadeInDownAnimationWithDistance:ANDY_ANIMATION_DEFAULT_DISTANCE duration:ANDY_ANIMATION_DEFAULT_DURATION completion:completion];
}

- (void)andy_addFadeInDownAnimationWithDistance:(CGFloat)distance duration:(CGFloat)duration
{
    [self andy_addFadeInDownAnimationWithDistance:distance duration:duration completion:nil];
}

- (void)andy_addFadeInDownAnimationWithDistance:(CGFloat)distance duration:(CGFloat)duration completion:(void (^)(BOOL finished)) completion
{
    [self andy_addFadeInDownAnimationWithDistance:distance duration:duration timingFunction:kCAMediaTimingFunctionLinear forKey:nil completion:completion];
}

- (void)andy_addFadeInDownAnimationWithDistance:(CGFloat)distance duration:(CGFloat)duration timingFunction:(NSString *)timingFunction forKey:(NSString *)key completion:(void (^)(BOOL finished)) completion
{
    [self andy_addFadeInAnimationWithDuration:duration fromOpacityValue:@0.0 forKey:key completion:nil];
    [self translateToDistance:-distance duration:duration direction:AndyMediaTranslationVertical isFromCurrentPoint:NO timingFunction:timingFunction forKey:key completion:completion];
}

- (void)andy_addFadeInUpAnimation
{
    [self andy_addFadeInUpAnimationWithCompletion:nil];
}

- (void)andy_addFadeInUpAnimationWithCompletion:(void (^)(BOOL finished)) completion
{
    [self andy_addFadeInUpAnimationWithDistance:ANDY_ANIMATION_DEFAULT_DISTANCE duration:ANDY_ANIMATION_DEFAULT_DURATION completion:completion];
}

- (void)andy_addFadeInUpAnimationWithDistance:(CGFloat)distance duration:(CGFloat)duration
{
    [self andy_addFadeInUpAnimationWithDistance:distance duration:duration completion:nil];
}

- (void)andy_addFadeInUpAnimationWithDistance:(CGFloat)distance duration:(CGFloat)duration completion:(void (^)(BOOL finished)) completion
{
    [self andy_addFadeInUpAnimationWithDistance:distance duration:duration timingFunction:kCAMediaTimingFunctionLinear forKey:nil completion:completion];
}

- (void)andy_addFadeInUpAnimationWithDistance:(CGFloat)distance duration:(CGFloat)duration timingFunction:(NSString *)timingFunction forKey:(NSString *)key completion:(void (^)(BOOL finished)) completion
{
    [self andy_addFadeInAnimationWithDuration:duration fromOpacityValue:@0.0 forKey:key completion:nil];
    [self translateToDistance:distance duration:duration direction:AndyMediaTranslationVertical isFromCurrentPoint:NO timingFunction:timingFunction forKey:key completion:completion];
}


- (void)andy_addFadeInLeftAnimation
{
    [self andy_addFadeInLeftAnimationWithCompletion:nil];
}

- (void)andy_addFadeInLeftAnimationWithCompletion:(void (^)(BOOL finished)) completion
{
    [self andy_addFadeInLeftAnimationWithDistance:ANDY_ANIMATION_DEFAULT_DISTANCE duration:ANDY_ANIMATION_DEFAULT_DURATION completion:completion];
}

- (void)andy_addFadeInLeftAnimationWithDistance:(CGFloat)distance duration:(CGFloat)duration
{
    [self andy_addFadeInLeftAnimationWithDistance:distance duration:duration completion:nil];
}

- (void)andy_addFadeInLeftAnimationWithDistance:(CGFloat)distance duration:(CGFloat)duration completion:(void (^)(BOOL finished)) completion
{
    [self andy_addFadeInLeftAnimationWithDistance:distance duration:duration timingFunction:kCAMediaTimingFunctionLinear forKey:nil completion:completion];
}

- (void)andy_addFadeInLeftAnimationWithDistance:(CGFloat)distance duration:(CGFloat)duration timingFunction:(NSString *)timingFunction forKey:(NSString *)key completion:(void (^)(BOOL finished)) completion
{
    [self andy_addFadeInAnimationWithDuration:duration fromOpacityValue:@0.0 forKey:key completion:nil];
    [self translateToDistance:-distance duration:duration direction:AndyMediaTranslationHorizontal isFromCurrentPoint:NO timingFunction:timingFunction forKey:key completion:completion];
}


- (void)andy_addFadeInRightAnimation
{
    [self andy_addFadeInRightAnimationWithCompletion:nil];
}

- (void)andy_addFadeInRightAnimationWithCompletion:(void (^)(BOOL finished)) completion
{
    [self andy_addFadeInRightAnimationWithDistance:ANDY_ANIMATION_DEFAULT_DISTANCE duration:ANDY_ANIMATION_DEFAULT_DURATION completion:completion];
}

- (void)andy_addFadeInRightAnimationWithDistance:(CGFloat)distance duration:(CGFloat)duration
{
    [self andy_addFadeInRightAnimationWithDistance:distance duration:duration completion:nil];
}

- (void)andy_addFadeInRightAnimationWithDistance:(CGFloat)distance duration:(CGFloat)duration completion:(void (^)(BOOL finished)) completion
{
    [self andy_addFadeInRightAnimationWithDistance:distance duration:duration timingFunction:kCAMediaTimingFunctionLinear forKey:nil completion:completion];
}

- (void)andy_addFadeInRightAnimationWithDistance:(CGFloat)distance duration:(CGFloat)duration timingFunction:(NSString *)timingFunction forKey:(NSString *)key completion:(void (^)(BOOL finished)) completion
{
    [self andy_addFadeInAnimationWithDuration:duration fromOpacityValue:@0.0 forKey:key completion:nil];
    [self translateToDistance:distance duration:duration direction:AndyMediaTranslationHorizontal isFromCurrentPoint:NO timingFunction:timingFunction forKey:key completion:completion];
}


- (void)andy_addFadeOutDownAnimation
{
    [self andy_addFadeOutDownAnimationWithCompletion:nil];
}

- (void)andy_addFadeOutDownAnimationWithCompletion:(void (^)(BOOL finished)) completion
{
    [self andy_addFadeOutDownAnimationWithDistance:ANDY_ANIMATION_DEFAULT_DISTANCE duration:ANDY_ANIMATION_DEFAULT_DURATION completion:completion];
}

- (void)andy_addFadeOutDownAnimationWithDistance:(CGFloat)distance duration:(CGFloat)duration
{
    [self andy_addFadeOutDownAnimationWithDistance:distance duration:duration completion:nil];
}

- (void)andy_addFadeOutDownAnimationWithDistance:(CGFloat)distance duration:(CGFloat)duration completion:(void (^)(BOOL finished)) completion
{
    [self andy_addFadeOutDownAnimationWithDistance:distance duration:duration timingFunction:kCAMediaTimingFunctionLinear forKey:nil completion:completion];
}

- (void)andy_addFadeOutDownAnimationWithDistance:(CGFloat)distance duration:(CGFloat)duration timingFunction:(NSString *)timingFunction forKey:(NSString *)key completion:(void (^)(BOOL finished)) completion
{
    [self andy_addFadeOutAnimationWithDuration:duration toOpacityValue:@0.0 forKey:key completion:nil];
    [self translateToDistance:distance duration:duration direction:AndyMediaTranslationVertical isFromCurrentPoint:YES timingFunction:timingFunction forKey:key completion:completion];
}


- (void)andy_addFadeOutUpAnimation
{
    [self andy_addFadeOutUpAnimationWithCompletion:nil];
}

- (void)andy_addFadeOutUpAnimationWithCompletion:(void (^)(BOOL finished)) completion
{
    [self andy_addFadeOutUpAnimationWithDistance:ANDY_ANIMATION_DEFAULT_DISTANCE duration:ANDY_ANIMATION_DEFAULT_DURATION completion:completion];
}

- (void)andy_addFadeOutUpAnimationWithDistance:(CGFloat)distance duration:(CGFloat)duration
{
    [self andy_addFadeOutUpAnimationWithDistance:distance duration:duration completion:nil];
}

- (void)andy_addFadeOutUpAnimationWithDistance:(CGFloat)distance duration:(CGFloat)duration completion:(void (^)(BOOL finished)) completion
{
    [self andy_addFadeOutUpAnimationWithDistance:distance duration:duration timingFunction:kCAMediaTimingFunctionLinear forKey:nil completion:completion];
}

- (void)andy_addFadeOutUpAnimationWithDistance:(CGFloat)distance duration:(CGFloat)duration timingFunction:(NSString *)timingFunction forKey:(NSString *)key completion:(void (^)(BOOL finished)) completion
{
    [self andy_addFadeOutAnimationWithDuration:duration toOpacityValue:@0.0 forKey:key completion:nil];
    [self translateToDistance:-distance duration:duration direction:AndyMediaTranslationVertical isFromCurrentPoint:YES timingFunction:timingFunction forKey:key completion:completion];
}



- (void)andy_addFadeOutLeftAnimation
{
    [self andy_addFadeOutLeftAnimationWithCompletion:nil];
}

- (void)andy_addFadeOutLeftAnimationWithCompletion:(void (^)(BOOL finished)) completion
{
    [self andy_addFadeOutLeftAnimationWithDistance:ANDY_ANIMATION_DEFAULT_DISTANCE duration:ANDY_ANIMATION_DEFAULT_DURATION completion:completion];
}

- (void)andy_addFadeOutLeftAnimationWithDistance:(CGFloat)distance duration:(CGFloat)duration
{
    [self andy_addFadeOutLeftAnimationWithDistance:distance duration:duration completion:nil];
}

- (void)andy_addFadeOutLeftAnimationWithDistance:(CGFloat)distance duration:(CGFloat)duration completion:(void (^)(BOOL finished)) completion
{
    [self andy_addFadeOutLeftAnimationWithDistance:distance duration:duration timingFunction:kCAMediaTimingFunctionLinear forKey:nil completion:completion];
}

- (void)andy_addFadeOutLeftAnimationWithDistance:(CGFloat)distance duration:(CGFloat)duration timingFunction:(NSString *)timingFunction forKey:(NSString *)key completion:(void (^)(BOOL finished)) completion
{
    [self andy_addFadeOutAnimationWithDuration:duration toOpacityValue:@0.0 forKey:key completion:nil];
    [self translateToDistance:-distance duration:duration direction:AndyMediaTranslationHorizontal isFromCurrentPoint:YES timingFunction:timingFunction forKey:key completion:completion];
}


- (void)andy_addFadeOutRightAnimation
{
    [self andy_addFadeOutRightAnimationWithCompletion:nil];
}

- (void)andy_addFadeOutRightAnimationWithCompletion:(void (^)(BOOL finished)) completion
{
    [self andy_addFadeOutRightAnimationWithDistance:ANDY_ANIMATION_DEFAULT_DISTANCE duration:ANDY_ANIMATION_DEFAULT_DURATION completion:completion];
}

- (void)andy_addFadeOutRightAnimationWithDistance:(CGFloat)distance duration:(CGFloat)duration
{
    [self andy_addFadeOutRightAnimationWithDistance:distance duration:duration completion:nil];
}

- (void)andy_addFadeOutRightAnimationWithDistance:(CGFloat)distance duration:(CGFloat)duration completion:(void (^)(BOOL finished)) completion
{
    [self andy_addFadeOutRightAnimationWithDistance:distance duration:duration timingFunction:kCAMediaTimingFunctionLinear forKey:nil completion:completion];
}

- (void)andy_addFadeOutRightAnimationWithDistance:(CGFloat)distance duration:(CGFloat)duration timingFunction:(NSString *)timingFunction forKey:(NSString *)key completion:(void (^)(BOOL finished)) completion
{
    [self andy_addFadeOutAnimationWithDuration:duration toOpacityValue:@0.0 forKey:key completion:nil];
    [self translateToDistance:distance duration:duration direction:AndyMediaTranslationHorizontal isFromCurrentPoint:YES timingFunction:timingFunction forKey:key completion:completion];
}


















@end
