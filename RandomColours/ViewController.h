//
//  ViewController.h
//  RandomColours
//
//  Created by Karan Ghorai on 08/06/21.
//

#import <UIKit/UIKit.h>

static int lastColor = -1;

@interface ViewController : UIViewController

@property (weak, nonatomic) IBOutlet UIButton *RandomButton;
- (IBAction)RandomButtonAction:(id)sender;

@end

