//
//  ViewController.h
//  SecondIOS
//

#import <UIKit/UIKit.h>
@interface ViewController : UIViewController
@property (strong, nonatomic) IBOutlet UILabel *myTxt;
- (IBAction)clickHandler:(UIButton *)sender;
@property (weak, nonatomic) IBOutlet UIButton *loginBtn;

@end

