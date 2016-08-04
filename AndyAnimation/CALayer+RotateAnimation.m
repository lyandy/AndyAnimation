//
//  CALayer+RotateAnimation.m
//  AndyAnimation_Test
//
//  Created by 李扬 on 16/8/1.
//  Copyright © 2016年 andyli. All rights reserved.
//

#import "CALayer+RotateAnimation.h"
#import "CALayer+BaseAnimation.h"
#import "AndyAnimationConst.h"
#import <POP/POP.h>

@implementation CALayer (RotateAnimation)

- (void)andy_addRotateAnimationToAngle:(NSValue *)angel
{
    [self andy_addRotateAnimationToAngle:(NSValue *)angel completion:nil];
}

- (void)andy_addRotateAnimationToAngle:(NSValue *)angel completion:(void (^)(BOOL finished))completion
{
    [self andy_addRotateAnimationToAngle:angel duration:ANDY_ANIMATION_DEFAULT_DURATION completion:completion];
}

- (void)andy_addRotateAnimationToAngle:(NSValue *)angel duration:(CGFloat)duration
{
    [self andy_addRotateAnimationToAngle:angel duration:duration completion:nil];
}

- (void)andy_addRotateAnimationToAngle:(NSValue *)angel duration:(CGFloat)duration completion:(void (^)(BOOL finished))completion
{
    [self andy_addRotateAnimationToAngle:angel duration:duration forKey:nil completion:completion];
}

- (void)andy_addRotateAnimationToAngle:(NSValue *)angel duration:(CGFloat)duration forKey:(NSString *)key completion:(void (^)(BOOL finished))completion
{
    [self rotateToAngle:angel fromAngle:@0.0 rotateAxle:AndyMediaRotateXY duration:duration forKey:key completion:completion];
}

@end
