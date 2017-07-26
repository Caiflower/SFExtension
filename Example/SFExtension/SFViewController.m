//
//  SFViewController.m
//  SFExtension
//
//  Created by chriscaixx on 07/26/2017.
//  Copyright (c) 2017 chriscaixx. All rights reserved.
//

#import "SFViewController.h"
#import <SFExtension/UIView+SFExtension.h>
#import "UIView+SFFrame.h"
#import "SFMacro.h"

@interface SFViewController ()
@property (nonatomic, weak) UIView * redView;
@end

@implementation SFViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    self.view.backgroundColor = [UIColor lightGrayColor];
    
    UIView * redView = [[UIView alloc] init];
    
    redView.frame = CGRectMake(120, 100, 100, 100);
    
    redView.backgroundColor = [UIColor redColor];
    
    [self.view addSubview:redView];
 
    _redView = redView;
    [redView sf_addTopLineWithColor:[UIColor yellowColor] height:2 alpha:1];
    
    
    NSString * str = nil;
    
    
    BOOL flag = SFIsEmptyObject(str);
    flag = SFIsEmptyString(str);
    
    
    
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
//    [_redView sf_addBottomLineWithColor:[UIColor greenColor] height:2 alpha:0.5];
    
    CGRect rect = CGRectMake(10, 10, 80, 5);
    
    [_redView sf_addLine:[UIColor greenColor] inRect:rect];
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
