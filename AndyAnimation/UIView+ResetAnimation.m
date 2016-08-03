//
//  UIView+ResetAnimation.m
//  AndyAnimation_Test
//
//  Created by Andy on 16/8/2.
//  Copyright © 2016年 andyli. All rights reserved.
//

#import "UIView+ResetAnimation.h"
#import <POP/POP.h>

@implementation UIView (ResetAnimation)

- (void)andy_resetAnimation
{
    [self pop_removeAllAnimations];
    [self.layer pop_removeAllAnimations];
    
    self.alpha = 1.0;
    self.layer.opacity = 1.0;
    
    POPBasicAnimation *resetRotateAnim = [POPBasicAnimation animationWithPropertyNamed:kPOPLayerRotation];
    resetRotateAnim.duration = 0.0;
    resetRotateAnim.toValue = @0.0;
    [self.layer pop_addAnimation:resetRotateAnim forKey:nil];
    
    POPBasicAnimation *resetRotateXAnim = [POPBasicAnimation animationWithPropertyNamed:kPOPLayerRotationX];
    resetRotateXAnim.duration = 0.0;
    resetRotateXAnim.toValue = @0.0;
    [self.layer pop_addAnimation:resetRotateXAnim forKey:nil];
    
    
    POPBasicAnimation *resetRotateYAnim = [POPBasicAnimation animationWithPropertyNamed:kPOPLayerRotationY];
    resetRotateYAnim.duration = 0.0;
    resetRotateYAnim.toValue = @0.0;
    [self.layer pop_addAnimation:resetRotateYAnim forKey:nil];
    
    
    POPBasicAnimation *resetScaleXYAnim = [POPBasicAnimation animationWithPropertyNamed:kPOPViewScaleXY];
    resetScaleXYAnim.duration = 0.0;
    resetScaleXYAnim.toValue = [NSValue valueWithCGPoint:CGPointMake(1.0, 1.0)];
    [self pop_addAnimation:resetScaleXYAnim forKey:nil];

}

@end
