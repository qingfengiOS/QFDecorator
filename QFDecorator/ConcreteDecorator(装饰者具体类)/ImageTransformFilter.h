//
//  ImageTransformFilter.h
//  QFDecorator
//
//  Created by 情风 on 2019/1/3.
//  Copyright © 2019 qingfengiOS. All rights reserved.
//

#import "ImageFilter.h"

NS_ASSUME_NONNULL_BEGIN

@interface ImageTransformFilter : ImageFilter

- (instancetype)initWithImageComponent:(id<ImageComponent>)component transform:(CGAffineTransform)transform;

- (void)apply;

@end

NS_ASSUME_NONNULL_END
