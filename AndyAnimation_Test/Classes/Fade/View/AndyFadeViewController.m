//
//  AndyFadeViewController.m
//  AndyAnimation_Test
//
//  Created by 李扬 on 16/7/28.
//  Copyright © 2016年 andyli. All rights reserved.
//

#import "AndyFadeViewController.h"


@interface AndyFadeViewController ()
@property (weak, nonatomic) IBOutlet UIView *viewSample;

@end

@implementation AndyFadeViewController
- (IBAction)btnIn_Click:(UIButton *)sender {
    [self.viewSample.layer andy_addFlipInAnimationWithDuration:0.4 rotateAxle:AndyMediaRotateLeftY fromOpacityValue:@1.0 forKey:nil completion:nil];
    
}

- (IBAction)btnOut_Click:(UIButton *)sender {
    
    [self.viewSample andy_resetAnimation];
}

- (IBAction)btnOutUp_Click:(UIButton *)sender {
    [self.viewSample.layer andy_addFlashAnimationWithForever:YES];
    
}
- (IBAction)btnOutDown_Click:(UIButton *)sender {
    [self.viewSample.layer andy_addScaleAnimationToValue:[NSValue valueWithCGPoint:CGPointMake(2.0, 2.0)]];
    
}
- (IBAction)btnOutLeft_Click:(UIButton *)sender {
    
}

- (void)viewDidLoad {
    [super viewDidLoad];
//    self.viewSample.alpha = 0.0;
//    self.viewSample.layer.opacity = 0;
    self.viewSample.clipsToBounds = YES;
    self.viewSample.layer.cornerRadius = 30;
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
