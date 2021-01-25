//
//  ViewController.m
//  属性传值（正传）
//
//  Created by 郭红乐 on 2021/1/23.
//  Copyright © 2021 无. All rights reserved.
//

#import "ViewController.h"
#import "SecondViewController.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    //UINavigationController *navSecondVC = [[UINavigationController alloc] init];
    self.navigationItem.title = @"属性正向传值";
    self.view.backgroundColor = [UIColor whiteColor];
    
    _textField = [[UITextField alloc] initWithFrame:CGRectMake(50, 200, self.view.frame.size.width - 100, 70)];
    _textField.borderStyle = UITextBorderStyleRoundedRect;
    [self.view addSubview:_textField];
    
    
    UIButton *btn = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    btn.frame = CGRectMake(30, 280, self.view.frame.size.width - 50, 60);
    [btn setTitle:@"确定" forState:UIControlStateNormal];
    [btn addTarget:self action:@selector(click) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btn];
    
}

- (void) click{
    
    SecondViewController *second = [[SecondViewController alloc] init];
    second.str = _textField.text;
    [self.navigationController pushViewController:second animated:YES];
//    second.modalPresentationStyle = UIModalPresentationOverFullScreen;
//    [self presentViewController:second animated:YES completion:nil];
}

@end
