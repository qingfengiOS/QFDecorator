//
//  ImageShadowFilter.m
//  QFDecorator
//
//  Created by 情风 on 2019/1/3.
//  Copyright © 2019 qingfengiOS. All rights reserved.
//

#import "ImageShadowFilter.h"

@interface ImageShadowFilter ()

@property (nonatomic, assign) CGSize shadowOffset;

@end

@implementation ImageShadowFilter

- (instancetype)initWithImageComponent:(id<ImageComponent>)component shadowOffset:(CGSize)shadowOffset {
    if (self = [super initWithImageComponent:component]) {
        self.shadowOffset = shadowOffset;
    }
    return self;
}

- (void)apply {
    CGContextRef context = UIGraphicsGetCurrentContext();
    CGContextSetShadowWithColor(context, self.shadowOffset, 30.0, [UIColor redColor].CGColor);
}

@end
