//
//  RegisterViewController.h
//  Registration
//
//  Created by Dayanand Deshpande on 24/08/14.
//  Copyright (c) 2014 Jay Deshpande. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface RegisterViewController : UIViewController<UITextFieldDelegate>
@property (strong, nonatomic) IBOutlet UITextField *F_Name_Reg;
@property (strong, nonatomic) IBOutlet UITextField *L_Name_Reg;
@property (strong, nonatomic) IBOutlet UITextField *Email_Reg;
@property (strong, nonatomic) IBOutlet UITextField *Username_Reg;
@property (strong, nonatomic) IBOutlet UITextField *Password_Reg;

- (IBAction)Backgroundtap:(id)sender;
- (IBAction)RegisterMeClicked:(id)sender;

@end
