//
//  CALayer+BaseAnimation.m
//  AndyAnimation_Test
//
//  Created by 李扬 on 16/7/28.
//  Copyright © 2016年 andyli. All rights reserved.
//

#import "CALayer+BaseAnimation.h"
#import <Pop/POP.h>

@implementation CALayer (BaseAnimation)

- (void)fadeInAnimationWithDuration:(CGFloat)duration fromOpacityValue:(NSValue *)fromValue forKey:(NSString *)key  completion:(void (^)(BOOL))completion
{
    POPBasicAnimation *opacityAnim = [POPBasicAnimation animationWithPropertyNamed:kPOPLayerOpacity];
    
    opacityAnim.duration = duration;
    opacityAnim.fromValue = fromValue;
    opacityAnim.toValue = @1.0;
    
    opacityAnim.completionBlock = ^(POPAnimation *anim, BOOL finished){
        if (completion != nil)
        {
            completion(finished);
        }
    };
    
    [self pop_addAnimation:opacityAnim forKey:key];
}

- (void)fadeOutAnimationWithDuration:(CGFloat)duration toOpacityValue:(NSValue *)toValue forKey:(NSString *)key completion:(void (^)(BOOL))completion
{
    POPBasicAnimation *opacityAnim = [POPBasicAnimation animationWithPropertyNamed:kPOPLayerOpacity];
    
    opacityAnim.duration = duration;
    opacityAnim.fromValue = @1.0;
    opacityAnim.toValue = toValue;
    
    opacityAnim.completionBlock = ^(POPAnimation *anim, BOOL finished){
        if (completion != nil)
        {
            completion(finished);
        }
    };
    
    [self pop_addAnimation:opacityAnim forKey:key];
}

- (void)moveToPosition:(NSValue *)point duration:(CGFloat)duration timingFunction:(NSString *)timingFunction forKey:(NSString *)key completion:(void (^)(BOOL))completion
{
    POPBasicAnimation *moveAnim = [POPBasicAnimation animationWithPropertyNamed:kPOPLayerPosition];
    
    moveAnim.timingFunction = [CAMediaTimingFunction functionWithName:timingFunction];
    moveAnim.duration = duration;
    moveAnim.toValue = point;
    
    moveAnim.completionBlock = ^(POPAnimation *anim, BOOL finished){
        if (completion != nil)
        {
            completion(finished);
        }
    };
    
    [self pop_addAnimation:moveAnim forKey:key];
}

- (void)translateToDistance:(CGFloat)distance duration:(CGFloat)duration direction:(AndyMeidaTranslationDirection)direction isFromCurrentPoint:(BOOL)isFromCurrentPoint timingFunction:(NSString *)timingFunction forKey:(NSString *)key completion:(void (^)(BOOL))completion
{
    POPBasicAnimation *translateAnim = nil;
    
    switch (direction) {
        case AndyMediaTranslationVertical:
            translateAnim = [POPBasicAnimation animationWithPropertyNamed:kPOPLayerTranslationY];
            if (isFromCurrentPoint)
            {
                translateAnim.fromValue = [NSValue valueWithCGPoint:CGPointZero];
                translateAnim.toValue = [NSValue valueWithCGPoint:CGPointMake(distance, 0)];
            }
            else
            {
                translateAnim.fromValue = [NSValue valueWithCGPoint:CGPointMake(distance, 0)];
                translateAnim.toValue = [NSValue valueWithCGPoint:CGPointZero];
            }
            break;
        case AndyMediaTranslationHorizontal:
            translateAnim = [POPBasicAnimation animationWithPropertyNamed:kPOPLayerTranslationX];
            if (isFromCurrentPoint)
            {
                translateAnim.fromValue = [NSValue valueWithCGPoint:CGPointZero];
                translateAnim.toValue = [NSValue valueWithCGPoint:CGPointMake(distance, 0)];
            }
            else
            {
                translateAnim.fromValue = [NSValue valueWithCGPoint:CGPointMake(distance, 0)];
                translateAnim.toValue = [NSValue valueWithCGPoint:CGPointZero];
            }
            break;
    }
    translateAnim.timingFunction = [CAMediaTimingFunction functionWithName:timingFunction];
    translateAnim.duration = duration;
    
    translateAnim.completionBlock = ^(POPAnimation *anim, BOOL finished){
        if (completion != nil)
        {
            completion(finished);
        }
    };
    
    [self pop_addAnimation:translateAnim forKey:key];

}

- (void)rotateToAngle:(NSValue *)toAngle fromAngle:(NSValue *)fromAngle propertyName:(NSString *)propertyName duration:(CGFloat)duration forKey:(NSString *)key completion:(void (^)(BOOL))completion
{
    POPBasicAnimation *rotateAnim = [POPBasicAnimation animationWithPropertyNamed:propertyName];
    
    rotateAnim.duration = duration;
    rotateAnim.fromValue = fromAngle;
    rotateAnim.toValue = toAngle;
    
    rotateAnim.completionBlock = ^(POPAnimation *anim, BOOL finished){
        if (completion != nil)
        {
            completion(finished);
        }
    };
    
    [self pop_addAnimation:rotateAnim forKey:key];
}

- (void)rotateInSpringToAngle:(NSValue *)toAngle fromAngle:(NSValue *)fromAngle propertyName:(NSString *)propertyName speed:(CGFloat)speed bounciness:(CGFloat)bounciness forKey:(NSString *)key completion:(void (^)(BOOL))completion
{
    POPSpringAnimation *rotateSpringAnim = [POPSpringAnimation animationWithPropertyNamed:propertyName];
    
    rotateSpringAnim.springBounciness = bounciness;
    rotateSpringAnim.springSpeed = speed;
    rotateSpringAnim.fromValue = fromAngle;
    rotateSpringAnim.toValue = toAngle;
    
    rotateSpringAnim.completionBlock = ^(POPAnimation *anim, BOOL finished){
        if (completion != nil)
        {
            completion(finished);
        }
    };
    
    [self pop_addAnimation:rotateSpringAnim forKey:key];
}


- (void)scaleToValue:(NSValue *)value fromValue:fromValue duration:(CGFloat)duration timingFunction:(NSString *)timingFunction forKey:(NSString *)key completion:(void (^)(BOOL))completion
{
    POPBasicAnimation *scaleAnim = [POPBasicAnimation animationWithPropertyNamed:kPOPLayerScaleXY];
    
    scaleAnim.duration = duration;
    scaleAnim.timingFunction = [CAMediaTimingFunction functionWithName:timingFunction];
    scaleAnim.fromValue = fromValue;
    scaleAnim.toValue = value;
    
    scaleAnim.completionBlock = ^(POPAnimation *anim, BOOL finished){
        if (completion != nil)
        {
            completion(finished);
        }
    };
    
    [self pop_addAnimation:scaleAnim forKey:key];
}

- (void)bounceInSpringToDistance:(CGFloat)distance speed:(CGFloat)speed bounciness:(CGFloat)bounciness direction:(AndyMeidaBounceInSpringDirection)direction forKey:(NSString *)key completion:(void (^)(BOOL))completion
{
    POPSpringAnimation *bounceInAnim = nil;
    
    switch (direction) {
        case AndyMediaBounceInSpringVertical:
            bounceInAnim = [POPSpringAnimation animationWithPropertyNamed:kPOPLayerTranslationY];
            bounceInAnim.fromValue = [NSValue valueWithCGPoint:CGPointMake(-distance, 0)];
            break;
        case AndyMediaBounceInSpringHorizontal:
            bounceInAnim = [POPSpringAnimation animationWithPropertyNamed:kPOPLayerTranslationX];
            bounceInAnim.fromValue = [NSValue valueWithCGPoint:CGPointMake(distance, 0)];
            break;
    }
    bounceInAnim.springBounciness = bounciness;
    bounceInAnim.springSpeed = speed;
    bounceInAnim.toValue = [NSValue valueWithCGPoint:CGPointZero];
    
    bounceInAnim.completionBlock = ^(POPAnimation *anim, BOOL finished){
        if (completion != nil)
        {
            completion(finished);
        }
    };
    
    [self pop_addAnimation:bounceInAnim forKey:key];
}












@end
