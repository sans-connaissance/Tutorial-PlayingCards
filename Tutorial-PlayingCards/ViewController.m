//
//  ViewController.m
//  Tutorial-PlayingCards
//
//  Created by David Malicke on 6/30/22.
//

#import "ViewController.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet UILabel *flipsLabel;
@property (nonatomic) int flipCount;

@end

@implementation ViewController

- (void)setFlipCount:(int)flipCount {
    _flipCount = flipCount;
    self.flipsLabel.text = [NSString stringWithFormat:@"Flips: %d", self.flipCount];
    NSLog(@"flipCount = %d", self.flipCount);
}

- (IBAction)touchCardButton:(UIButton *)sender {
    
    if ([sender.currentTitle length]) {
        UIImage *cardImage = [UIImage imageNamed:@"stanford"];
        [sender setBackgroundImage: cardImage forState: UIControlStateNormal];
        [sender setTitle:@"" forState: UIControlStateNormal];
    } else {
        [sender setTitle:@"A♧" forState: UIControlStateNormal];
    }
    self.flipCount++;

}


@end
