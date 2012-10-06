//  Name: Peter Tran
//  Course: CPSC 491T
//  Due Date: 10/01/2012
//  Assignment: #3 - Calculator
//
//  ViewController.m
//  Calculator
//
//  Created by Peter tran on 18/09/2012.
//  Copyright (c) 2012 Tran.Peter. All rights reserved.
//



#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

@synthesize calcEngine = _calcEngine;
@synthesize calcDisplay = _calcDisplay;

@synthesize buttonPlus = _buttonPlus;
@synthesize buttonMinus = _buttonMinus;
@synthesize buttonMultiply = _buttonMultiply;
@synthesize buttonDivide = _buttonDivide;

double currentValue = 0;
double tempValue = 0;

bool statePlus = false;
bool stateMinus = false;
bool stateMultiply = false;
bool stateDivide = false;
bool stateReadyCalc = false;

//Check if any operends were pressed
bool numPressed = false;

bool multCalc = false;

NSMutableString *inputString;


- (IBAction)button0:(id)sender
{
    currentValue = (currentValue * 10) + 0;
    _calcDisplay.text = [NSString stringWithFormat:@"%.0f", currentValue];
    numPressed = true;
}

- (IBAction)button1:(id)sender
{
    currentValue = (currentValue * 10) + 1;
    _calcDisplay.text = [NSString stringWithFormat:@"%.0f", currentValue];
    numPressed = true;
}

- (IBAction)button2:(id)sender
{
    currentValue = (currentValue * 10) + 2;
    _calcDisplay.text = [NSString stringWithFormat:@"%.0f", currentValue];
    numPressed = true;
}

- (IBAction)button3:(id)sender
{
    currentValue = (currentValue * 10) + 3;
    _calcDisplay.text = [NSString stringWithFormat:@"%.0f", currentValue];
    numPressed = true;
}

- (IBAction)button4:(id)sender
{
    
    currentValue = (currentValue * 10) + 4;
    _calcDisplay.text = [NSString stringWithFormat:@"%.0f", currentValue];
    numPressed = true;
}

- (IBAction)button5:(id)sender
{
    currentValue = (currentValue * 10) + 5;
    _calcDisplay.text = [NSString stringWithFormat:@"%.0f", currentValue];
    numPressed = true;
}

- (IBAction)button6:(id)sender
{
    currentValue = (currentValue * 10) + 6;
    _calcDisplay.text = [NSString stringWithFormat:@"%.0f", currentValue];
    numPressed = true;
}

- (IBAction)button7:(id)sender
{
    currentValue = (currentValue * 10) + 7;
    _calcDisplay.text = [NSString stringWithFormat:@"%.0f", currentValue];
    numPressed = true;
}

- (IBAction)button8:(id)sender
{
    currentValue = (currentValue * 10) + 8;
    _calcDisplay.text = [NSString stringWithFormat:@"%.0f", currentValue];
    numPressed = true;
}

- (IBAction)button9:(id)sender
{
    currentValue = (currentValue * 10) + 9;
    _calcDisplay.text = [NSString stringWithFormat:@"%.0f", currentValue];
    numPressed = true;
}

- (IBAction)buttonPlus:(id)sender
{
    //Button Operations Highligthing
    _buttonPlus.backgroundColor = [UIColor grayColor];
    _buttonMinus.backgroundColor = nil;
    _buttonMultiply.backgroundColor = nil;
    _buttonDivide.backgroundColor = nil;
    
    
    //Determines if '+' is the first operation to be calculated
    if(statePlus != true && stateReadyCalc != true)
    {
        self.calcEngine.currentOperation = '+';
        statePlus = true;
        stateMinus = stateMultiply = stateDivide = false;
        self.calcEngine.storedOperand = currentValue;
        //Prevents the stored value to be overwritten if calculations have already been done
        if(multCalc == false)
        {
            self.calcEngine.storedOperand = currentValue;
        }
        currentValue = 0;
        stateReadyCalc = true;
        numPressed = false;
    }
    else
    {
        statePlus = true;
        stateMinus = stateMultiply = stateDivide = false;
        //Checks to determine to add new value or increment from previous value
        if(numPressed == true)
        {
            tempValue = currentValue;
            self.calcEngine.currentOperand = currentValue;
            [self.calcEngine calculations];
            currentValue = 0;
            numPressed = false;
        }
        else
        {
            self.calcEngine.currentOperand = tempValue;
            [self.calcEngine calculations];
             
        }
        self.calcEngine.currentOperation = '+';
        _calcDisplay.text = [NSString stringWithFormat:@"%f", self.calcEngine.storedOperand];
        multCalc = true;
    }
}

- (IBAction)buttonMinus:(id)sender
{
    //Button Operations Highlighting
    _buttonMinus.backgroundColor = [UIColor grayColor];
    _buttonPlus.backgroundColor = nil;
    _buttonMultiply.backgroundColor = nil;
    _buttonDivide.backgroundColor = nil;
    
    
    //Determines if '-' is the first operation to be calculated
    if(stateMinus != true && stateReadyCalc != true)
    {
        self.calcEngine.currentOperation = '-';
        stateMinus = true;
        statePlus = stateMultiply = stateDivide = false;
        self.calcEngine.storedOperand = currentValue;
        //Prevents the stored value to be overwritten if calculations have already been done
        if(multCalc == false)
        {
            self.calcEngine.storedOperand = currentValue;
            
        }
        currentValue = 0;
        stateReadyCalc = true;
    }
    else
    {
        stateMinus = true;
        statePlus = stateMultiply = stateDivide = false;
        //Checks to determine to subtract new value or decrement from previous value
        if(numPressed == true)
        {
            tempValue = currentValue;
            self.calcEngine.currentOperand = currentValue;
            [self.calcEngine calculations];
            currentValue = 0;
            numPressed = false;
        }
        else
        {
            self.calcEngine.currentOperand = tempValue;
            [self.calcEngine calculations];
            
        }
        self.calcEngine.currentOperation = '-';
        _calcDisplay.text = [NSString stringWithFormat:@"%f", self.calcEngine.storedOperand];
        multCalc = true;
    }
}

- (IBAction)buttonMultiply:(id)sender
{
    //Button Operations Highligthing
    _buttonMultiply.backgroundColor = [UIColor grayColor];
    _buttonPlus.backgroundColor = nil;
    _buttonMinus.backgroundColor = nil;
    _buttonDivide.backgroundColor = nil;
    
    //Determines if '*' is the first operation to be calculated
    if(stateMultiply != true && stateReadyCalc != true)
    {
        self.calcEngine.currentOperation = '*';
        stateMultiply = true;
        statePlus = stateMinus = stateDivide = false;
        self.calcEngine.storedOperand = currentValue;
        if(multCalc == false)
        {
            self.calcEngine.storedOperand = currentValue;
            
        }
        currentValue = 0;
        stateReadyCalc = true;
        numPressed = false;
    }
    else
    {
        stateMultiply = true;
        statePlus = stateMinus = stateDivide = false;
        //Checks to determine to multiply with new value or multiply with previous value
        if(numPressed == true)
        {
            tempValue = currentValue;
            self.calcEngine.currentOperand = currentValue;
            [self.calcEngine calculations];
            currentValue = 0;
            numPressed = false;
        }
        else
        {
            self.calcEngine.currentOperand = tempValue;
            [self.calcEngine calculations];
            
        }
        self.calcEngine.currentOperation = '*';
        _calcDisplay.text = [NSString stringWithFormat:@"%f", self.calcEngine.storedOperand];
        multCalc = true;
    }
}

- (IBAction)buttonDivide:(id)sender
{
    //Button Operations Highligthing
    _buttonDivide.backgroundColor = [UIColor grayColor];
    _buttonPlus.backgroundColor = nil;
    _buttonMinus.backgroundColor = nil;
    _buttonMultiply.backgroundColor = nil;
    
    //Determines if '/' is the first operation to be calculated
    if(stateDivide != true  && stateReadyCalc != true)
    {
        self.calcEngine.currentOperation = '/';
        stateDivide = true;
        statePlus = stateMinus = stateMultiply = false;
        self.calcEngine.storedOperand = currentValue;
        if(multCalc == false)
        {
            self.calcEngine.storedOperand = currentValue;
            
        }
        currentValue = 0;
        stateReadyCalc = true;
        numPressed = false;
    }
    else
    {
        stateDivide = true;
        statePlus = stateMinus = stateMultiply = false;
        //Checks to determine to divide with new value or divide with previous value
        if(numPressed == true)
        {
            tempValue = currentValue;
            self.calcEngine.currentOperand = currentValue;
            [self.calcEngine calculations];
            currentValue = 0;
            numPressed = false;
        }
        else
        {
            self.calcEngine.currentOperand = tempValue;
            [self.calcEngine calculations];
            
        }
        self.calcEngine.currentOperation = '/';
        _calcDisplay.text = [NSString stringWithFormat:@"%f", self.calcEngine.storedOperand];
        multCalc = true;
    }
}

- (IBAction)buttonEqual:(id)sender
{
    //Button Operations Highligthing
    _buttonDivide.backgroundColor = nil;
    _buttonPlus.backgroundColor = nil;
    _buttonMinus.backgroundColor = nil;
    _buttonMultiply.backgroundColor = nil;
    
    //Display the current operation to NSLog
    NSLog(@"%c", self.calcEngine.currentOperation);
    
    //Checks if any value were inputted if not display error in NSLog
    if(self.calcEngine.currentOperation !=  ' ')
    {
        self.calcEngine.incomingOperation = self.calcEngine.currentOperation;
        self.calcEngine.currentOperand = currentValue;
        self.calcEngine.currentOperation = '=';
        [self.calcEngine calculations];
        _calcDisplay.text = [NSString stringWithFormat:@"%f", self.calcEngine.storedOperand];
        currentValue = 0;
    }
    else
    {
        NSLog(@"No valid inputs or operation entered");
    }
}


- (IBAction)buttonRoot:(id)sender
{
    //Button Operations Highligthing
    _buttonDivide.backgroundColor = nil;
    _buttonPlus.backgroundColor = nil;
    _buttonMinus.backgroundColor = nil;
    _buttonMultiply.backgroundColor = nil;
    
    //Display the current operation to NSLog
    NSLog(@"%c", self.calcEngine.currentOperation);
    

    if(numPressed == true)
    {
        //Checks if 0 was passed to be square-rooted
        if(currentValue != 0)
        {
            self.calcEngine.storedOperand = currentValue;
            self.calcEngine.currentOperation = 'r';
            [self.calcEngine calculations];
            _calcDisplay.text = [NSString stringWithFormat:@"%f", self.calcEngine.storedOperand];
        }
        else
        {
            NSLog(@"Cannot √ no input entered");
        }
    }
    else
    {
        self.calcEngine.currentOperation = 'r';
        [self.calcEngine calculations];
        _calcDisplay.text = [NSString stringWithFormat:@"%f", self.calcEngine.storedOperand];
    }
    
    statePlus = true;
    stateMinus = true;
    stateMultiply = true;
    stateDivide = true;
}


- (IBAction)buttonPosNeg:(id)sender
{
    //Checks to see whether to change the state of the calculated value or inputted value
    if(numPressed == true)
    {
        currentValue = currentValue * -1;
        _calcDisplay.text = [NSString stringWithFormat:@"%.0f", currentValue];
    }
    else
    {
        self.calcEngine.storedOperand = self.calcEngine.storedOperand * -1;
        _calcDisplay.text = [NSString stringWithFormat:@"%.0f", currentValue];
    }
    
}

- (IBAction)buttonDecimal:(id)sender
{
    //Incomplete
}

- (IBAction)buttonClear:(id)sender
{
    currentValue = 0;
    _calcDisplay.text = [NSString stringWithFormat:@"0"];
   
    _buttonPlus.backgroundColor = nil;
    _buttonMinus.backgroundColor = nil;
    _buttonMultiply.backgroundColor = nil;
    _buttonDivide.backgroundColor = nil;
    
    self.calcEngine.storedOperand = 0;
    self.calcEngine.currentOperation = '\0';
    self.calcEngine.currentOperand = 0;
    self.calcEngine.incomingOperation = '\0';
    
    statePlus = false;
    stateMinus = false;
    stateMultiply = false;
    stateDivide = false;
    stateReadyCalc = false;
    
    numPressed = false;
    
    multCalc = false;
}


- (void)viewDidLoad
{
    [super viewDidLoad];
    _calcEngine = [[calcEngine alloc] init];
        
    self.calcEngine.storedOperand = 0;
    self.calcEngine.currentOperation = '\0';
    self.calcEngine.currentOperand = 0;
    self.calcEngine.incomingOperation = '\0';
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)viewDidUnload
{
    [self setCalcDisplay:nil];
    [self setButtonPlus:nil];
    [self setButtonMinus:nil];
    [self setButtonMultiply:nil];
    [self setButtonDivide:nil];
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    if ([[UIDevice currentDevice] userInterfaceIdiom] == UIUserInterfaceIdiomPhone) {
        return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
    } else {
        return YES;
    }
}

@end
