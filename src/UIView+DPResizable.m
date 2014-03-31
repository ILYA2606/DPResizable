//
//  UIView+DPResizable.m
//  RuntimeResizableTest
//
//  Created by ILYA2606 on 31.03.14.
//  Copyright (c) 2014 Darkness Production. All rights reserved.
//

#import "UIView+DPResizable.h"
#import <objc/runtime.h>

@implementation UIView (DPResizable)


- (NSString*)resizableString
{
    NSString *object = objc_getAssociatedObject(self, "resizableString");
    return object;
}

- (void)setResizableString:(NSString*)property
{
    objc_setAssociatedObject(self, "resizableString", property , OBJC_ASSOCIATION_RETAIN);
    UIEdgeInsets edge = UIEdgeInsetsFromString(property);
    if([self isKindOfClass:[UIImageView class]]){//for UIImageView
        UIImageView *imageView = (UIImageView*)self;
        UIImage *resizableImage = [imageView.image resizableImageWithCapInsets:edge];
        imageView.image = resizableImage;
    }
    else if([self isKindOfClass:[UIButton class]]){//for UIButton
        UIButton *button = (UIButton*)self;
        UIImage *resizableImage = [[button imageForState:UIControlStateNormal] resizableImageWithCapInsets:edge];
        [button setImage:resizableImage
                forState:UIControlStateNormal&UIControlStateHighlighted&UIControlStateSelected&UIControlStateDisabled];
    }
}

@end
