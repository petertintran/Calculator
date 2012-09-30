//
//  ViewController.h
//  Calculator
//
//  Created by Lion User on 18/09/2012.
//  Copyright (c) 2012 Tran.Peter. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "calcEngine.h"

@interface ViewController : UIViewController
{
    calcEngine* calcEngine;
}

@property (strong, nonatomic) IBOutlet UILabel *calcDisplay;

//Numeric Buttons
- (IBAction) button0:(id)sender;
- (IBAction) button1:(id)sender;
- (IBAction) button2:(id)sender;
- (IBAction) button3:(id)sender;
- (IBAction) button4:(id)sender;
- (IBAction) button5:(id)sender;
- (IBAction) button6:(id)sender;
- (IBAction) button7:(id)sender;
- (IBAction) button8:(id)sender;
- (IBAction) button9:(id)sender;

//Mathematical Calculation Buttons
- (IBAction) buttonPlus:(id)sender;
- (IBAction) buttonMinus:(id)sender;
- (IBAction) buttonMultiply:(id)sender;
- (IBAction) buttonDivide:(id)sender;
- (IBAction) buttonRoot:(id)sender;

//Misc Buttons
- (IBAction) buttonEqual:(id)sender;
- (IBAction) buttonDecimal:(id)sender;
- (IBAction) buttonClear:(id)sender;
- (IBAction) buttonPosNeg:(id)sender;




@end
