//
//  RectangleUtility.m
//  overlapping rectangles
//
//  Created by Aditya Narayan on 1/15/16.
//  Copyright © 2016 turntotech.io. All rights reserved.
//

#import "RectangleUtility.h"

@implementation RectangleUtility

+ (BOOL)testRectangle:(Rectangle*)rect1 withRectangle:(Rectangle*)rect2{
  
  if([RectangleUtility rectangle:rect1 cornerFallsInsideRectangle:rect2]){
    return true;
  } else if ([RectangleUtility rectangle:rect1 horizontalOverlapsRectangle:rect2] || [RectangleUtility rectangle:rect2 horizontalOverlapsRectangle:rect1]){
    return true;
  } else if ([RectangleUtility rectangle:rect1 verticalOverlapsRectangle:rect2] || [RectangleUtility rectangle:rect2 verticalOverlapsRectangle:rect1]){
    return true;
  } else {
    return false;
  }
}

+ (BOOL)point:(MyPoint*)point inRectangle:(Rectangle*)rect{
  
  BOOL containedX = NO;
  BOOL containedY = NO;
  
  if(point.x > rect.upperLeft.x && point.x < rect.upperRight.x){
    containedX = YES;
  }
  
  if(point.y < rect.upperLeft.y && point.y > rect.lowerLeft.y){
    containedY = YES;
  }

  if(containedX && containedY){
    return YES;
  } else {
    return NO;
  }
}

+ (BOOL)rectangle:(Rectangle*)rect1 cornerFallsInsideRectangle:(Rectangle*)rect2{
  NSArray *corners = @[rect1.upperRight, rect1.upperLeft, rect1.lowerLeft, rect1.lowerRight];
  for (MyPoint *point in corners) {
    if([RectangleUtility point:point inRectangle:rect2]){
      return YES;
    }
  }
  return NO;
}

+ (BOOL)rectangle:(Rectangle *)rect1 horizontalOverlapsRectangle:(Rectangle *)rect2{
  
  BOOL crosses = NO;
  BOOL contains = NO;
  //if y of rect1 is in the range of rect2
  if(rect1.upperLeft.y <= rect2.upperLeft.y && rect1.upperLeft.y >= rect2.lowerLeft.y){
    crosses = YES;
  }
  
  //if the x of rect2 is in range of rect1
  if(rect2.upperLeft.x >= rect1.upperLeft.x && rect2.upperLeft.x <= rect1.upperRight.x){
    contains = YES;
  }
  
  if(crosses && contains){
    return YES;
  } else {
    return NO;
  }

  
}

+ (BOOL)rectangle:(Rectangle *)rect1 verticalOverlapsRectangle:(Rectangle *)rect2{
  
  BOOL crosses = NO;
  BOOL contains = NO;
  //if x of rect1 is in the range of rect2
  if(rect1.upperRight.x <= rect2.upperRight.x && rect1.upperRight.x >= rect2.upperLeft.x){
    crosses = YES;
  }
  
  //if the x of rect2 is in range of rect1
  if(rect1.upperRight.y >= rect2.upperLeft.y && rect1.lowerRight.y <= rect2.lowerLeft.y){
     contains = YES;
  }
  
  if(crosses && contains){
    return YES;
  } else {
    return NO;
  }
}

@end
