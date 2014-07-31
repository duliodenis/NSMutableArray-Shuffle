//
//  NSMutableArray+Shuffle.m
//  A helpful category on NSMutableArray that provides a method to shuffle the array.
//
//  Created by Dulio Denis on 11/8/13.
//  Copyright (c) 2013 ddApps. All rights reserved.
//

#import "NSMutableArray+Shuffle.h"

@implementation NSMutableArray (Shuffle)

- (void)shuffle
{
    NSUInteger count = [self count];
    for (NSUInteger i = 0; i < count; ++i) {
        // Select a random element between i and end of array to swap with.
        NSInteger nElements = count - i;
        NSInteger n = arc4random_uniform((u_int32_t)nElements) + i;
        [self exchangeObjectAtIndex:i withObjectAtIndex:n];
    }
}

@end
