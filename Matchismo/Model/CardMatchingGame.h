//
//  CardMatchingGame.h
//  Matchismo
//
//  Created by Rebecca on 14-1-24.
//  Copyright (c) 2014年 Rebecca. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Deck.h"

@interface CardMatchingGame : NSObject

// designated initializer
-(instancetype) initWithCardCount:(NSUInteger) count usingDeck:(Deck *)deck;
-(void) chooseCardAtIndex:(NSUInteger)index;
-(Card *)cardAtIndex:(NSUInteger)index;


@property (nonatomic, readonly) NSInteger score;
// ready only, no getter, pubilcly there is no getter.

@end
