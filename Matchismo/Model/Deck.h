//
//  Deck.h
//  Matchismo
//
//  Created by Rebecca on 14-1-23.
//  Copyright (c) 2014年 Rebecca. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Card.h"
@interface Deck : NSObject


//two methods
-(void) addCard :(Card *)card atTop:(BOOL)atTop;
-(void) addCard:(Card *)card;

-(Card *)drawRandomCard;

@end
