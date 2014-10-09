//
//  PlayingCardDeck.m
//  Matchismo
//
//  Created by Rebecca on 14-1-23.
//  Copyright (c) 2014年 Rebecca. All rights reserved.
//

#import "PlayingCardDeck.h"
#import "PlayingCard.h"

@implementation PlayingCardDeck


// init and alloc has to been together.
//but init only happens once.
// instance type is return the type of what you give.
- (instancetype) init
{
    self= [super init];
    // this is standard.
    // if not init then return nil
    
    if (self) {
        for (NSString * suit in [PlayingCard validSuits]) {
            for (NSUInteger rank=1; rank<=[PlayingCard maxRank]; rank++) {
                PlayingCard * card=[[PlayingCard alloc]init];
                card.rank=rank;
                card.suit=suit;
                [self addCard:card];
            }
        }
    }
    return self;
}

//init will return self.





@end
