//
//  ImageFilter.h
//  QFDecorator
//
//  Created by 情风 on 2019/1/3.
//  Copyright © 2019 qingfengiOS. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ImageComponent.h"

NS_ASSUME_NONNULL_BEGIN

@interface ImageFilter : NSObject<ImageComponent>

- (void)apply;

- (id)initWithImageComponent:(id <ImageComponent>) component;

- (id)forwardingTargetForSelector:(SEL)aSelector;

@end

NS_ASSUME_NONNULL_END
