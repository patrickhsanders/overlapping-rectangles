//
//  Rectangle.h
//  overlapping rectangles
//
//  Created by Aditya Narayan on 1/15/16.
//  Copyright © 2016 turntotech.io. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "MyPoint.h"

@interface Rectangle : NSObject

@property (nonatomic, strong) MyPoint *upperLeft;
@property (nonatomic, strong) MyPoint *lowerRight;

@property (nonatomic, strong) MyPoint *upperRight;
@property (nonatomic, strong) MyPoint *lowerLeft;

- (instancetype)initWithUL:(MyPoint*)uL withLR:(MyPoint*)lR;
- (void)calculateAllPoints;

@end
