//
//  RectangleUtility.h
//  overlapping rectangles
//
//  Created by Aditya Narayan on 1/15/16.
//  Copyright © 2016 turntotech.io. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "MyPoint.h"
#import "Rectangle.h"

@interface RectangleUtility : NSObject


+ (BOOL)point:(MyPoint*)point inRectangle:(Rectangle*)rect;
+ (BOOL)rectangle:(Rectangle*)rect1 cornerFallsInsideRectangle:(Rectangle*)rect2;
+ (BOOL)rectangle:(Rectangle *)rect1 horizontalOverlapsRectangle:(Rectangle *)rect2;
+ (BOOL)rectangle:(Rectangle *)rect1 verticalOverlapsRectangle:(Rectangle *)rect2;
+ (BOOL)testRectangle:(Rectangle*)rect1 withRectangle:(Rectangle*)rect2;
@end
