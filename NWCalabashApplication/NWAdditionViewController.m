//
//  NWAdditionViewController.m
//  NWTestProject
//
//  Created by Bruno Scheele on 4/3/12.
//  Copyright (c) 2012 Noodlewerk. All rights reserved.
//

#import "NWAdditionViewController.h"

@interface NWAdditionViewController ()
- (IBAction)didPressCalculateButton;
@end

@implementation NWAdditionViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (void)viewDidUnload
{
    resultLabel = nil;
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return YES;
}

#pragma mark UITextFieldDelegate

- (BOOL)textFieldShouldReturn:(UITextField *)textField {
    [textField resignFirstResponder];
    return NO;
}

#pragma mark UI Actions

- (void)didPressCalculateButton {
    NSNumberFormatter *numberFormatter = [[NSNumberFormatter alloc] init];
    numberFormatter.formatterBehavior = NSNumberFormatterBehavior10_4;
    
    NSString *firstNumberString = firstNumberTextField.text;
    NSString *secondNumberString = secondNumberTextfield.text;
    
    NSNumber *firstNumber = [numberFormatter numberFromString:firstNumberString];
    NSNumber *secondNumber = [numberFormatter numberFromString:secondNumberString];
    
    if (firstNumber && secondNumber) {
        NSNumber *result = [NSNumber numberWithInt:([firstNumber intValue] + [secondNumber intValue])];
        resultLabel.text = [[numberFormatter stringFromNumber:result] description];
    }
}

@end
