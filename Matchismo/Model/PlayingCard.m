//
//  PlayingCard.m
//  Matchismo
//
//  Created by Rebecca on 14-1-23.
//  Copyright (c) 2014年 Rebecca. All rights reserved.
//

#import "PlayingCard.h"

@implementation PlayingCard


// override method do not need to put into h file.
-(int)match:(NSArray *)otherCards
{
    int score =0;
    if ([otherCards count]==1) {
        PlayingCard * otherCard= [otherCards firstObject];
        if ([self.suit isEqualToString:otherCard.suit]) {
            score=1;
        }else if(self.rank ==otherCard.rank)
        {
            score=4;
        }
    }
    return score;
}

//we change the both setter and getter then we need synthesize.
@synthesize suit=_suit;

//override this method
-(NSString *)contents
{
    NSArray *rankStrings=[PlayingCard rankStirngs];
    return [rankStrings[self.rank] stringByAppendingString:self.suit];
    
}

//a @ sign will make a string to a object.
//@[ ] will create a new array.
//if getter have been named in parent then you can use it in child.
-(NSString *)suit
{
    return _suit ? _suit:@"?";
}



//using "+"sign create thing mutalite thing like this.
+(NSArray *)validSuits
{
    return @[@"♤",@"♧",@"♢",@"♡"];
}
+(NSArray *)rankStirngs
{
    return @[@"?",@"A",@"2",@"3",@"4",@"5",@"6",@"7",@"8",@"9",@"10",@"J",@"Q",@"K"];
}

+(NSUInteger) maxRank{
    return [[self rankStirngs] count]-1;
}


-(void)setSuit:(NSString *)suit
{
    if ([ [PlayingCard validSuits] containsObject: suit]) {
        _suit=suit;
    }
}

-(void)setRank:(NSUInteger) rank
{
    if (rank <= [PlayingCard maxRank]) {
        _rank=rank;
    }
}


@end
