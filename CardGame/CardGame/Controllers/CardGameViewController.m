//
//  CardGameViewController.m
//  CardGame
//
//  Created by Mac on 16/3/16.
//  Copyright © 2016年 zk. All rights reserved.
//

#import "CardGameViewController.h"
#import "CardGame.h"

@interface CardGameViewController ()
@property (nonatomic,strong) Deck *deck;
@property (nonatomic,strong) CardGame *game;
@property (weak, nonatomic) IBOutlet UILabel *scoreLabel;
//以集合的形式保存所有的Button
@property (strong, nonatomic) IBOutletCollection(UIButton) NSArray *cardButtons;

@end

@implementation CardGameViewController
//初始化牌桌
-(Deck*) deck{
    if (!_deck) {
        _deck=[[Deck alloc]init];
    }
    return _deck;
}
//初始化游戏
-(CardGame*) game{
    if (!_game) {
        _game=[[CardGame alloc] initWithCardCount:self.cardButtons.count usingDeck:self.deck];
    }
    return _game;
}
//更新UI
-(void) updateUI{
    for (UIButton *cardButton in self.cardButtons) {
        //获得按钮的下标
        NSUInteger  index=[self.cardButtons indexOfObject:cardButton];
        Card *card=[self.game cardAtIndex:index];
        [cardButton setTitle:[self titleForCard:card] forState:UIControlStateNormal];
       
        [cardButton setBackgroundImage:[self imageForCard:card] forState:UIControlStateNormal];
        cardButton.enabled=![card isMatched];
        self.scoreLabel.text=[NSString stringWithFormat:@"Score:%d",self.game.score];
    }
}

//设置背景图片
-(UIImage*) imageForCard:(Card *)card{
    if ([card isChosen]) {
        return [UIImage imageNamed:@"cardfront.png"];
    }else{
        return [UIImage imageNamed:@"cardback.png"];
    }
}

- (IBAction)touchCardButton:(UIButton *)sender {
    NSUInteger chooseCardIndex=[self.cardButtons indexOfObject:sender];
    [self.game chooseCardAtIndex:chooseCardIndex];
    [self updateUI];
}

//设置标题
-(NSString*) titleForCard:(Card*)card{
    return [card isChosen]?card.content:@"";
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end


























