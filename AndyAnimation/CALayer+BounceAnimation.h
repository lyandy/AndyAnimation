//
//  CALayer+BounceAnimation.h
//  AndyAnimation_Test
//
//  Created by 李扬 on 16/8/1.
//  Copyright © 2016年 andyli. All rights reserved.
//

@interface CALayer (BounceAnimation)

- (void)andy_addBounceInAnimation;

- (void)andy_addBounceInAnimationWithCompletion:(void (^)(BOOL finished))completion;

- (void)andy_addBounceInAnimationWithDuration:(CGFloat)duration;

- (void)andy_addBounceInAnimationWithDuration:(CGFloat)duration completion:(void (^)(BOOL finished))completion;

- (void)andy_addBounceInAnimationWithDuration:(CGFloat)duration forKey:(NSString *)key completion:(void (^)(BOOL finished))completion;



- (void)andy_addBounceOutAnimation;

- (void)andy_addBounceOutAnimationWithCompletion:(void (^)(BOOL finished))completion;

- (void)andy_addBounceOutAnimationWithDuration:(CGFloat)duration;

- (void)andy_addBounceOutAnimationWithDuration:(CGFloat)duration completion:(void (^)(BOOL finished))completion;

- (void)andy_addBounceOutAnimationWithDuration:(CGFloat)duration forKey:(NSString *)key completion:(void (^)(BOOL finished))completion;


- (void)andy_addBounceInDownAnimation;

- (void)andy_addBounceInDownAnimationWithCompletion:(void (^)(BOOL finished))completion;

- (void)andy_addBounceInDownAnimationWithDistance:(CGFloat)distance duration:(CGFloat)duration;

- (void)andy_addBounceInDownAnimationWithDistance:(CGFloat)distance duration:(CGFloat)duration completion:(void (^)(BOOL finished))completion;

- (void)andy_addBounceInDownAnimationWithDistance:(CGFloat)distance duration:(CGFloat)duration forKey:(NSString *)key completion:(void (^)(BOOL finished))completion;


- (void)andy_addBounceInUpAnimation;

- (void)andy_addBounceInUpAnimationWithCompletion:(void (^)(BOOL finished))completion;

- (void)andy_addBounceInUpAnimationWithDistance:(CGFloat)distance duration:(CGFloat)duration;

- (void)andy_addBounceInUpAnimationWithDistance:(CGFloat)distance duration:(CGFloat)duration completion:(void (^)(BOOL finished))completion;

- (void)andy_addBounceInUpAnimationWithDistance:(CGFloat)distance duration:(CGFloat)duration forKey:(NSString *)key completion:(void (^)(BOOL finished))completion;


- (void)andy_addBounceInLeftAnimation;

- (void)andy_addBounceInLeftAnimationWithCompletion:(void (^)(BOOL finished))completion;

- (void)andy_addBounceInLeftAnimationWithDistance:(CGFloat)distance duration:(CGFloat)duration;

- (void)andy_addBounceInLeftAnimationWithDistance:(CGFloat)distance duration:(CGFloat)duration completion:(void (^)(BOOL finished))completion;

- (void)andy_addBounceInLeftAnimationWithDistance:(CGFloat)distance duration:(CGFloat)duration forKey:(NSString *)key completion:(void (^)(BOOL finished))completion;


- (void)andy_addBounceInRightAnimation;

- (void)andy_addBounceInRightAnimationWithCompletion:(void (^)(BOOL finished))completion;

- (void)andy_addBounceInRightAnimationWithDistance:(CGFloat)distance duration:(CGFloat)duration;

- (void)andy_addBounceInRightAnimationWithDistance:(CGFloat)distance duration:(CGFloat)duration completion:(void (^)(BOOL finished))completion;

- (void)andy_addBounceInRightAnimationWithDistance:(CGFloat)distance duration:(CGFloat)duration forKey:(NSString *)key completion:(void (^)(BOOL finished))completion;


- (void)andy_addBounceInSpringAnimation;

- (void)andy_addBounceInSpringAnimationWithCompletion:(void (^)(BOOL finished))completion;

- (void)andy_addBounceInSpringAnimationWithSpeed:(CGFloat)speed;

- (void)andy_addBounceInSpringAnimationWithSpeed:(CGFloat)speed completion:(void (^)(BOOL finished))completion;

- (void)andy_addBounceInSpringAnimationSpeed:(CGFloat)speed bounciness:(CGFloat)bounciness forKey:(NSString *)key completion:(void (^)(BOOL finished))completion;


- (void)andy_addBounceInDownSpringAnimation;

- (void)andy_addBounceInDownSpringAnimationWithCompletion:(void (^)(BOOL finished))completion;

- (void)andy_addBounceInDownSpringAnimationWithDistance:(CGFloat)distance speed:(CGFloat)speed;

- (void)andy_addBounceInDownSpringAnimationWithDistance:(CGFloat)distance speed:(CGFloat)speed completion:(void (^)(BOOL finished))completion;

- (void)andy_addBounceInDownSpringAnimationWithDistance:(CGFloat)distance speed:(CGFloat)speed bounciness:(CGFloat)bounciness forKey:(NSString *)key completion:(void (^)(BOOL finished))completion;


- (void)andy_addBounceInUpSpringAnimation;

- (void)andy_addBounceInUpSpringAnimationWithCompletion:(void (^)(BOOL finished))completion;

- (void)andy_addBounceInUpSpringAnimationWithDistance:(CGFloat)distance speed:(CGFloat)speed;

- (void)andy_addBounceInUpSpringAnimationWithDistance:(CGFloat)distance speed:(CGFloat)speed completion:(void (^)(BOOL finished))completion;

- (void)andy_addBounceInUpSpringAnimationWithDistance:(CGFloat)distance speed:(CGFloat)speed bounciness:(CGFloat)bounciness forKey:(NSString *)key completion:(void (^)(BOOL finished))completion;


- (void)andy_addBounceInLeftSpringAnimation;

- (void)andy_addBounceInLeftSpringAnimationWithCompletion:(void (^)(BOOL finished))completion;

- (void)andy_addBounceInLeftSpringAnimationWithDistance:(CGFloat)distance speed:(CGFloat)speed;

- (void)andy_addBounceInLeftSpringAnimationWithDistance:(CGFloat)distance speed:(CGFloat)speed completion:(void (^)(BOOL finished))completion;

- (void)andy_addBounceInLeftSpringAnimationWithDistance:(CGFloat)distance speed:(CGFloat)speed bounciness:(CGFloat)bounciness forKey:(NSString *)key completion:(void (^)(BOOL finished))completion;


- (void)andy_addBounceInRightSpringAnimation;

- (void)andy_addBounceInRightSpringAnimationWithCompletion:(void (^)(BOOL finished))completion;

- (void)andy_addBounceInRightSpringAnimationWithDistance:(CGFloat)distance speed:(CGFloat)speed;

- (void)andy_addBounceInRightSpringAnimationWithDistance:(CGFloat)distance speed:(CGFloat)speed completion:(void (^)(BOOL finished))completion;

- (void)andy_addBounceInRightSpringAnimationWithDistance:(CGFloat)distance speed:(CGFloat)speed bounciness:(CGFloat)bounciness forKey:(NSString *)key completion:(void (^)(BOOL finished))completion;


- (void)andy_addBounceOutUpAnimation;

- (void)andy_addBounceOutUpAnimationWithCompletion:(void (^)(BOOL finished))completion;

- (void)andy_addBounceOutUpAnimationWithDistance:(CGFloat)distance duration:(CGFloat)duration;

- (void)andy_addBounceOutUpAnimationWithDistance:(CGFloat)distance duration:(CGFloat)duration completion:(void (^)(BOOL finished))completion;

- (void)andy_addBounceOutUpAnimationWithDistance:(CGFloat)distance duration:(CGFloat)duration forKey:(NSString *)key completion:(void (^)(BOOL finished))completion;


- (void)andy_addBounceOutDownAnimation;

- (void)andy_addBounceOutDownAnimationWithCompletion:(void (^)(BOOL finished))completion;

- (void)andy_addBounceOutDownAnimationWithDistance:(CGFloat)distance duration:(CGFloat)duration;

- (void)andy_addBounceOutDownAnimationWithDistance:(CGFloat)distance duration:(CGFloat)duration completion:(void (^)(BOOL finished))completion;

- (void)andy_addBounceOutDownAnimationWithDistance:(CGFloat)distance duration:(CGFloat)duration forKey:(NSString *)key completion:(void (^)(BOOL finished))completion;


- (void)andy_addBounceOutLeftAnimation;

- (void)andy_addBounceOutLeftAnimationWithCompletion:(void (^)(BOOL finished))completion;

- (void)andy_addBounceOutLeftAnimationWithDistance:(CGFloat)distance duration:(CGFloat)duration;

- (void)andy_addBounceOutLeftAnimationWithDistance:(CGFloat)distance duration:(CGFloat)duration completion:(void (^)(BOOL finished))completion;

- (void)andy_addBounceOutLeftAnimationWithDistance:(CGFloat)distance duration:(CGFloat)duration forKey:(NSString *)key completion:(void (^)(BOOL finished))completion;


- (void)andy_addBounceOutRightAnimation;

- (void)andy_addBounceOutRightAnimationWithCompletion:(void (^)(BOOL finished))completion;

- (void)andy_addBounceOutRightAnimationWithDistance:(CGFloat)distance duration:(CGFloat)duration;

- (void)andy_addBounceOutRightAnimationWithDistance:(CGFloat)distance duration:(CGFloat)duration completion:(void (^)(BOOL finished))completion;

- (void)andy_addBounceOutRightAnimationWithDistance:(CGFloat)distance duration:(CGFloat)duration forKey:(NSString *)key completion:(void (^)(BOOL finished))completion;




@end
