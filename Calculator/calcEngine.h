//  Name: Peter Tran
//  Course: CPSC 491T
//  Due Date: 10/01/2012
//  Assignment: #3 - Calculator
//
//  calcEngine.h
//  Calculator
//
//  Created by Lion User on 29/09/2012.
//  Copyright (c) 2012 Tran.Peter. All rights reserved.
//
//  Created by Peter tran on 18/09/2012.
//  Copyright (c) 2012 Tran.Peter. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface calcEngine : NSObject
{
    double storedOperand;
    double currentOperand;
    char currentOperation;
    char incomingOperation;
    
}

@property (assign) double storedOperand;
@property (assign) double currentOperand;
@property (assign) char currentOperation;
@property (assign) char incomingOperation;

- (void) calculations;



@end
