//
//  UIView+DPResizable.h
//  RuntimeResizableTest
//
//  Created by ILYA2606 on 31.03.14.
//  Copyright (c) 2014 Darkness Production. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIView (DPResizable)

/**
 Stretches the image of the object with the specified edge insets. 
 Format: {top,left,bottom,right}
 Example: {10,20,10,20}
 
 @author Ilya Shkolnik
 */
@property (nonatomic, assign) NSString *resizableString;

@end
