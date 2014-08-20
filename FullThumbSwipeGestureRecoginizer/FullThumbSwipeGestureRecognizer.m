//
//  BigThumbSwipeGestureRecognizer.m
//  ThumbGestureRecognizer
//
//  Created by overboming on 8/20/14.
//  Copyright (c) 2014 ob. All rights reserved.
//

#import "FullThumbSwipeGestureRecognizer.h"
#import <objc/runtime.h>

@interface UISwipeGestureRecognizer()

- (void)touchesMoved:(NSSet *)touches withEvent:(UIEvent *)event;

@end


@implementation FullThumbSwipeGestureRecognizer

- (instancetype) initWithTarget:(id)target action:(SEL)action
{
    if (self = [super initWithTarget:target action:action]) {
        self.thumbSize = 60;
    }
    return self;
}


- (void)touchesMoved:(NSSet *)touches withEvent:(UIEvent *)event
{
    UITouch *touch = [touches anyObject];
    if (touch.majorRadius < self.thumbSize) {
        return; //dropped
    }
    else {
        [super touchesMoved:touches withEvent:event];
    }
}


@end
