//
//  ViewController.m
//  弹出全屏的自定义View
//
//  Created by mac on 2018/3/7.
//  Copyright © 2018年 mac. All rights reserved.
//

#import "ViewController.h"
#import "SecondView.h"

@interface ViewController ()

@end

@implementation ViewController

-(UIWindow *)mainWindow{
    
    UIApplication *app = [UIApplication sharedApplication];
    if ([app.delegate respondsToSelector:@selector(window)]) {
        
        return [app.delegate window];
        
    }
    else{
        
        return [app keyWindow];
        
    }
    
}

- (void)viewDidLoad {
    [super viewDidLoad];

    self.view.backgroundColor = [UIColor orangeColor];
    [self btnSetup];
    
    // 用此方法可以隐藏状态栏
    UIWindow *window = [self mainWindow];
    window.windowLevel = UIWindowLevelAlert;
    
}


-(void)btnSetup{
    
    UIButton *btn = [UIButton buttonWithType:UIButtonTypeCustom];
    btn.frame = CGRectMake(100, 100, 100, 100);
    btn.titleLabel.textColor = [UIColor blackColor];
    [btn setTitle:@"切换页面" forState:UIControlStateNormal];
    [btn addTarget:self action:@selector(switchPage) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btn];
    
}

-(void)switchPage{

    SecondView *view = [SecondView secondView];
    [self.view addSubview:view];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
