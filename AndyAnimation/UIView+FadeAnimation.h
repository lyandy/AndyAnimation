//
//  UIView+FadeAnimation.h
//  AndyAnimation_Test
//
//  Created by 李扬 on 16/7/28.
//  Copyright © 2016年 andyli. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIView (FadeAnimation)

- (void)andy_addFadeInAnimation;

- (void)andy_addFadeInAnimationWithCompletion:(void (^)(BOOL finished))completion;

- (void)andy_addFadeInAnimationWithDuration:(CGFloat)duration;

- (void)andy_addFadeInAnimationWithDuration:(CGFloat)duration completion:(void (^)(BOOL finished))completion;

- (void)andy_addFadeInAnimationWithDuration:(CGFloat)duration fromOpacityValue:(NSValue *)fromValue forKey:(NSString *)key completion:(void (^)(BOOL finished))completion;



- (void)andy_addFadeOutAnimation;

- (void)andy_addFadeOutAnimationWithCompletion:(void (^)(BOOL finished))completion;

- (void)andy_addFadeOutAnimationWithDuration:(CGFloat)duration;

- (void)andy_addFadeOutAnimationWithDuration:(CGFloat)duration completion:(void (^)(BOOL finished))completion;

- (void)andy_addFadeOutAnimationWithDuration:(CGFloat)duration toOpacityValue:(NSValue *)toValue forKey:(NSString *)key completion:(void (^)(BOOL finished))completion;



- (void)andy_addFadeInDownAnimation;

- (void)andy_addFadeInDownAnimationWithCompletion:(void (^)(BOOL finished))completion;

- (void)andy_addFadeInDownAnimationWithDistance:(CGFloat)distance duration:(CGFloat)duration;

- (void)andy_addFadeInDownAnimationWithDistance:(CGFloat)distance duration:(CGFloat)duration completion:(void (^)(BOOL finished))completion;

- (void)andy_addFadeInDownAnimationWithDistance:(CGFloat)distance duration:(CGFloat)duration timingFunction:(NSString *)timingFunction forKey:(NSString *)key completion:(void (^)(BOOL finished))completion;



- (void)andy_addFadeInUpAnimation;

- (void)andy_addFadeInUpAnimationWithCompletion:(void (^)(BOOL finished))completion;

- (void)andy_addFadeInUpAnimationWithDistance:(CGFloat)distance duration:(CGFloat)duration;

- (void)andy_addFadeInUpAnimationWithDistance:(CGFloat)distance duration:(CGFloat)duration completion:(void (^)(BOOL finished))completion;

- (void)andy_addFadeInUpAnimationWithDistance:(CGFloat)distance duration:(CGFloat)duration timingFunction:(NSString *)timingFunction forKey:(NSString *)key completion:(void (^)(BOOL finished))completion;



- (void)andy_addFadeInLeftAnimation;

- (void)andy_addFadeInLeftAnimationWithCompletion:(void (^)(BOOL finished))completion;

- (void)andy_addFadeInLeftAnimationWithDistance:(CGFloat)distance duration:(CGFloat)duration;

- (void)andy_addFadeInLeftAnimationWithDistance:(CGFloat)distance duration:(CGFloat)duration completion:(void (^)(BOOL finished))completion;

- (void)andy_addFadeInLeftAnimationWithDistance:(CGFloat)distance duration:(CGFloat)duration timingFunction:(NSString *)timingFunction forKey:(NSString *)key completion:(void (^)(BOOL finished))completion;



- (void)andy_addFadeInRightAnimation;

- (void)andy_addFadeInRightAnimationWithCompletion:(void (^)(BOOL finished))completion;

- (void)andy_addFadeInRightAnimationWithDistance:(CGFloat)distance duration:(CGFloat)duration;

- (void)andy_addFadeInRightAnimationWithDistance:(CGFloat)distance duration:(CGFloat)duration completion:(void (^)(BOOL finished))completion;

- (void)andy_addFadeInRightAnimationWithDistance:(CGFloat)distance duration:(CGFloat)duration timingFunction:(NSString *)timingFunction forKey:(NSString *)key completion:(void (^)(BOOL finished))completion;



- (void)andy_addFadeOutDownAnimation;

- (void)andy_addFadeOutDownAnimationWithCompletion:(void (^)(BOOL finished))completion;

- (void)andy_addFadeOutDownAnimationWithDistance:(CGFloat)distance duration:(CGFloat)duration;

- (void)andy_addFadeOutDownAnimationWithDistance:(CGFloat)distance duration:(CGFloat)duration completion:(void (^)(BOOL finished))completion;

- (void)andy_addFadeOutDownAnimationWithDistance:(CGFloat)distance duration:(CGFloat)duration timingFunction:(NSString *)timingFunction forKey:(NSString *)key completion:(void (^)(BOOL finished))completion;



- (void)andy_addFadeOutUpAnimation;

- (void)andy_addFadeOutUpAnimationWithCompletion:(void (^)(BOOL finished))completion;

- (void)andy_addFadeOutUpAnimationWithDistance:(CGFloat)distance duration:(CGFloat)duration;

- (void)andy_addFadeOutUpAnimationWithDistance:(CGFloat)distance duration:(CGFloat)duration completion:(void (^)(BOOL finished))completion;

- (void)andy_addFadeOutUpAnimationWithDistance:(CGFloat)distance duration:(CGFloat)duration timingFunction:(NSString *)timingFunction forKey:(NSString *)key completion:(void (^)(BOOL finished))completion;



- (void)andy_addFadeOutLeftAnimation;

- (void)andy_addFadeOutLeftAnimationWithCompletion:(void (^)(BOOL finished))completion;

- (void)andy_addFadeOutLeftAnimationWithDistance:(CGFloat)distance duration:(CGFloat)duration;

- (void)andy_addFadeOutLeftAnimationWithDistance:(CGFloat)distance duration:(CGFloat)duration completion:(void (^)(BOOL finished))completion;

- (void)andy_addFadeOutLeftAnimationWithDistance:(CGFloat)distance duration:(CGFloat)duration timingFunction:(NSString *)timingFunction forKey:(NSString *)key completion:(void (^)(BOOL finished))completion;



- (void)andy_addFadeOutRightAnimation;

- (void)andy_addFadeOutRightAnimationWithCompletion:(void (^)(BOOL finished))completion;

- (void)andy_addFadeOutRightAnimationWithDistance:(CGFloat)distance duration:(CGFloat)duration;

- (void)andy_addFadeOutRightAnimationWithDistance:(CGFloat)distance duration:(CGFloat)duration completion:(void (^)(BOOL finished))completion;

- (void)andy_addFadeOutRightAnimationWithDistance:(CGFloat)distance duration:(CGFloat)duration timingFunction:(NSString *)timingFunction forKey:(NSString *)key completion:(void (^)(BOOL finished))completion;

@end
