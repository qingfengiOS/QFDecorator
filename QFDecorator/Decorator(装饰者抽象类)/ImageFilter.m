//
//  ImageFilter.m
//  QFDecorator
//
//  Created by 情风 on 2019/1/3.
//  Copyright © 2019 qingfengiOS. All rights reserved.
//

#import "ImageFilter.h"

@interface ImageFilter ()

@property (nonatomic, strong) id <ImageComponent> component;

@end

@implementation ImageFilter

- (instancetype)initWithImageComponent:(id<ImageComponent>)component {
    if (self = [super init]) {
        self.component = component;
    }
    return self;
}

- (void)apply {
    //由子类重载
}

- (id)forwardingTargetForSelector:(SEL)aSelector {
    NSString *selectorName = NSStringFromSelector(aSelector);
    if ([selectorName hasPrefix:@"draw"]) {
        [self apply];
    }
    return self.component;
}



@end
