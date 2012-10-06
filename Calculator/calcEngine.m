//  Name: Peter Tran
//  Course: CPSC 491T
//  Due Date: 10/01/2012
//  Assignment: #3 - Calculator
//
//  calcEngine.m
//  Calculator
//
//  Created by Peter tran on 18/09/2012.
//  Copyright (c) 2012 Tran.Peter. All rights reserved.
//

#import "calcEngine.h"

@implementation calcEngine

@synthesize storedOperand;
@synthesize currentOperand;
@synthesize incomingOperation;
@synthesize currentOperation;

- (void) calculations
{
    if(self.currentOperation == '+')
    {
        self.storedOperand = self.storedOperand + self.currentOperand;
        
        NSLog(@"Stored Input: %.0f", self.storedOperand);
        NSLog(@"Current Input: %.0f", self.currentOperand);
    }
    else if(self.currentOperation == '-')
    {
        self.storedOperand = self.storedOperand - self.currentOperand;
        NSLog(@"Stored Input: %.0f", self.storedOperand);
        NSLog(@"Current Input: %.0f", self.currentOperand);
    }
    else if(self.currentOperation == '*')
    {
        self.storedOperand = self.storedOperand * self.currentOperand;
        NSLog(@"Stored Input: %.0f", self.storedOperand);
        NSLog(@"Current Input: %.0f", self.currentOperand);
    }
    else if(self.currentOperation == '/')
    {
        self.storedOperand = self.storedOperand / self.currentOperand;
        NSLog(@"Stored Input: %.0f", self.storedOperand);
        NSLog(@"Current Input: %.0f", self.currentOperand);
    }
    else if(self.currentOperation == 'r')
    {
         //Check to see if a negative value was passed to be square-rooted
        if(self.storedOperand > 0)
        {
            self.storedOperand = sqrt(self.storedOperand);
            self.currentOperand = 0;
        }
        else
        {
            NSLog(@"Cannot √ because of negative value");
        }
           
    }
    else if(self.currentOperation == '=')
    {
        //Check which operation was inputted before '='
        if(self.incomingOperation == '+')
        {
            self.storedOperand = self.storedOperand + self.currentOperand;
            
            NSLog(@"Stored Input: %.0f", self.storedOperand);
            NSLog(@"Current Input: %.0f", self.currentOperand);
        }
        else if(self.incomingOperation == '-')
        {
            self.storedOperand = self.storedOperand - self.currentOperand;
            NSLog(@"Stored Input: %.0f", self.storedOperand);
            NSLog(@"Current Input: %.0f", self.currentOperand);
        }
        else if(self.incomingOperation == '*')
        {
            self.storedOperand = self.storedOperand * self.currentOperand;
            NSLog(@"Stored Input: %.0f", self.storedOperand);
            NSLog(@"Current Input: %.0f", self.currentOperand);
        }
        else if(self.incomingOperation == '/')
        {
            self.storedOperand = self.storedOperand / self.currentOperand;
            NSLog(@"Stored Input: %.0f", self.storedOperand);
            NSLog(@"Current Input: %.0f", self.currentOperand);
        }
    }
}


@end
