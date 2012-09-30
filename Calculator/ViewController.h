//
//  ViewController.h
//  Calculator
//
//  Created by Lion User on 18/09/2012.
//  Copyright (c) 2012 Tran.Peter. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

@property (strong, nonatomic) IBOutlet UILabel *calcDisplay;

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

- (IBAction) buttonPlus:(id)sender;
- (IBAction) buttonMinus:(id)sender;
- (IBAction) buttonMultiply:(id)sender;
- (IBAction) buttonDivide:(id)sender;
- (IBAction) buttonEqual:(id)sender;
- (IBAction) buttonDecimal:(id)sender;
- (IBAction) buttonRoot:(id)sender;
- (IBAction) buttonClear:(id)sender;
- (IBAction) buttonPosNeg:(id)sender;




@end
