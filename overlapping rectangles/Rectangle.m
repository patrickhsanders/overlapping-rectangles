//
//  Rectangle.m
//  overlapping rectangles
//
//  Created by Aditya Narayan on 1/15/16.
//  Copyright © 2016 turntotech.io. All rights reserved.
//

#import "Rectangle.h"

@implementation Rectangle

- (instancetype)initWithUL:(MyPoint*)uL withLR:(MyPoint*)lR{
  self = [super init];
  _lowerRight = lR;
  _upperLeft = uL;
  [self calculateAllPoints];
  NSLog(@"%@",self);
  return self;
}

- (void)calculateAllPoints{
  _upperRight = [[MyPoint alloc] initWithX:_lowerRight.x withY:_upperLeft.y];
  _lowerLeft = [[MyPoint alloc] initWithX:_upperLeft.x withY:_lowerRight.y];
}

- (NSString*)description{
  return [NSString stringWithFormat:@"Rectangle:\n%@,%@\n%@, %@",_upperLeft,_upperRight,_lowerLeft,_lowerRight];
}

@end
