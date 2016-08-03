//
//  UIView+BaseAnimation.h
//  AndyAnimation_Test
//
//  Created by 李扬 on 16/7/28.
//  Copyright © 2016年 andyli. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AndyAnimationConst.h"

@interface UIView (BaseAnimation)

- (void)fadeInAnimationWithDuration:(CGFloat)duration fromOpacityValue:(NSValue *)fromValue forKey:(NSString *)key completion:(void (^)(BOOL finished)) completion;

- (void)fadeOutAnimationWithDuration:(CGFloat)duration toOpacityValue:(NSValue *)toValue forKey:(NSString *)key completion:(void (^)(BOOL finished)) completion;

- (void)moveToPosition:(NSValue *)point duration:(CGFloat)duration timingFunction:(NSString *)timingFunction forKey:(NSString *)key completion:(void (^)(BOOL finished))completion;

- (void)translateToDistance:(CGFloat)distance duration:(CGFloat)duration direction:(AndyMeidaTranslationDirection)direction isFromCurrentPoint:(BOOL)isFromCurrentPoint  timingFunction:(NSString *)timingFunction forKey:(NSString *)key completion:(void (^)(BOOL finished))completion;

- (void)rotateToAngle:(NSValue *)toAngle fromAngle:(NSValue *)fromAngle propertyName:(NSString *)propertyName duration:(CGFloat)duration forKey:(NSString *)key completion:(void (^)(BOOL finished))completion;

- (void)rotateInSpringToAngle:(NSValue *)toAngle fromAngle:(NSValue *)fromAngle propertyName:(NSString *)propertyName speed:(CGFloat)speed bounciness:(CGFloat)bounciness forKey:(NSString *)key completion:(void (^)(BOOL finished))completion;


- (void)scaleToValue:(NSValue *)value fromValue:fromValue duration:(CGFloat)duration timingFunction:(NSString *)timingFunction forKey:(NSString *)key completion:(void (^)(BOOL finished))completion;

- (void)bounceInSpringToDistance:(CGFloat)distance speed:(CGFloat)speed bounciness:(CGFloat)bounciness direction:(AndyMeidaBounceInSpringDirection)direction forKey:(NSString *)key completion:(void (^)(BOOL finished))completion;

@end
