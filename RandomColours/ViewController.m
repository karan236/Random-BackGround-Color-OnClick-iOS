//
//  ViewController.m
//  RandomColours
//
//  Created by Karan Ghorai on 08/06/21.
//

#import "ViewController.h"

@interface ViewController (){
    int lastColor;
    int randomArrayIndex;
}
    
@end

@implementation ViewController{
}

-(instancetype)init{
    if(self=[super init]){
        lastColor = -1;
        randomArrayIndex = 4;
    }
    return self;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    _RandomButton.layer.cornerRadius = 70;
    _RandomButton.layer.borderWidth = 1;
    _RandomButton.layer.borderColor = [UIColor whiteColor].CGColor;
}


- (IBAction)RandomButtonAction:(id)sender {
    NSArray *arrayOfColors = [NSArray arrayWithObjects:[UIColor redColor],[UIColor yellowColor],
                              [UIColor whiteColor],[UIColor blueColor],[UIColor purpleColor],
                              [UIColor greenColor],[UIColor orangeColor],[UIColor lightGrayColor],[UIColor darkGrayColor],[UIColor magentaColor],nil];
    
    while(lastColor == randomArrayIndex){
        randomArrayIndex = rand() % [arrayOfColors count];
    }
    
    lastColor = randomArrayIndex;
    
    self.view.backgroundColor = [arrayOfColors objectAtIndex:randomArrayIndex];
}
@end
