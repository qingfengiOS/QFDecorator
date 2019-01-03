//
//  ViewController.m
//  QFDecorator
//
//  Created by 情风 on 2019/1/3.
//  Copyright © 2019 qingfengiOS. All rights reserved.
//

#import "ViewController.h"
#import "ImageTransformFilter.h"
#import "ImageShadowFilter.h"
#import "DecoratorView.h"
#import "QFImage.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    QFImage *image = [QFImage imageNamed:@"train"];
    CGAffineTransform rorateTransform = CGAffineTransformMakeRotation(M_PI / 8);//顺时针旋转
    CGAffineTransform translateTransform = CGAffineTransformMakeTranslation(20, 10);//右下方平移
    
    CGAffineTransform finalTransform = CGAffineTransformConcat(rorateTransform, translateTransform);
    
    
    id<ImageComponent>shadowedImage = [[ImageShadowFilter alloc]initWithImageComponent:image shadowOffset:CGSizeMake(10, 10)];//使用阴影 装饰图片
    
    id<ImageComponent>transformdImage = [[ImageTransformFilter alloc]initWithImageComponent:shadowedImage transform:finalTransform];//使用2D变换 装饰图片
    
    DecoratorView *decoratorView = [[DecoratorView alloc] initWithFrame:CGRectMake(50, 100, 240, 140)];
    [decoratorView setImage:transformdImage];
    [self.view addSubview:decoratorView];
    
    
}


@end
