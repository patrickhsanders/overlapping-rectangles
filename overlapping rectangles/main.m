//
//  main.m
//  overlapping rectangles
//
//  Created by Aditya Narayan on 1/15/16.
//  Copyright © 2016 turntotech.io. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Rectangle.h"
#import "MyPoint.h"
#import "RectangleUtility.h"

int main(int argc, const char * argv[]) {
  @autoreleasepool {
    
    //case 1, one corner of one rectangle lands in the other rectangle
    //case 2, one rectangle partially covers the entirety of the other rectangle either vertically or horizontally
    
    MyPoint *uL = [[MyPoint alloc] initWithX:-2 withY:2];
    MyPoint *lR = [[MyPoint alloc] initWithX:2 withY:-2];
    Rectangle *upper = [[Rectangle alloc] initWithUL:uL withLR:lR];
    
    MyPoint *uL2 = [[MyPoint alloc] initWithX:-3 withY:-1];
    MyPoint *lR2 = [[MyPoint alloc] initWithX:10 withY:-12];
    Rectangle *lower = [[Rectangle alloc] initWithUL:uL2 withLR:lR2];
    
    MyPoint *uL3 = [[MyPoint alloc] initWithX:-3 withY:3];
    MyPoint *lR3 = [[MyPoint alloc] initWithX:0 withY:-3];
    Rectangle *lower3 = [[Rectangle alloc] initWithUL:uL3 withLR:lR3];
    
    MyPoint *ul4 = [[MyPoint alloc] initWithX:-6 withY:-20];
    MyPoint *lr4 = [[MyPoint alloc] initWithX:-7 withY:-30];
    Rectangle *nowhere = [[Rectangle alloc] initWithUL:ul4 withLR:lr4];
    
    NSLog(@"%d", [RectangleUtility testRectangle:upper withRectangle:lower]);
    NSLog(@"%d", [RectangleUtility testRectangle:lower withRectangle:lower3]);
    NSLog(@"%d", [RectangleUtility testRectangle:upper withRectangle:lower3]);

    NSLog(@"%d", [RectangleUtility testRectangle:nowhere withRectangle:upper]);
    NSLog(@"%d", [RectangleUtility testRectangle:nowhere withRectangle:lower]);
    NSLog(@"%d", [RectangleUtility testRectangle:nowhere withRectangle:lower3]);
    
  }
    return 0;
}
