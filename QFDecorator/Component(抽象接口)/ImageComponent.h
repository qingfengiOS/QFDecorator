//
//  ImageComponent.h
//  QFDecorator
//
//  Created by 情风 on 2019/1/3.
//  Copyright © 2019 qingfengiOS. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@protocol ImageComponent <NSObject>

@optional

- (void)drawAsPatternInRect:(CGRect)rect;

- (void)drawAtPoint:(CGPoint)point;
- (void)drawAtPoint:(CGPoint)ponit
          blendMode:(CGBlendMode)blendMode
              alpha:(CGFloat)alpha;

- (void)drawInRect:(CGRect)rect;
- (void)drawInRect:(CGRect)rect
         blendMode:(CGBlendMode)blendMode
             alpha:(CGFloat)alpha;

@end

NS_ASSUME_NONNULL_END
