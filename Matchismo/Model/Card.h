//
//  Card.h
//  Matchismo
//
//  Created by Rebecca on 14-1-20.
//  Copyright (c) 2014年 Rebecca. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Card : NSObject

@property (strong,nonatomic) NSString *contents;
@property (nonatomic, getter = isChosen) BOOL chosen;
@property (nonatomic, getter=isMatched) BOOL matched;

//1. boolean do not worry about the memory it is not in a heap.
//2.memory in the heap, will keep until the last strong point finished.
// can be a new point that not point to anything.
//3. you can change getter is name


//methods

-(int)match:(NSArray *)otherCards;
//return 0 if not match
//positive number will show how good the mauching is.

@end
