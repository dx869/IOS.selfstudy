//
//  PlayingCard.h
//  Matchismo
//
//  Created by Rebecca on 14-1-23.
//  Copyright (c) 2014年 Rebecca. All rights reserved.
//

#import "Card.h"

@interface PlayingCard : Card

@property (strong, nonatomic) NSString *suit;
@property (nonatomic) NSUInteger rank;

+(NSArray *)validSuits;
+(NSUInteger) maxRank;

@end
