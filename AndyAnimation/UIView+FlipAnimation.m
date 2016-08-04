//
//  UIView+FlipAnimation.m
//  AndyAnimation_Test
//
//  Created by Andy on 16/8/2.
//  Copyright © 2016年 andyli. All rights reserved.
//

#import "UIView+FlipAnimation.h"
#import "UIView+BaseAnimation.h"
#import "UIView+FadeAnimation.h"
#import "AndyAnimationConst.h"
#import <POP/POP.h>

#define FlipSpringSpeed 10
#define FlipSpringBounciness 15

@implementation UIView (FlipAnimation)

- (void)andy_addFlipInXAnimation
{
    [self andy_addFlipInXAnimationWithCompletion:nil];
}

- (void)andy_addFlipInXAnimationWithCompletion:(void (^)(BOOL finished))completion
{
    [self andy_addFlipInXAnimationWithDuration:ANDY_ANIMATION_DEFAULT_DURATION completion:completion];
}

- (void)andy_addFlipInXAnimationWithDuration:(CGFloat)duration
{
    [self andy_addFlipInXAnimationWithDuration:duration completion:nil];
}

- (void)andy_addFlipInXAnimationWithDuration:(CGFloat)duration completion:(void (^)(BOOL finished))completion
{
    [self andy_addFlipInAnimationWithDuration:duration axle:AndyMediaRotateCenterX
                             fromOpacityValue:@1.0 forKey:nil completion:completion];
}


- (void)andy_addFlipInYAnimation
{
    [self andy_addFlipInYAnimationWithCompletion:nil];
}

- (void)andy_addFlipInYAnimationWithCompletion:(void (^)(BOOL finished))completion
{
    [self andy_addFlipInYAnimationWithDuration:ANDY_ANIMATION_DEFAULT_DURATION completion:completion];
}

- (void)andy_addFlipInYAnimationWithDuration:(CGFloat)duration
{
    [self andy_addFlipInYAnimationWithDuration:duration completion:nil];
}

- (void)andy_addFlipInYAnimationWithDuration:(CGFloat)duration completion:(void (^)(BOOL finished))completion
{
    [self andy_addFlipInAnimationWithDuration:duration axle:AndyMediaRotateCenterY fromOpacityValue:@1.0 forKey:nil completion:completion];
}



- (void)andy_addFlipInAnimationWithDuration:(CGFloat)duration axle:(AndyMediaRotateAxle)axle fromOpacityValue:(NSValue *)fromValue forKey:(NSString *)key completion:(void (^)(BOOL finished))completion
{
    [self fadeInAnimationWithDuration:duration fromOpacityValue:fromValue forKey:key completion:nil];
    
    [self rotateToAngle:@0.0 fromAngle:@(M_PI_2) axle:axle duration:duration forKey:key completion:completion];
}




- (void)andy_addFlipOutXAnimation
{
    [self andy_addFlipOutXAnimationWithCompletion:nil];
}

- (void)andy_addFlipOutXAnimationWithCompletion:(void (^)(BOOL finished))completion
{
    [self andy_addFlipOutXAnimationWithDuration:ANDY_ANIMATION_DEFAULT_DURATION completion:completion];
}

- (void)andy_addFlipOutXAnimationWithDuration:(CGFloat)duration
{
    [self andy_addFlipOutXAnimationWithDuration:duration completion:nil];
}

- (void)andy_addFlipOutXAnimationWithDuration:(CGFloat)duration completion:(void (^)(BOOL finished))completion
{
    [self andy_addFlipOutAnimationWithDuration:duration axle:AndyMediaRotateCenterX toOpacityValue:@1.0 forKey:nil completion:completion];
}


- (void)andy_addFlipOutYAnimation
{
    [self andy_addFlipOutYAnimationWithCompletion:nil];
}

- (void)andy_addFlipOutYAnimationWithCompletion:(void (^)(BOOL finished))completion
{
    [self andy_addFlipOutYAnimationWithDuration:ANDY_ANIMATION_DEFAULT_DURATION completion:completion];
}

- (void)andy_addFlipOutYAnimationWithDuration:(CGFloat)duration
{
    [self andy_addFlipOutYAnimationWithDuration:duration completion:nil];
}

- (void)andy_addFlipOutYAnimationWithDuration:(CGFloat)duration completion:(void (^)(BOOL finished))completion
{
    [self andy_addFlipOutAnimationWithDuration:duration axle:AndyMediaRotateCenterY toOpacityValue:@1.0 forKey:nil completion:completion];
}


- (void)andy_addFlipOutAnimationWithDuration:(CGFloat)duration axle:(AndyMediaRotateAxle)axle  toOpacityValue:(NSValue *)fromValue forKey:(NSString *)key completion:(void (^)(BOOL finished))completion
{
    [self fadeOutAnimationWithDuration:duration toOpacityValue:fromValue forKey:key completion:nil];
    
    [self rotateToAngle:@(M_PI_2) fromAngle:@0.0 axle:axle duration:duration forKey:key completion:completion];
}


- (void)andy_addFlipInXSpringAnimation
{
    [self andy_addFlipInXSpringAnimationWithCompletion:nil];
}

- (void)andy_addFlipInXSpringAnimationWithCompletion:(void (^)(BOOL finished))completion
{
    [self andy_addFlipInXSpringAnimationWithSpeed:FlipSpringSpeed completion:completion];
}

- (void)andy_addFlipInXSpringAnimationWithSpeed:(CGFloat)speed
{
    [self andy_addFlipInXSpringAnimationWithSpeed:speed completion:nil];
}

- (void)andy_addFlipInXSpringAnimationWithSpeed:(CGFloat)speed completion:(void (^)(BOOL finished))completion
{
    [self andy_addFlipInSpringAnimationWithSpeed:speed bounciness:FlipSpringBounciness axle:AndyMediaRotateCenterX fromOpacityValue:@1.0 forKey:nil completion:completion];
}

- (void)andy_addFlipInYSpringAnimation
{
    [self andy_addFlipInYSpringAnimationWithCompletion:nil];
}

- (void)andy_addFlipInYSpringAnimationWithCompletion:(void (^)(BOOL finished))completion
{
    [self andy_addFlipInYSpringAnimationWithSpeed:FlipSpringSpeed completion:completion];
}

- (void)andy_addFlipInYSpringAnimationWithSpeed:(CGFloat)speed
{
    [self andy_addFlipInYSpringAnimationWithSpeed:speed completion:nil];
}

- (void)andy_addFlipInYSpringAnimationWithSpeed:(CGFloat)speed completion:(void (^)(BOOL finished))completion
{
    [self andy_addFlipInSpringAnimationWithSpeed:speed bounciness:FlipSpringBounciness axle:AndyMediaRotateCenterY fromOpacityValue:@1.0 forKey:nil completion:completion];
}


- (void)andy_addFlipInSpringAnimationWithSpeed:(CGFloat)speed bounciness:(CGFloat)bounciness axle:(AndyMediaRotateAxle)axle  fromOpacityValue:(NSValue *)fromValue forKey:(NSString *)key completion:(void (^)(BOOL finished))completion
{
    [self fadeInAnimationWithDuration:speed * 0.05  fromOpacityValue:fromValue forKey:key completion:nil];
    [self rotateInSpringToAngle:@0.0 fromAngle:@(M_PI_2) axle:axle speed:speed bounciness:bounciness forKey:key completion:completion];
}


@end
