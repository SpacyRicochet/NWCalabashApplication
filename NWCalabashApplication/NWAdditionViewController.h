//
//  NWAdditionViewController.h
//  NWTestProject
//
//  Created by Bruno Scheele on 4/3/12.
//  Copyright (c) 2012 Noodlewerk. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface NWAdditionViewController : UIViewController <UITextFieldDelegate> {
    IBOutlet UIButton *calculateButton;
    IBOutlet UITextField *firstNumberTextField;
    IBOutlet UITextField *secondNumberTextfield;
    IBOutlet UILabel *plusSignLabel;
    IBOutlet UILabel *resultLabel;
}

@end
