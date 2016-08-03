//
//  CALayer+MoveAniamtion.h
//  AndyAnimation_Test
//
//  Created by 李扬 on 16/7/28.
//  Copyright © 2016年 andyli. All rights reserved.
//

@interface CALayer (MoveAniamtion)

- (void)andy_addMoveAnimationToPosition:(NSValue *)point;

- (void)andy_addMoveAnimationToPosition:(NSValue *)point completion:(void (^)(BOOL finished))completion;

- (void)andy_addMoveAnimationToPosition:(NSValue *)point duration:(CGFloat)duration;

- (void)andy_addMoveAnimationToPosition:(NSValue *)point duration:(CGFloat)duration completion:(void (^)(BOOL finished))completion;

- (void)andy_addMoveAnimationToPosition:(NSValue *)point duration:(CGFloat)duration timingFunction:(NSString *)timingFunction forKey:(NSString *)key completion:(void (^)(BOOL finished))completion;

@end
