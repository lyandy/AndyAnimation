//
//  CALayer+MoveAniamtion.m
//  AndyAnimation_Test
//
//  Created by 李扬 on 16/7/28.
//  Copyright © 2016年 andyli. All rights reserved.
//

#import "CALayer+MoveAniamtion.h"
#import "CALayer+BaseAnimation.h"
#import "AndyAnimationConst.h"

@implementation CALayer (MoveAniamtion)

- (void)andy_addMoveAnimationToPosition:(NSValue *)point
{
    [self andy_addMoveAnimationToPosition:(NSValue *)point completion:nil];
}

- (void)andy_addMoveAnimationToPosition:(NSValue *)point completion:(void (^)(BOOL))completion
{
    [self andy_addMoveAnimationToPosition:point duration:ANDY_ANIMATION_DEFAULT_DURATION completion:completion];
}

- (void)andy_addMoveAnimationToPosition:(NSValue *)point duration:(CGFloat)duration
{
    [self andy_addMoveAnimationToPosition:point duration:duration completion:nil];
}

- (void)andy_addMoveAnimationToPosition:(NSValue *)point duration:(CGFloat)duration completion:(void (^)(BOOL))completion
{
    [self andy_addMoveAnimationToPosition:point duration:ANDY_ANIMATION_DEFAULT_DURATION timingFunction:kCAMediaTimingFunctionLinear forKey:nil completion:completion];
}

- (void)andy_addMoveAnimationToPosition:(NSValue *)point duration:(CGFloat)duration timingFunction:(NSString *)timingFunction forKey:(NSString *)key completion:(void (^)(BOOL finished))completion
{
    [self moveToPosition:point duration:duration timingFunction:timingFunction forKey:key completion:completion];
}

@end
