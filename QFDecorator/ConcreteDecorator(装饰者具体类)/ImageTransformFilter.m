//
//  ImageTransformFilter.m
//  QFDecorator
//
//  Created by 情风 on 2019/1/3.
//  Copyright © 2019 qingfengiOS. All rights reserved.
//

#import "ImageTransformFilter.h"

@interface ImageTransformFilter ()
@property (nonatomic, assign) CGAffineTransform transform;
@end

@implementation ImageTransformFilter

- (instancetype)initWithImageComponent:(id<ImageComponent>)component transform:(CGAffineTransform)transform {
    if (self = [super initWithImageComponent:component]) {
        self.transform =transform;
    }
    return self;
}

- (void)apply {
    CGContextRef context = UIGraphicsGetCurrentContext();
    CGContextConcatCTM(context, self.transform);
}


@end
