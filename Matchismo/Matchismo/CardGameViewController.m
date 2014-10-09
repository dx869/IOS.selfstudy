//
//  CardGameViewController.m
//  Matchismo
//
//  Created by Rebecca on 14-1-20.
//  Copyright (c) 2014年 Rebecca. All rights reserved.
//

#import "CardGameViewController.h"
#import "PlayingCardDeck.h"
#import "CardMatchingGame.h"

@interface CardGameViewController ()
@property (nonatomic) int flipCount;
@property (nonatomic , strong) Deck * deck;
@property (weak, nonatomic) IBOutlet UILabel *ScoreLabel;

// it is not ordered.
@property (strong, nonatomic) IBOutletCollection(UIButton) NSArray *cardButtons;
@property (nonatomic, strong)CardMatchingGame * game;
//@property (strong, nonatomic) PlayingCardDeck * testDeck;
@end

@implementation CardGameViewController

-(CardMatchingGame *)game
{
    if (!_game) {
        _game= [[CardMatchingGame alloc]initWithCardCount: [self.cardButtons count] usingDeck: [self createDeck]];

    }
    return _game;
}

// sender is the accute button you touching on.
- (IBAction)touchCardButton:(UIButton *)sender
{
    
    int cardIndex= [self.cardButtons indexOfObject: sender];
    NSLog(@"card index is :, %d", cardIndex);
    [self.game chooseCardAtIndex:cardIndex];
    [self updateUI];
}
-(void) updateUI{
    for (UIButton  * cardButton in self.cardButtons) {
        int cardButtonIndex=[self.cardButtons indexOfObject:cardButton];
        Card * card=[self.game cardAtIndex:cardButtonIndex];
        [cardButton setTitle:[self titleForCard:card] forState:UIControlStateNormal];
        [cardButton setBackgroundImage:[self backgroundImageForCard:card] forState:UIControlStateNormal];
        cardButton.enabled = !card.isMatched;
    }
    
    self.ScoreLabel.text =[NSString stringWithFormat:@"Score : %d" , self.game.score];
}

-(NSString *) titleForCard:(Card *) card
{
    return card.isChosen ? card.contents : @"";
}

-(UIImage *)backgroundImageForCard:(Card *)card{
    return [UIImage imageNamed:card.chosen ? @"cardFront" :@"cardBack"];
}
-(Deck *) createDeck{
    return [[PlayingCardDeck alloc]init];
}
/*--------------for assignment 1--------------------
-(PlayingCardDeck *)testDeck
{
    if (!_testDeck) {
        _testDeck= [[PlayingCardDeck alloc]init];
    }
    return _testDeck;
}

*/

@end
