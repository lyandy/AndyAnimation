//
//  UIView+BaseAnimation.m
//  AndyAnimation_Test
//
//  Created by 李扬 on 16/7/28.
//  Copyright © 2016年 andyli. All rights reserved.
//

#import "UIView+BaseAnimation.h"
#import <Pop/POP.h>

@implementation UIView (BaseAnimation)

- (void)fadeInAnimationWithDuration:(CGFloat)duration fromOpacityValue:(NSValue *)fromValue forKey:(NSString *)key  completion:(void (^)(BOOL))completion
{
    POPBasicAnimation *opacityAnim = [POPBasicAnimation animationWithPropertyNamed:kPOPViewAlpha];
    
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
    POPBasicAnimation *opacityAnim = [POPBasicAnimation animationWithPropertyNamed:kPOPViewAlpha];
    
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
    POPBasicAnimation *moveAnim = [POPBasicAnimation animationWithPropertyNamed:kPOPViewCenter];
    
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
    
    POPBasicAnimation *translateAnim = [POPBasicAnimation animationWithPropertyNamed:kPOPViewCenter];
    
    CGPoint center = CGPointMake(self.frame.origin.x + self.bounds.size.width / 2.0, self.frame.origin.y + self.bounds.size.height / 2.0);
    
    switch (direction) {
        case AndyMediaTranslationVertical:
            if (isFromCurrentPoint)
            {
                translateAnim.fromValue = [NSValue valueWithCGPoint:center];
                translateAnim.toValue = [NSValue valueWithCGPoint:CGPointMake(center.x, center.y + distance)];
            }
            else
            {
                translateAnim.fromValue = [NSValue valueWithCGPoint:CGPointMake(center.x, center.y + distance)];
                translateAnim.toValue = [NSValue valueWithCGPoint:center];
            }
            break;
        case AndyMediaTranslationHorizontal:
            if (isFromCurrentPoint)
            {
                translateAnim.fromValue = [NSValue valueWithCGPoint:center];
                translateAnim.toValue = [NSValue valueWithCGPoint:CGPointMake(center.x + distance, center.y)];
            }
            else
            {
                translateAnim.fromValue = [NSValue valueWithCGPoint:CGPointMake(center.x + distance, center.y)];
                translateAnim.toValue = [NSValue valueWithCGPoint:center];
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
    
    [self.layer pop_addAnimation:rotateAnim forKey:key];
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
    
    [self.layer pop_addAnimation:rotateSpringAnim forKey:key];
}


- (void)scaleToValue:(NSValue *)value fromValue:fromValue duration:(CGFloat)duration timingFunction:(NSString *)timingFunction forKey:(NSString *)key completion:(void (^)(BOOL))completion
{
    POPBasicAnimation *scaleAnim = [POPBasicAnimation animationWithPropertyNamed:kPOPViewScaleXY];
    
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
    POPSpringAnimation *bounceInAnim = [POPSpringAnimation animationWithPropertyNamed:kPOPViewCenter];
    
    CGPoint center = CGPointMake(self.frame.origin.x + self.bounds.size.width / 2.0, self.frame.origin.y + self.bounds.size.height / 2.0);
    
    switch (direction) {
        case AndyMediaBounceInSpringVertical:
            bounceInAnim.fromValue = [NSValue valueWithCGPoint:CGPointMake(center.x, center.y - distance)];
            break;
        case AndyMediaBounceInSpringHorizontal:
            bounceInAnim.fromValue = [NSValue valueWithCGPoint:CGPointMake(center.x - distance, center.y)];
            break;
    }
    bounceInAnim.springBounciness = bounciness;
    bounceInAnim.springSpeed = speed;
    bounceInAnim.toValue = [NSValue valueWithCGPoint:center];
    
    bounceInAnim.completionBlock = ^(POPAnimation *anim, BOOL finished){
        if (completion != nil)
        {
            completion(finished);
        }
    };
    
    [self pop_addAnimation:bounceInAnim forKey:key];
}


@end
