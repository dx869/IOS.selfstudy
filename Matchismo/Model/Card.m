//
//  Card.m
//  Matchismo
//
//  Created by Rebecca on 14-1-20.
//  Copyright (c) 2014年 Rebecca. All rights reserved.
//

#import "Card.h"
@interface Card()
@end

@implementation Card

-(int) match:(NSArray *)otherCards
{
    int score=0;
    // will be 0 for local val when init
    
    //FOR LOOP!~
    for (Card * card in otherCards) {
        if([card.contents isEqualToString:self.contents]){
            score++;
        }
    }

    //dot notation only for property. call  getter or setter,
    // depence on which side the line is .
    
    //dot notation is only for getter and setter.
    
    return score;
}



@end
