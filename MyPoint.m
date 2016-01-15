//
//  Point.m
//  overlapping rectangles
//
//  Created by Aditya Narayan on 1/15/16.
//  Copyright © 2016 turntotech.io. All rights reserved.
//

#import "MyPoint.h"

@implementation MyPoint

- (instancetype)initWithX:(NSInteger)x withY:(NSInteger)y {
  self = [super init];
  _x = x;
  _y = y;
  return self;
}

- (NSString*)description{
  return [NSString stringWithFormat:@"<%ld,%ld>",_x,_y];
}

@end
