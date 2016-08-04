//
//  CALayer+SpeciaAnimation.m
//  AndyAnimation_Test
//
//  Created by 李扬 on 16/8/2.
//  Copyright © 2016年 andyli. All rights reserved.
//

#import "CALayer+SpecialAnimation.h"
#import "CALayer+BaseAnimation.h"
#import "AndyAnimationConst.h"
#import <POP/POP.h>

@implementation CALayer (SpecialAnimation)

- (void)andy_addFlashAnimation
{
    [self andy_addFlashAnimationWithForever:NO];
}

- (void)andy_addFlashAnimationWithForever:(BOOL)isForever
{
    [self andy_addFlashAnimationWithKey:nil isForever:isForever completion:nil];
}

- (void)andy_addFlashAnimationWithCompletion:(void (^)(BOOL finished))completion
{
    [self andy_addFlashAnimationWithKey:nil isForever:NO completion:completion];
}

- (void)andy_addFlashAnimationWithKey:(NSString *)key isForever:(BOOL)isForever completion:(void (^)(BOOL finished))completion
{
    CGFloat duration = ANDY_ANIMATION_DEFAULT_DURATION / 2;
    
    [self fadeOutAnimationWithDuration:duration toOpacityValue:@0.0 forKey:key completion:^(BOOL finished) {
        if (finished)
        {
            [self fadeInAnimationWithDuration:duration fromOpacityValue:@0.0 forKey:key completion:^(BOOL finished) {
                if (finished)
                {
                    [self fadeOutAnimationWithDuration:duration toOpacityValue:@0.0 forKey:key completion:^(BOOL finished) {
                        if (finished)
                        {
                            [self fadeInAnimationWithDuration:duration fromOpacityValue:@0.0 forKey:key completion:^(BOOL finished) {
                                if (finished)
                                {
                                    if (isForever)
                                    {
                                        [self andy_addFlashAnimationWithKey:key isForever:YES completion:completion];
                                    }
                                    else
                                    {
                                        if (completion != nil)
                                        {
                                            completion(finished);
                                        }
                                    }
                                }
                            }];
                        }
                    }];
                }
            }];
        }
    }];
}



- (void)andy_addHingeAnimation
{
    [self andy_addHingeAnimationWithKey:nil completion:nil];
}

- (void)andy_addHingeAnimationWithKey:(NSString *)key completion:(void (^)(BOOL finished))completion
{
    CGPoint oldAnchorPoint = self.anchorPoint;
    self.anchorPoint = CGPointMake(0.0, 0.0);
    [self setPosition:CGPointMake(self.position.x + self.bounds.size.width * (self.anchorPoint.x - oldAnchorPoint.x), self.position.y + self.bounds.size.height * (self.anchorPoint.y - oldAnchorPoint.y))];
    
    POPSpringAnimation *hingeSpringAnim = [POPSpringAnimation animationWithPropertyNamed:kPOPLayerRotation];
    
    hingeSpringAnim.springBounciness = 20;
    hingeSpringAnim.springSpeed = 30;
    hingeSpringAnim.fromValue = @0.0;
    hingeSpringAnim.toValue = @(M_PI_4);
    
    hingeSpringAnim.completionBlock = ^(POPAnimation *anim, BOOL finished){
        if (finished)
        {
            [self translateToDistance:([[UIScreen mainScreen] bounds].size.height - self.frame.origin.x) duration:(ANDY_ANIMATION_DEFAULT_DURATION / 2) direction:AndyMediaTranslationVertical isFromCurrentPoint:YES timingFunction:kCAMediaTimingFunctionLinear forKey:key completion:^(BOOL finished) {
                if (finished)
                {
                    if (completion != nil)
                    {
                        completion(finished);
                    }
                }
            }];
        }
    };
    
    [self pop_addAnimation:hingeSpringAnim forKey:key];
}


- (void)andy_addShakeAnimation
{
    [self andy_addShakeAnimationWithKey:nil completion:nil];
}

- (void)andy_addShakeAnimationWithKey:(NSString *)key completion:(void (^)(BOOL finished))completion
{
    [self translateToDistance:-25 duration:0.08 direction:AndyMediaTranslationHorizontal isFromCurrentPoint:YES timingFunction:kCAMediaTimingFunctionEaseIn forKey:key completion:^(BOOL finished) {
        POPSpringAnimation *shakeAnim = [POPSpringAnimation animationWithPropertyNamed:kPOPLayerTranslationX];
        shakeAnim.springBounciness = 30;
        shakeAnim.springSpeed = 20;
        shakeAnim.toValue = [NSValue valueWithCGPoint:CGPointMake(0, 0)];
        
        shakeAnim.completionBlock = ^(POPAnimation *anim, BOOL finished){
            if (completion != nil)
            {
                completion(finished);
            }
        };
        
        [self pop_addAnimation:shakeAnim forKey:key];
    }];
}

- (void)andy_addSwingAnimation
{
    [self andy_addSwingAnimationWithKey:nil completion:nil];
}

- (void)andy_addSwingAnimationWithKey:(NSString *)key completion:(void (^)(BOOL finished))completion
{
    [self rotateToAngle:@(M_PI_4 / 2) fromAngle:@0.0 rotateAxle:AndyMediaRotateXY duration:0.08 forKey:key completion:^(BOOL finished) {
        POPSpringAnimation *swingAnim = [POPSpringAnimation animationWithPropertyNamed:kPOPLayerRotation];
        swingAnim.springBounciness = 30;
        swingAnim.springSpeed = 20;
        swingAnim.toValue = @0.0;
        
        swingAnim.completionBlock = ^(POPAnimation *anim, BOOL finished){
            if (completion != nil)
            {
                completion(finished);
            }
        };
        
        [self pop_addAnimation:swingAnim forKey:key];
    }];
}


- (void)andy_addPulseAnimation
{
    [self andy_addPulseAnimationWithKey:nil completion:nil];
}

- (void)andy_addPulseAnimationWithKey:(NSString *)key completion:(void (^)(BOOL finished))completion
{
    NSValue *scaleMaxValue = [NSValue valueWithCGPoint:CGPointMake(1.5, 1.5)];
    NSValue *scaleOriginValue = [NSValue valueWithCGPoint:CGPointMake(1.0, 1.0)];
    CGFloat duration = ANDY_ANIMATION_DEFAULT_DURATION / 2;
    
    [self scaleToValue:scaleMaxValue fromValue:scaleOriginValue duration:duration timingFunction:kCAMediaTimingFunctionEaseOut forKey:key completion:^(BOOL finished) {
        if(finished)
        {
            [self scaleToValue:scaleOriginValue fromValue:scaleMaxValue duration:duration timingFunction:kCAMediaTimingFunctionEaseOut forKey:key completion:^(BOOL finished) {
                if (finished)
                {
                    if (completion != nil)
                    {
                        completion(finished);
                    }
                }
            }];
        }
    }];
}


- (void)andy_addTadaAnimation
{
    [self andy_addTadaAnimationWithForever:NO];
}

- (void)andy_addTadaAnimationWithForever:(BOOL)isForever
{
    [self andy_addTadaAnimationWithKey:nil isForever:isForever completion:nil];
}

- (void)andy_addTadaAnimationWithCompletion:(void (^)(BOOL finished))completion
{
    [self andy_addTadaAnimationWithKey:nil isForever:NO completion:completion];
}

- (void)andy_addTadaAnimationWithKey:(NSString *)key isForever:(BOOL)isForever completion:(void (^)(BOOL finished))completion
{
    NSValue *scaleMaxValue = [NSValue valueWithCGPoint:CGPointMake(1.1, 1.1)];
    NSValue *scaleOriginValue = [NSValue valueWithCGPoint:CGPointMake(1.0, 1.0)];
    NSValue *scaleMinValue = [NSValue valueWithCGPoint:CGPointMake(0.9, 0.9)];
    
    CGFloat rotateAngle = M_PI_4 / 6;
    
    CGFloat scaleTime = 0.15;
    
    CGFloat roateTime = 0.09;
    
    
    [self scaleToValue:scaleMinValue fromValue:scaleOriginValue duration:scaleTime timingFunction:kCAMediaTimingFunctionLinear forKey:key completion:nil];
    
    [self rotateToAngle:@(-rotateAngle) fromAngle:@0.0 rotateAxle:AndyMediaRotateXY duration:scaleTime forKey:key completion:^(BOOL finished) {
        if (finished)
        {
            [self scaleToValue:scaleMaxValue fromValue:scaleMinValue duration:0.4 timingFunction:kCAMediaTimingFunctionEaseOut forKey:key completion:nil];
            
            [self rotateToAngle:@(rotateAngle) fromAngle:@(-rotateAngle) rotateAxle:AndyMediaRotateXY duration:roateTime forKey:key completion:^(BOOL finished) {
                if (finished)
                {
                    [self rotateToAngle:@(-rotateAngle) fromAngle:@(rotateAngle) rotateAxle:AndyMediaRotateXY duration:roateTime forKey:key completion:^(BOOL finished) {
                        if (finished)
                        {
                            [self rotateToAngle:@(rotateAngle) fromAngle:@(-rotateAngle) rotateAxle:AndyMediaRotateXY duration:roateTime forKey:key completion:^(BOOL finished) {
                                if (finished)
                                {
                                    [self rotateToAngle:@(-rotateAngle) fromAngle:@(rotateAngle) rotateAxle:AndyMediaRotateXY duration:roateTime forKey:key completion:^(BOOL finished) {
                                        if (finished)
                                        {
                                            [self rotateToAngle:@(rotateAngle) fromAngle:@(-rotateAngle) rotateAxle:AndyMediaRotateXY duration:roateTime forKey:key completion:^(BOOL finished) {
                                                if (finished)
                                                {
                                                    [self rotateToAngle:@0.0 fromAngle:@(rotateAngle) rotateAxle:AndyMediaRotateXY duration:roateTime forKey:key completion:^(BOOL finished) {
                                                        if (finished)
                                                        {
                                                            [self scaleToValue:scaleOriginValue fromValue:scaleMaxValue duration:scaleTime timingFunction:kCAMediaTimingFunctionLinear forKey:key completion:^(BOOL finished) {
                                                                if (finished)
                                                                {
                                                                    if (isForever)
                                                                    {
                                                                        [self andy_addTadaAnimationWithKey:key isForever:isForever completion:completion];
                                                                    }
                                                                    else
                                                                    {
                                                                        if (completion != nil)
                                                                        {
                                                                            completion(finished);
                                                                        }
                                                                    }
                                                                }
                                                            }];
                                                        }
                                                    }];
                                                }
                                            }];
                                        }
                                    }];
                                }
                            }];
                        }
                    }];
                }
            }];
        }
    }];
}





@end
