//
//  CALayer+ResetAnimation.m
//  AndyAnimation_Test
//
//  Created by 李扬 on 16/8/2.
//  Copyright © 2016年 andyli. All rights reserved.
//

#import "CALayer+ResetAnimation.h"
#import <POP/POP.h>

@implementation CALayer (ResetAnimation)

- (void)andy_resetAnimation
{
    [self pop_removeAllAnimations];
    
    self.opacity = 1.0;
    
    CGPoint oldAnchorPoint = self.anchorPoint;
    self.anchorPoint = CGPointMake(0.5, 0.5);
    [self setPosition:CGPointMake(self.position.x + self.bounds.size.width * (self.anchorPoint.x - oldAnchorPoint.x), self.position.y + self.bounds.size.height * (self.anchorPoint.y - oldAnchorPoint.y))];

    POPBasicAnimation *resetRotateAnim = [POPBasicAnimation animationWithPropertyNamed:kPOPLayerRotation];
    resetRotateAnim.duration = 0.0;
    resetRotateAnim.toValue = @0.0;
    [self pop_addAnimation:resetRotateAnim forKey:nil];
    
    POPBasicAnimation *resetRotateXAnim = [POPBasicAnimation animationWithPropertyNamed:kPOPLayerRotationX];
    resetRotateXAnim.duration = 0.0;
    resetRotateXAnim.toValue = @0.0;
    [self pop_addAnimation:resetRotateXAnim forKey:nil];
    
    
    POPBasicAnimation *resetRotateYAnim = [POPBasicAnimation animationWithPropertyNamed:kPOPLayerRotationY];
    resetRotateYAnim.duration = 0.0;
    resetRotateYAnim.toValue = @0.0;
    [self pop_addAnimation:resetRotateYAnim forKey:nil];
    
    
    POPBasicAnimation *resetTranslateYAnim = [POPBasicAnimation animationWithPropertyNamed:kPOPLayerTranslationY];
    resetTranslateYAnim.duration = 0.0;
    resetTranslateYAnim.toValue = [NSValue valueWithCGPoint:CGPointZero];
    [self pop_addAnimation:resetTranslateYAnim forKey:nil];
    
    
    POPBasicAnimation *resetTranslateXAnim = [POPBasicAnimation animationWithPropertyNamed:kPOPLayerTranslationX];
    resetTranslateXAnim.duration = 0.0;
    resetTranslateXAnim.toValue = [NSValue valueWithCGPoint:CGPointZero];
    [self pop_addAnimation:resetTranslateXAnim forKey:nil];
    
    
    POPBasicAnimation *resetTranslateXYAnim = [POPBasicAnimation animationWithPropertyNamed:kPOPLayerTranslationXY];
    resetTranslateXYAnim.duration = 0.0;
    resetTranslateXYAnim.toValue = [NSValue valueWithCGPoint:CGPointZero];
    [self pop_addAnimation:resetTranslateXYAnim forKey:nil];
    
    
    POPBasicAnimation *resetScaleXYAnim = [POPBasicAnimation animationWithPropertyNamed:kPOPLayerScaleXY];
    resetScaleXYAnim.duration = 0.0;
    resetScaleXYAnim.toValue = [NSValue valueWithCGPoint:CGPointMake(1.0, 1.0)];
    [self pop_addAnimation:resetScaleXYAnim forKey:nil];
    
}

@end
