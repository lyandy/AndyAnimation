//
//  AndyAnimationConst.h
//  AndyAnimation_Test
//
//  Created by 李扬 on 16/7/28.
//  Copyright © 2016年 andyli. All rights reserved.
//

#import <Foundation/Foundation.h>

#define ANDYANIMATION_EXTERN UIKIT_EXTERN

#define AndyAnimationAssert(condition, desc, ...)  NSAssert(condition, desc, ##__VA_ARGS__)

#define AndyAnimationDeprecated(instead) NS_DEPRECATED(2_0, 2_0, 2_0, 2_0, instead)

typedef NS_ENUM(NSInteger, AndyMediaTranslationDirection) {
    AndyMediaTranslationVertical, //纵向平滑形变
    AndyMediaTranslationHorizontal //横向平滑形变
};

typedef NS_ENUM(NSInteger, AndyMediaBounceInSpringDirection) {
    AndyMediaBounceInSpringVertical, //纵向弹性形变
    AndyMediaBounceInSpringHorizontal //横向弹性形变
};

typedef NS_ENUM(NSInteger, AndyMediaRotateAxle) {
    AndyMediaRotateTopX, //顶部边缘轴
    AndyMediaRotateCenterX,//横向中间轴
    AndyMediaRotateBottomX,//底部边缘轴
    AndyMediaRotateLeftY,//左侧边缘轴
    AndyMediaRotateCenterY,//纵向中间轴
    AndyMediaRotateRightY,//右侧边缘轴
    AndyMediaRotateXY//中间轴
};


ANDYANIMATION_EXTERN CGFloat const ANDY_ANIMATION_DEFAULT_DURATION;

ANDYANIMATION_EXTERN CGFloat const ANDY_ANIMATION_DEFAULT_DISTANCE;





