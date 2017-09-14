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
#import <SFExtension/NSTimer+SFExtension.h>
#import "UIActionSheet+SFExtension.h"
#import "UIAlertView+SFExtension.h"
@interface SFViewController ()
@property (nonatomic, weak) UIView * redView;
@end

@implementation SFViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    UIButton * button1 = [UIButton buttonWithType:UIButtonTypeCustom];
    
    [button1 setTitle:@"显示Sheet" forState:UIControlStateNormal];
    [button1 setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    [button1 sizeToFit];
    button1.backgroundColor = [UIColor redColor];
    button1.center = CGPointMake(self.view.center.x, self.view.center.y - 50);
    [button1 addTarget:self action:@selector(showActionSheet) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:button1];
    
    UIButton * button2 = [UIButton buttonWithType:UIButtonTypeCustom];
    
    [button2 setTitle:@"显示Alert" forState:UIControlStateNormal];
    [button2 setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    [button2 sizeToFit];
    button2.backgroundColor = [UIColor redColor];
    button2.center = CGPointMake(self.view.center.x, self.view.center.y + 50);
    
    [button2 addTarget:self action:@selector(showAlertView) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:button2];

    UIButton * button3 = [UIButton buttonWithType:UIButtonTypeCustom];
    [button3 setTitle:@"显示Input" forState:UIControlStateNormal];
    [button3 setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    [button3 sizeToFit];
    button3.backgroundColor = [UIColor redColor];
    
    button3.center = CGPointMake(self.view.center.x, self.view.center.y + 100);
    
    [button3 addTarget:self action:@selector(showInput) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:button3];
    
    
    UIButton * button4 = [UIButton buttonWithType:UIButtonTypeCustom];
    [button4 setTitle:@"显示confrm" forState:UIControlStateNormal];
    [button4 setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    [button4 sizeToFit];
    button4.backgroundColor = [UIColor redColor];
    
    button4.center = CGPointMake(self.view.center.x, self.view.center.y + 150);
    
    [button4 addTarget:self action:@selector(showConfrm) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:button4];

    
    /*
    self.view.backgroundColor = [UIColor lightGrayColor];
    
    UIView * redView = [[UIView alloc] init];
    
    redView.frame = CGRectMake(10, 100, 100, 100);
    
    redView.backgroundColor = [UIColor redColor];
    
    [self.view addSubview:redView];
 
    _redView = redView;
    [redView sf_addTopLineWithColor:[UIColor yellowColor] height:2 alpha:1];
    
    */
}

- (void)addTopLine
{
    CGRect rect = CGRectMake(10, 10, 80, 5);
    
    [_redView sf_addLine:[UIColor greenColor] inRect:rect];
}

- (void)showActionSheet
{
    // 去除警告
#pragma clang diagnostic push
#pragma clang diagnostic ignored"-Wdeprecated-declarations"
    [UIActionSheet sf_actionSheetWithTitle:@"测试" completion:^(NSInteger buttonIndex, NSString *buttonTitle) {
        
        NSLog(@"点击了第%zd个按钮,标题是%@",buttonIndex,buttonTitle);

        
    } cancleButtonTitle:@"取消" destructiveButtonTittle:@"确定" otherButtonTitleList:@[@"测试按钮1",@"测试按钮2",@"测试按钮3",@"测试按钮4",@"测试按钮5"]];
#pragma clang diagnostic pop

}


- (void)showAlertView
{
    [UIAlertView sf_alertWithTitle:@"测试 AlertView标题" message:@"测试消息" completion:^(NSInteger buttonIndex, NSString *buttonTitle) {
        NSLog(@"点击了第%zd个按钮,标题是%@",buttonIndex,buttonTitle);
        
    } cancleButtonTitle:@"取消" otherButtonTitles:@"其他1",@"其他2",@"其他3",nil];
    
}



- (void)showConfrm
{
    
    [UIAlertView sf_confirmWithTitle:@"测试 confrm标题" message:@"测试消息" approve:^{
        NSLog(@"approve");
    } cancle:^{
        NSLog(@"cancle");
    }];
     
    /*
    [UIAlertView sf_confirmWithTitle:@"测试 confrm标题" message:@"测试消息" approve:^{
        NSLog(@"approve");
    }];
     */
}

- (void)showInput
{
    /*
    [UIAlertView sf_inputWithTitle:@"测试 input" message:@"测试消息" secureTextEntry:YES canaleButtonTitle:@"取消" approveButtonTitle:@"确定" completion:^(NSString *input, BOOL cancled) {
        NSLog(@"%@",input);
    }];
    */
    [UIAlertView sf_inputWithTitle:@"测试 input" message:@"测试消息" canaleButtonTitle:@"取消" approveButtonTitle:@"确定" completion:^(NSString *input, BOOL cancled) {
        NSLog(@"%@",input);
    }];
     
     }



@end
