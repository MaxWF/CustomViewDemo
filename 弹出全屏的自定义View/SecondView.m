//
//  SecondView.m
//  弹出全屏的自定义View
//
//  Created by mac on 2018/3/7.
//  Copyright © 2018年 mac. All rights reserved.
//

#import "SecondView.h"

@implementation SecondView

+(instancetype)secondView{
    
    return [[[NSBundle mainBundle] loadNibNamed:NSStringFromClass([self class]) owner:nil options:nil] lastObject];
    
}

@end
