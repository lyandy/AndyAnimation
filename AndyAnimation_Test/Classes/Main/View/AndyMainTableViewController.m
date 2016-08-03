//
//  AndyMainTableViewController.m
//  AndyAnimation_Test
//
//  Created by 李扬 on 16/7/28.
//  Copyright © 2016年 andyli. All rights reserved.
//

#import "AndyMainTableViewController.h"
#import "AndyFadeViewController.h"

@interface AndyMainTableViewController ()

@property (nonatomic, strong) NSArray *animationArr;

@end

@implementation AndyMainTableViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    self.title = @"动画列表";
    
    self.animationArr = @[@"FadeAnimation", @"BounceAnimation", @"FlipAnimation", @"SpecialAnimation"];
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.animationArr.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *cellId = @"animationCell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellId];
    
    if (cell == nil)
    {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:cellId];
    }
    
    cell.textLabel.text = self.animationArr[indexPath.row];
    
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    NSString *animation = self.animationArr[indexPath.row];
    
    if ([animation isEqualToString:@"FadeAnimation"])
    {
        AndyFadeViewController * fadeVc = [[AndyFadeViewController alloc] init];
        [self.navigationController pushViewController:fadeVc animated:YES];
    }
    else if ([animation isEqualToString:@"BounceAnimation"])
    {
        
    }
    else if ([animation isEqualToString:@"FlipAnimation"])
    {
        
    }
    else if ([animation isEqualToString:@"AttensionAnimation"])
    {
        
    }
    else if ([animation isEqualToString:@"SpecialAnimations"])
    {
        
    }
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
