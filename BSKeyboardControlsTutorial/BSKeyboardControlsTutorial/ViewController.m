//
//  ViewController.m
//  BSKeyboardControlsTutorial
//
//  Created by Vincent Faller on 6/23/13.
//  Copyright (c) 2013 Vincent Faller. All rights reserved.
//

#import "ViewController.h"
#import "BSKeyboardControls.h"

@interface ViewController ()

@end

@implementation ViewController

@synthesize keyboardControls;

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    NSArray *fields = @[field1,field2,field3,field4,field5];
    
    [self setKeyboardControls:[[BSKeyboardControls alloc] initWithFields:fields]];
    [keyboardControls setDelegate:self];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)textFieldDidBeginEditing:(UITextField *)textField
{
    [keyboardControls setActiveField:textField];
}

- (void)textViewDidBeginEditing:(UITextView *)textView
{
    [keyboardControls setActiveField:textView];
}


- (void)keyboardControls:(BSKeyboardControls *)keyboardControls selectedField:(UIView *)field inDirection:(BSKeyboardControlsDirection)direction
{
}

- (void)keyboardControlsDonePressed:(BSKeyboardControls *)controls
{
    [controls.activeField resignFirstResponder];
}

@end
