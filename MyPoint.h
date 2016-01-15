//
//  Point.h
//  overlapping rectangles
//
//  Created by Aditya Narayan on 1/15/16.
//  Copyright © 2016 turntotech.io. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface MyPoint : NSObject

@property (nonatomic) NSInteger x;
@property (nonatomic) NSInteger y;

- (instancetype)initWithX:(NSInteger)x withY:(NSInteger)y;

@end
