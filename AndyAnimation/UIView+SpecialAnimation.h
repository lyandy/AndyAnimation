//
//  UIView+SpecialAnimation.h
//  AndyAnimation_Test
//
//  Created by Andy on 16/8/2.
//  Copyright © 2016年 andyli. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIView (SpecialAnimation)

- (void)andy_addFlashAnimation;

- (void)andy_addFlashAnimationWithForever:(BOOL)isForever;

- (void)andy_addFlashAnimationWithCompletion:(void (^)(BOOL finished))completion;

- (void)andy_addFlashAnimationWithKey:(NSString *)key isForever:(BOOL)isForever completion:(void (^)(BOOL finished))completion;


- (void)andy_addHingeAnimation;

- (void)andy_addHingeAnimationWithKey:(NSString *)key completion:(void (^)(BOOL finished))completion;


- (void)andy_addShakeAnimation;

- (void)andy_addShakeAnimationWithKey:(NSString *)key completion:(void (^)(BOOL finished))completion;


- (void)andy_addSwingAnimation;

- (void)andy_addSwingAnimationWithKey:(NSString *)key completion:(void (^)(BOOL finished))completion;


- (void)andy_addPulseAnimation;

- (void)andy_addPulseAnimationWithKey:(NSString *)key completion:(void (^)(BOOL finished))completion;


- (void)andy_addTadaAnimation;

- (void)andy_addTadaAnimationWithForever:(BOOL)isForever;

- (void)andy_addTadaAnimationWithCompletion:(void (^)(BOOL finished))completion;

- (void)andy_addTadaAnimationWithKey:(NSString *)key isForever:(BOOL)isForever completion:(void (^)(BOOL finished))completion;


@end
