//
//  UIView+BounceAnimation.m
//  AndyAnimation_Test
//
//  Created by Andy on 16/8/2.
//  Copyright © 2016年 andyli. All rights reserved.
//

#import "UIView+BounceAnimation.h"
#import "UIView+FadeAnimation.h"
#import "UIView+BaseAnimation.h"
#import "AndyAnimationConst.h"

#define BounceExtraDistance 50
#define BounceSplitRate 0.3

#define MinorDuration(duration) duration * BounceSplitRate
#define MajorDuration(duration) duration * (1 - BounceSplitRate)

#define BounceScaleMaxValue [NSValue valueWithCGPoint:CGPointMake(1.2, 1.2)]
#define BounceScaleMinValue [NSValue valueWithCGPoint:CGPointMake(0.0, 0.0)]
#define BounceOriginValue [NSValue valueWithCGPoint:CGPointMake(1.0, 1.0)]

#define BounceInSpringSpeed 15
#define BounceInSpringBounciness 10

@implementation UIView (BounceAnimation)


- (void)andy_addBounceInAnimation
{
    [self andy_addBounceInAnimationWithCompletion:nil];
}

- (void)andy_addBounceInAnimationWithCompletion:(void (^)(BOOL finished))completion
{
    [self andy_addBounceInAnimationWithDuration:ANDY_ANIMATION_DEFAULT_DURATION completion:completion];
}

- (void)andy_addBounceInAnimationWithDuration:(CGFloat)duration
{
    [self andy_addBounceInAnimationWithDuration:duration completion:nil];
}

- (void)andy_addBounceInAnimationWithDuration:(CGFloat)duration completion:(void (^)(BOOL finished))completion
{
    [self andy_addBounceInAnimationWithDuration:duration forKey:nil completion:completion];
}

- (void)andy_addBounceInAnimationWithDuration:(CGFloat)duration forKey:(NSString *)key completion:(void (^)(BOOL finished))completion
{
    [self andy_addFadeInAnimationWithDuration:duration + BounceSplitRate fromOpacityValue:@(0) forKey:key completion:nil];
    
    [self scaleToValue:BounceScaleMaxValue fromValue:BounceScaleMinValue duration:MinorDuration(duration) timingFunction:kCAMediaTimingFunctionLinear  forKey:key completion:^(BOOL finished) {
        if (finished)
        {
            [self scaleToValue:BounceOriginValue fromValue:BounceScaleMaxValue duration:MajorDuration(duration) timingFunction:kCAMediaTimingFunctionLinear forKey:key completion:completion];
        }
    }];
}



- (void)andy_addBounceOutAnimation
{
    [self andy_addBounceOutAnimationWithCompletion:nil];
}

- (void)andy_addBounceOutAnimationWithCompletion:(void (^)(BOOL finished))completion
{
    [self andy_addBounceOutAnimationWithDuration:ANDY_ANIMATION_DEFAULT_DURATION completion:completion];
}

- (void)andy_addBounceOutAnimationWithDuration:(CGFloat)duration
{
    [self andy_addBounceOutAnimationWithDuration:duration completion:nil];
}

- (void)andy_addBounceOutAnimationWithDuration:(CGFloat)duration completion:(void (^)(BOOL finished))completion
{
    [self andy_addBounceOutAnimationWithDuration:duration forKey:nil completion:completion];
}

- (void)andy_addBounceOutAnimationWithDuration:(CGFloat)duration forKey:(NSString *)key completion:(void (^)(BOOL finished))completion
{
    [self andy_addFadeOutAnimationWithDuration:duration + BounceSplitRate toOpacityValue:@0 forKey:key completion:nil];
    
    [self scaleToValue:BounceScaleMaxValue fromValue:BounceOriginValue duration:MajorDuration(duration) timingFunction:kCAMediaTimingFunctionLinear forKey:key completion:^(BOOL finished) {
        if (finished)
        {
            [self scaleToValue:BounceScaleMinValue fromValue:BounceScaleMaxValue duration:MinorDuration(duration) timingFunction:kCAMediaTimingFunctionLinear forKey:key completion:completion];
        }
    }];
}



- (void)andy_addBounceInDownAnimation
{
    [self andy_addBounceInDownAnimationWithCompletion:nil];
}

- (void)andy_addBounceInDownAnimationWithCompletion:(void (^)(BOOL finished))completion
{
    [self andy_addBounceInDownAnimationWithDistance:ANDY_ANIMATION_DEFAULT_DISTANCE duration:ANDY_ANIMATION_DEFAULT_DURATION completion:completion];
}

- (void)andy_addBounceInDownAnimationWithDistance:(CGFloat)distance duration:(CGFloat)duration
{
    [self andy_addBounceInDownAnimationWithDistance:distance duration:duration completion:nil];
}

- (void)andy_addBounceInDownAnimationWithDistance:(CGFloat)distance duration:(CGFloat)duration completion:(void (^)(BOOL finished))completion
{
    [self andy_addBounceInDownAnimationWithDistance:distance duration:duration forKey:nil completion:completion];
}

- (void)andy_addBounceInDownAnimationWithDistance:(CGFloat)distance duration:(CGFloat)duration forKey:(NSString *)key completion:(void (^)(BOOL finished))completion
{
    if (distance > 0)
    {
        [self andy_addFadeInAnimationWithDuration:duration + BounceSplitRate fromOpacityValue:@0.0 forKey:key completion:nil];
        
        [self translateToDistance:-(distance + BounceExtraDistance) duration:MinorDuration(duration) direction:AndyMediaTranslationVertical isFromCurrentPoint:NO timingFunction:kCAMediaTimingFunctionEaseIn forKey:key completion:^(BOOL finished) {
            [self translateToDistance:BounceExtraDistance duration:MajorDuration(duration) direction:AndyMediaTranslationVertical isFromCurrentPoint:NO timingFunction:kCAMediaTimingFunctionEaseOut forKey:key completion:completion];
        }];
    }
    else if (distance < 0)
    {
        [self andy_addBounceInUpAnimationWithDistance:-distance duration:duration forKey:key completion:completion];
    }
    else
    {
        [self andy_addFadeInAnimationWithDuration:duration + BounceSplitRate fromOpacityValue:@0.0 forKey:key completion:nil];
    }
}


- (void)andy_addBounceInUpAnimation
{
    [self andy_addBounceInUpAnimationWithCompletion:nil];
}

- (void)andy_addBounceInUpAnimationWithCompletion:(void (^)(BOOL finished))completion
{
    [self andy_addBounceInUpAnimationWithDistance:ANDY_ANIMATION_DEFAULT_DISTANCE duration:ANDY_ANIMATION_DEFAULT_DURATION completion:completion];
}

- (void)andy_addBounceInUpAnimationWithDistance:(CGFloat)distance duration:(CGFloat)duration
{
    [self andy_addBounceInUpAnimationWithDistance:distance duration:duration completion:nil];
}

- (void)andy_addBounceInUpAnimationWithDistance:(CGFloat)distance duration:(CGFloat)duration completion:(void (^)(BOOL finished))completion
{
    [self andy_addBounceInUpAnimationWithDistance:distance duration:duration forKey:nil completion:completion];
}

- (void)andy_addBounceInUpAnimationWithDistance:(CGFloat)distance duration:(CGFloat)duration forKey:(NSString *)key completion:(void (^)(BOOL finished))completion
{
    if (distance > 0)
    {
        [self andy_addFadeInAnimationWithDuration:duration + BounceSplitRate fromOpacityValue:@0.0 forKey:key completion:nil];
        
        [self translateToDistance:(distance + BounceExtraDistance) duration:MinorDuration(duration) direction:AndyMediaTranslationVertical isFromCurrentPoint:NO timingFunction:kCAMediaTimingFunctionEaseIn forKey:key completion:^(BOOL finished) {
            [self translateToDistance:-BounceExtraDistance duration:MajorDuration(duration) direction:AndyMediaTranslationVertical isFromCurrentPoint:NO timingFunction:kCAMediaTimingFunctionEaseOut forKey:key completion:completion];
        }];
    }
    else if (distance < 0)
    {
        [self andy_addBounceInDownAnimationWithDistance:-distance duration:duration forKey:key completion:completion];
    }
    else
    {
        [self andy_addFadeInAnimationWithDuration:duration + BounceSplitRate fromOpacityValue:@0.0 forKey:key completion:nil];
    }
}



- (void)andy_addBounceInLeftAnimation
{
    [self andy_addBounceInLeftAnimationWithCompletion:nil];
}

- (void)andy_addBounceInLeftAnimationWithCompletion:(void (^)(BOOL finished))completion
{
    [self andy_addBounceInLeftAnimationWithDistance:ANDY_ANIMATION_DEFAULT_DISTANCE duration:ANDY_ANIMATION_DEFAULT_DURATION completion:completion];
}

- (void)andy_addBounceInLeftAnimationWithDistance:(CGFloat)distance duration:(CGFloat)duration
{
    [self andy_addBounceInLeftAnimationWithDistance:distance duration:duration completion:nil];
}

- (void)andy_addBounceInLeftAnimationWithDistance:(CGFloat)distance duration:(CGFloat)duration completion:(void (^)(BOOL finished))completion
{
    [self andy_addBounceInLeftAnimationWithDistance:distance duration:duration forKey:nil completion:completion];
}

- (void)andy_addBounceInLeftAnimationWithDistance:(CGFloat)distance duration:(CGFloat)duration forKey:(NSString *)key completion:(void (^)(BOOL finished))completion
{
    if (distance > 0)
    {
        [self andy_addFadeInAnimationWithDuration:duration + BounceSplitRate fromOpacityValue:@0.0 forKey:key completion:nil];
        
        [self translateToDistance:-(distance + BounceExtraDistance) duration:MinorDuration(duration) direction:AndyMediaTranslationHorizontal isFromCurrentPoint:NO timingFunction:kCAMediaTimingFunctionEaseIn forKey:key completion:^(BOOL finished) {
            [self translateToDistance:BounceExtraDistance duration:MajorDuration(duration) direction:AndyMediaTranslationHorizontal isFromCurrentPoint:NO timingFunction:kCAMediaTimingFunctionEaseOut forKey:key completion:completion];
        }];
    }
    else if (distance < 0)
    {
        [self andy_addBounceInRightAnimationWithDistance:-distance duration:duration forKey:key completion:completion];
    }
    else
    {
        [self andy_addFadeInAnimationWithDuration:duration + BounceSplitRate fromOpacityValue:@0.0 forKey:key completion:nil];
    }
}


- (void)andy_addBounceInRightAnimation
{
    [self andy_addBounceInRightAnimationWithCompletion:nil];
}

- (void)andy_addBounceInRightAnimationWithCompletion:(void (^)(BOOL finished))completion
{
    [self andy_addBounceInRightAnimationWithDistance:ANDY_ANIMATION_DEFAULT_DISTANCE duration:ANDY_ANIMATION_DEFAULT_DURATION completion:completion];
}

- (void)andy_addBounceInRightAnimationWithDistance:(CGFloat)distance duration:(CGFloat)duration
{
    [self andy_addBounceInRightAnimationWithDistance:distance duration:duration completion:nil];
}

- (void)andy_addBounceInRightAnimationWithDistance:(CGFloat)distance duration:(CGFloat)duration completion:(void (^)(BOOL finished))completion
{
    [self andy_addBounceInRightAnimationWithDistance:distance duration:duration forKey:nil completion:completion];
}

- (void)andy_addBounceInRightAnimationWithDistance:(CGFloat)distance duration:(CGFloat)duration forKey:(NSString *)key completion:(void (^)(BOOL finished))completion
{
    if (distance > 0)
    {
        [self andy_addFadeInAnimationWithDuration:duration + BounceSplitRate fromOpacityValue:@0.0 forKey:key completion:nil];
        
        [self translateToDistance:(distance + BounceExtraDistance) duration:MinorDuration(duration) direction:AndyMediaTranslationHorizontal isFromCurrentPoint:NO timingFunction:kCAMediaTimingFunctionEaseIn forKey:key completion:^(BOOL finished) {
            [self translateToDistance:-BounceExtraDistance duration:MajorDuration(duration) direction:AndyMediaTranslationHorizontal isFromCurrentPoint:NO timingFunction:kCAMediaTimingFunctionEaseOut forKey:key completion:completion];
        }];
    }
    else if (distance < 0)
    {
        [self andy_addBounceInLeftAnimationWithDistance:-distance duration:duration forKey:key completion:completion];
    }
    else
    {
        [self andy_addFadeInAnimationWithDuration:duration + BounceSplitRate fromOpacityValue:@0.0 forKey:key completion:nil];
    }
}

- (void)andy_addBounceInSpringAnimation
{
    [self andy_addBounceInSpringAnimationWithSpeed:BounceInSpringSpeed];
}

- (void)andy_addBounceInSpringAnimationWithCompletion:(void (^)(BOOL finished))completion
{
    [self andy_addBounceInSpringAnimationWithSpeed:BounceInSpringSpeed completion:completion];
}

- (void)andy_addBounceInSpringAnimationWithSpeed:(CGFloat)speed
{
    [self andy_addBounceInSpringAnimationWithSpeed:speed completion:nil];
}

- (void)andy_addBounceInSpringAnimationWithSpeed:(CGFloat)speed completion:(void (^)(BOOL finished))completion
{
    [self andy_addBounceInSpringAnimationSpeed:speed bounciness:BounceInSpringBounciness forKey:nil completion:completion];
}

- (void)andy_addBounceInSpringAnimationSpeed:(CGFloat)speed bounciness:(CGFloat)bounciness forKey:(NSString *)key completion:(void (^)(BOOL finished))completion
{
    [self bounceInSpringWithSpeed:speed bounciness:bounciness forKey:key completion:completion];
}


- (void)andy_addBounceInDownSpringAnimation
{
    [self andy_addBounceInDownSpringAnimationWithCompletion:nil];
}

- (void)andy_addBounceInDownSpringAnimationWithCompletion:(void (^)(BOOL finished))completion
{
    [self andy_addBounceInDownSpringAnimationWithDistance:ANDY_ANIMATION_DEFAULT_DISTANCE speed:BounceInSpringSpeed  completion:completion];
}

- (void)andy_addBounceInDownSpringAnimationWithDistance:(CGFloat)distance speed:(CGFloat)speed
{
    [self andy_addBounceInDownSpringAnimationWithDistance:distance speed:BounceInSpringBounciness completion:nil];
}

- (void)andy_addBounceInDownSpringAnimationWithDistance:(CGFloat)distance speed:(CGFloat)speed completion:(void (^)(BOOL finished))completion
{
    [self andy_addBounceInDownSpringAnimationWithDistance:ANDY_ANIMATION_DEFAULT_DISTANCE speed:BounceInSpringSpeed bounciness:BounceInSpringBounciness forKey:nil completion:completion];
}

- (void)andy_addBounceInDownSpringAnimationWithDistance:(CGFloat)distance speed:(CGFloat)speed bounciness:(CGFloat)bounciness forKey:(NSString *)key completion:(void (^)(BOOL finished))completion
{
    [self andy_addFadeInAnimationWithDuration:(speed * 0.05) fromOpacityValue:@0.0 forKey:key completion:nil];
    
    [self bounceInSpringToDistance:distance speed:speed bounciness:bounciness direction:AndyMediaBounceInSpringVertical forKey:key completion:completion];
}

- (void)andy_addBounceInUpSpringAnimation
{
    [self andy_addBounceInUpSpringAnimationWithCompletion:nil];
}

- (void)andy_addBounceInUpSpringAnimationWithCompletion:(void (^)(BOOL finished))completion
{
    [self andy_addBounceInUpSpringAnimationWithDistance:ANDY_ANIMATION_DEFAULT_DISTANCE speed:BounceInSpringSpeed  completion:completion];
}

- (void)andy_addBounceInUpSpringAnimationWithDistance:(CGFloat)distance speed:(CGFloat)speed
{
    [self andy_addBounceInUpSpringAnimationWithDistance:distance speed:BounceInSpringBounciness completion:nil];
}

- (void)andy_addBounceInUpSpringAnimationWithDistance:(CGFloat)distance speed:(CGFloat)speed completion:(void (^)(BOOL finished))completion
{
    [self andy_addBounceInUpSpringAnimationWithDistance:ANDY_ANIMATION_DEFAULT_DISTANCE speed:BounceInSpringSpeed bounciness:BounceInSpringBounciness forKey:nil completion:completion];
}

- (void)andy_addBounceInUpSpringAnimationWithDistance:(CGFloat)distance speed:(CGFloat)speed bounciness:(CGFloat)bounciness forKey:(NSString *)key completion:(void (^)(BOOL finished))completion
{
    [self andy_addFadeInAnimationWithDuration:(speed * 0.05) fromOpacityValue:@0.0 forKey:key completion:nil];
    
    [self bounceInSpringToDistance:-distance speed:speed bounciness:bounciness direction:AndyMediaBounceInSpringVertical forKey:key completion:completion];
}


- (void)andy_addBounceInLeftSpringAnimation
{
    [self andy_addBounceInLeftSpringAnimationWithCompletion:nil];
}

- (void)andy_addBounceInLeftSpringAnimationWithCompletion:(void (^)(BOOL finished))completion
{
    [self andy_addBounceInLeftSpringAnimationWithDistance:ANDY_ANIMATION_DEFAULT_DISTANCE speed:BounceInSpringSpeed  completion:completion];
}

- (void)andy_addBounceInLeftSpringAnimationWithDistance:(CGFloat)distance speed:(CGFloat)speed
{
    [self andy_addBounceInLeftSpringAnimationWithDistance:distance speed:BounceInSpringBounciness completion:nil];
}

- (void)andy_addBounceInLeftSpringAnimationWithDistance:(CGFloat)distance speed:(CGFloat)speed completion:(void (^)(BOOL finished))completion
{
    [self andy_addBounceInLeftSpringAnimationWithDistance:ANDY_ANIMATION_DEFAULT_DISTANCE speed:BounceInSpringSpeed bounciness:BounceInSpringBounciness forKey:nil completion:completion];
}

- (void)andy_addBounceInLeftSpringAnimationWithDistance:(CGFloat)distance speed:(CGFloat)speed bounciness:(CGFloat)bounciness forKey:(NSString *)key completion:(void (^)(BOOL finished))completion
{
    [self andy_addFadeInAnimationWithDuration:(speed * 0.05) fromOpacityValue:@0.0 forKey:key completion:nil];
    
    [self bounceInSpringToDistance:-distance speed:speed bounciness:bounciness direction:AndyMediaBounceInSpringHorizontal forKey:key completion:completion];
}


- (void)andy_addBounceInRightSpringAnimation
{
    [self andy_addBounceInRightSpringAnimationWithCompletion:nil];
}

- (void)andy_addBounceInRightSpringAnimationWithCompletion:(void (^)(BOOL finished))completion
{
    [self andy_addBounceInRightSpringAnimationWithDistance:ANDY_ANIMATION_DEFAULT_DISTANCE speed:BounceInSpringSpeed  completion:completion];
}

- (void)andy_addBounceInRightSpringAnimationWithDistance:(CGFloat)distance speed:(CGFloat)speed
{
    [self andy_addBounceInRightSpringAnimationWithDistance:distance speed:BounceInSpringBounciness completion:nil];
}

- (void)andy_addBounceInRightSpringAnimationWithDistance:(CGFloat)distance speed:(CGFloat)speed completion:(void (^)(BOOL finished))completion
{
    [self andy_addBounceInRightSpringAnimationWithDistance:ANDY_ANIMATION_DEFAULT_DISTANCE speed:BounceInSpringSpeed bounciness:BounceInSpringBounciness forKey:nil completion:completion];
}

- (void)andy_addBounceInRightSpringAnimationWithDistance:(CGFloat)distance speed:(CGFloat)speed bounciness:(CGFloat)bounciness forKey:(NSString *)key completion:(void (^)(BOOL finished))completion
{
    [self andy_addFadeInAnimationWithDuration:(speed * 0.05) fromOpacityValue:@0.0 forKey:key completion:nil];
    
    [self bounceInSpringToDistance:distance speed:speed bounciness:bounciness direction:AndyMediaBounceInSpringHorizontal forKey:key completion:completion];
}


- (void)andy_addBounceOutUpAnimation
{
    [self andy_addBounceOutUpAnimationWithCompletion:nil];
}

- (void)andy_addBounceOutUpAnimationWithCompletion:(void (^)(BOOL))completion
{
    [self andy_addBounceOutUpAnimationWithDistance:ANDY_ANIMATION_DEFAULT_DISTANCE duration:ANDY_ANIMATION_DEFAULT_DURATION completion:completion];
}

- (void)andy_addBounceOutUpAnimationWithDistance:(CGFloat)distance duration:(CGFloat)duration
{
    [self andy_addBounceOutUpAnimationWithDistance:distance duration:duration completion:nil];
}

- (void)andy_addBounceOutUpAnimationWithDistance:(CGFloat)distance duration:(CGFloat)duration completion:(void (^)(BOOL finished))completion
{
    [self andy_addBounceOutUpAnimationWithDistance:distance duration:duration forKey:nil completion:completion];
}

- (void)andy_addBounceOutUpAnimationWithDistance:(CGFloat)distance duration:(CGFloat)duration forKey:(NSString *)key completion:(void (^)(BOOL finished))completion
{
    if (distance > 0)
    {
        [self andy_addFadeOutAnimationWithDuration:duration + BounceSplitRate toOpacityValue:@0.0 forKey:key completion:nil];
        
        [self translateToDistance:BounceExtraDistance duration:MajorDuration(duration) direction:AndyMediaTranslationVertical isFromCurrentPoint:YES timingFunction:kCAMediaTimingFunctionEaseOut forKey:key completion:^(BOOL finished) {
            [self translateToDistance:-(distance + BounceExtraDistance) duration:MinorDuration(duration) direction:AndyMediaTranslationVertical isFromCurrentPoint:YES timingFunction:kCAMediaTimingFunctionEaseIn forKey:key completion:completion];
        }];
    }
    else if (distance < 0)
    {
        [self andy_addBounceOutDownAnimationWithDistance:-distance duration:duration forKey:key completion:completion];
    }
    else
    {
        [self andy_addFadeOutAnimationWithDuration:duration + BounceSplitRate toOpacityValue:@0.0 forKey:key completion:nil];
    }
}


- (void)andy_addBounceOutDownAnimation
{
    [self andy_addBounceOutDownAnimationWithCompletion:nil];
}

- (void)andy_addBounceOutDownAnimationWithCompletion:(void (^)(BOOL))completion
{
    [self andy_addBounceOutDownAnimationWithDistance:ANDY_ANIMATION_DEFAULT_DISTANCE duration:ANDY_ANIMATION_DEFAULT_DURATION completion:completion];
}

- (void)andy_addBounceOutDownAnimationWithDistance:(CGFloat)distance duration:(CGFloat)duration
{
    [self andy_addBounceOutDownAnimationWithDistance:distance duration:duration completion:nil];
}

- (void)andy_addBounceOutDownAnimationWithDistance:(CGFloat)distance duration:(CGFloat)duration completion:(void (^)(BOOL finished))completion
{
    [self andy_addBounceOutDownAnimationWithDistance:distance duration:duration forKey:nil completion:completion];
}

- (void)andy_addBounceOutDownAnimationWithDistance:(CGFloat)distance duration:(CGFloat)duration forKey:(NSString *)key completion:(void (^)(BOOL finished))completion
{
    if (distance > 0)
    {
        [self andy_addFadeOutAnimationWithDuration:duration + BounceSplitRate toOpacityValue:@0.0 forKey:key completion:nil];
        
        [self translateToDistance:-BounceExtraDistance duration:MajorDuration(duration) direction:AndyMediaTranslationVertical isFromCurrentPoint:YES timingFunction:kCAMediaTimingFunctionEaseOut forKey:key completion:^(BOOL finished) {
            [self translateToDistance:(distance + BounceExtraDistance) duration:MinorDuration(duration) direction:AndyMediaTranslationVertical isFromCurrentPoint:YES timingFunction:kCAMediaTimingFunctionEaseIn forKey:key completion:completion];
        }];
    }
    else if (distance < 0)
    {
        [self andy_addBounceOutUpAnimationWithDistance:-distance duration:duration forKey:key completion:completion];
    }
    else
    {
        [self andy_addFadeOutAnimationWithDuration:duration + BounceSplitRate toOpacityValue:@0.0 forKey:key completion:nil];
    }
    
}


- (void)andy_addBounceOutLeftAnimation
{
    [self andy_addBounceOutLeftAnimationWithCompletion:nil];
}

- (void)andy_addBounceOutLeftAnimationWithCompletion:(void (^)(BOOL))completion
{
    [self andy_addBounceOutLeftAnimationWithDistance:ANDY_ANIMATION_DEFAULT_DISTANCE duration:ANDY_ANIMATION_DEFAULT_DURATION completion:completion];
}

- (void)andy_addBounceOutLeftAnimationWithDistance:(CGFloat)distance duration:(CGFloat)duration
{
    [self andy_addBounceOutLeftAnimationWithDistance:distance duration:duration completion:nil];
}

- (void)andy_addBounceOutLeftAnimationWithDistance:(CGFloat)distance duration:(CGFloat)duration completion:(void (^)(BOOL finished))completion
{
    [self andy_addBounceOutLeftAnimationWithDistance:distance duration:duration forKey:nil completion:completion];
}

- (void)andy_addBounceOutLeftAnimationWithDistance:(CGFloat)distance duration:(CGFloat)duration forKey:(NSString *)key completion:(void (^)(BOOL finished))completion
{
    if (distance > 0)
    {
        [self andy_addFadeOutAnimationWithDuration:duration + BounceSplitRate toOpacityValue:@0.0 forKey:key completion:nil];
        
        [self translateToDistance:BounceExtraDistance duration:MajorDuration(duration) direction:AndyMediaTranslationHorizontal isFromCurrentPoint:YES timingFunction:kCAMediaTimingFunctionEaseOut forKey:key completion:^(BOOL finished) {
            [self translateToDistance:-(distance + BounceExtraDistance) duration:MinorDuration(duration) direction:AndyMediaTranslationHorizontal isFromCurrentPoint:YES timingFunction:kCAMediaTimingFunctionEaseIn forKey:key completion:completion];
        }];
    }
    else if (distance < 0)
    {
        [self andy_addBounceOutRightAnimationWithDistance:-distance duration:duration forKey:key completion:completion];
    }
    else
    {
        [self andy_addFadeOutAnimationWithDuration:duration + BounceSplitRate toOpacityValue:@0.0 forKey:key completion:nil];
    }
    
}


- (void)andy_addBounceOutRightAnimation
{
    [self andy_addBounceOutRightAnimationWithCompletion:nil];
}

- (void)andy_addBounceOutRightAnimationWithCompletion:(void (^)(BOOL))completion
{
    [self andy_addBounceOutRightAnimationWithDistance:ANDY_ANIMATION_DEFAULT_DISTANCE duration:ANDY_ANIMATION_DEFAULT_DURATION completion:completion];
}

- (void)andy_addBounceOutRightAnimationWithDistance:(CGFloat)distance duration:(CGFloat)duration
{
    [self andy_addBounceOutRightAnimationWithDistance:distance duration:duration completion:nil];
}

- (void)andy_addBounceOutRightAnimationWithDistance:(CGFloat)distance duration:(CGFloat)duration completion:(void (^)(BOOL finished))completion
{
    [self andy_addBounceOutRightAnimationWithDistance:distance duration:duration forKey:nil completion:completion];
}

- (void)andy_addBounceOutRightAnimationWithDistance:(CGFloat)distance duration:(CGFloat)duration forKey:(NSString *)key completion:(void (^)(BOOL finished))completion
{
    if (distance > 0)
    {
        [self andy_addFadeOutAnimationWithDuration:duration + BounceSplitRate toOpacityValue:@0.0 forKey:key completion:nil];
        
        [self translateToDistance:-BounceExtraDistance duration:MajorDuration(duration) direction:AndyMediaTranslationHorizontal isFromCurrentPoint:YES timingFunction:kCAMediaTimingFunctionEaseOut forKey:key completion:^(BOOL finished) {
            [self translateToDistance:(distance + BounceExtraDistance) duration:MinorDuration(duration) direction:AndyMediaTranslationHorizontal isFromCurrentPoint:YES timingFunction:kCAMediaTimingFunctionEaseIn forKey:key completion:completion];
        }];
    }
    else if (distance < 0)
    {
        [self andy_addBounceOutLeftAnimationWithDistance:-distance duration:duration forKey:key completion:completion];
    }
    else
    {
        [self andy_addFadeOutAnimationWithDuration:duration + BounceSplitRate toOpacityValue:@0.0 forKey:key completion:nil];
    }
    
}


@end
