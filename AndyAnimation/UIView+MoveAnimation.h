//
//  UIView+MoveAnimation.h
//  AndyAnimation_Test
//
//  Created by Andy on 16/8/2.
//  Copyright © 2016年 andyli. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIView (MoveAnimation)

- (void)andy_addMoveAnimationToPosition:(NSValue *)point;

- (void)andy_addMoveAnimationToPosition:(NSValue *)point completion:(void (^)(BOOL finished))completion;

- (void)andy_addMoveAnimationToPosition:(NSValue *)point duration:(CGFloat)duration;

- (void)andy_addMoveAnimationToPosition:(NSValue *)point duration:(CGFloat)duration completion:(void (^)(BOOL finished))completion;

- (void)andy_addMoveAnimationToPosition:(NSValue *)point duration:(CGFloat)duration timingFunction:(NSString *)timingFunction forKey:(NSString *)key completion:(void (^)(BOOL finished))completion;


@end
