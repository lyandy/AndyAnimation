//
//  UIView+MoveAnimation.m
//  AndyAnimation_Test
//
//  Created by Andy on 16/8/2.
//  Copyright © 2016年 andyli. All rights reserved.
//

#import "UIView+MoveAnimation.h"
#import "UIView+BaseAnimation.h"
#import "AndyAnimationConst.h"

@implementation UIView (MoveAnimation)

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
    [self andy_addMoveAnimationToPosition:point duration:duration timingFunction:kCAMediaTimingFunctionLinear forKey:nil completion:completion];
}

- (void)andy_addMoveAnimationToPosition:(NSValue *)point duration:(CGFloat)duration timingFunction:(NSString *)timingFunction forKey:(NSString *)key completion:(void (^)(BOOL finished))completion
{
    [self moveToPosition:point duration:duration timingFunction:timingFunction forKey:key completion:completion];
}


@end
