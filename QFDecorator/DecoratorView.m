//
//  DecoratorView.m
//  QFDecorator
//
//  Created by 情风 on 2019/1/3.
//  Copyright © 2019 qingfengiOS. All rights reserved.
//

#import "DecoratorView.h"

@implementation DecoratorView

- (void)drawRect:(CGRect)rect {
    [self.image drawInRect:rect];
}

@end
