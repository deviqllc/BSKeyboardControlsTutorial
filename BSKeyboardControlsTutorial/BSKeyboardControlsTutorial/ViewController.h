//
//  ViewController.h
//  BSKeyboardControlsTutorial
//
//  Created by Vincent Faller on 6/23/13.
//  Copyright (c) 2013 Vincent Faller. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "BSKeyboardControls.h"

@interface ViewController : UIViewController <UITextFieldDelegate,BSKeyboardControlsDelegate>
{
    IBOutlet UITextField *field1;
    IBOutlet UITextField *field2;
    IBOutlet UITextField *field3;
    IBOutlet UITextField *field4;
    IBOutlet UITextField *field5;
}

@property (nonatomic, strong) BSKeyboardControls *keyboardControls;

@end
