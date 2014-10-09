//
//  Deck.m
//  Matchismo
//
//  Created by Rebecca on 14-1-23.
//  Copyright (c) 2014年 Rebecca. All rights reserved.
//

#import "Deck.h"

@interface Deck()
@property  (strong, nonatomic) NSMutableArray *cards;// of  Card
// mutable means we can add or delete the array.
@end

@implementation Deck



-(NSMutableArray *)cards
{
    // to garentee the cards in never nil;
    if (!_cards) _cards=[[NSMutableArray alloc]init];
    return _cards;
}

-(void)addCard:(Card *)card atTop:(BOOL)atTop
{
    if (atTop) {
        [self.cards insertObject:card atIndex:0];
    }else{
        [self.cards addObject:card];
        //add at the end of array.
        //cards will only return _cards, which is 0 nil.
        //because we did not allocate and init the cards
        //that's wht we change the getter
    }
}

-(void)addCard:(Card *)card
{
    [self addCard:card atTop:NO];
}
-(Card *)drawRandomCard
{
    Card * randomCard =nil;
    if ([self.cards count]) {
        unsigned index= arc4random() % [self.cards count];
        randomCard =self.cards[index];
        [self.cards removeObjectAtIndex:index];
    }

    
    return randomCard;
}










@end
