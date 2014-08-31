//
//  RegistrationViewController.m
//  Registration
//
//  Created by Dayanand Deshpande on 24/08/14.
//  Copyright (c) 2014 Jay Deshpande. All rights reserved.
//

#import "RegistrationViewController.h"

@interface RegistrationViewController ()

@end

@implementation RegistrationViewController

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
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (IBAction)RegisterMeClicked:(id)sender {
    
    
    /*NSString * _F_Name = [self.F_Name_Text text];
    NSString * _L_Name = [self.L_Name_Text text];
    NSString * _Email = [self.Email_Text text];
    NSString * _Username = [self.Username_Text text];
    NSString * _Password = [self.Password_Text text];*/
    
    
    

    NSString *url = [NSString stringWithFormat:@"http://deshpande.net.nz/Registration.php?F_Name='%@'&L_Name='%@'&Email='%@'&Username='%@'&Password='%@'",[self.F_Name_Text text],[self.L_Name_Text text],[self.Email_Text text], [self.Username_Text text],[self.Password_Text text]];
    //NSString *str1 =@"http://deshpande.net.nz/Registration.php?F_Name=";
    //NSString *str3 =[str1 stringByAppendingString:str2];
    //NSString *str2 = [NSString stringWithFormat:@"%@",[self.F_Name_Text text]];
    //NSString *str3 =[str1 stringByAppendingString:str2];
    //NSString *str4
    //NSLog(@"str3:%@",str3);
    
    
    NSLog(@"URL: %@", url);
        // build the request
    NSMutableURLRequest *request = [[NSMutableURLRequest alloc] init];
    [request setURL:[NSURL URLWithString:url]];
    [request setHTTPMethod:@"POST"];
    NSMutableData *body= [NSMutableData data];
    [request setHTTPBody:body];
    
    // getting answer from the server.
    // you can echo message from the server let's say :"Update finish" or something like that...
    NSData *returnData = [NSURLConnection sendSynchronousRequest:request returningResponse:NULL error:nil];
    
    NSString *returnString = [[NSString alloc] initWithData:returnData encoding:NSUTF8StringEncoding];
    NSLog(@"returned: %@", returnString);
    

    
        }


- (IBAction)BackgroundTap:(id)sender {
    [self.view endEditing:YES];
}
- (BOOL) textFieldShouldReturn:(UITextField *)textField{
    [textField resignFirstResponder];
    
    return YES;
}


@end
