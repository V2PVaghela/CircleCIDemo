//
//  ViewController.m
//  JSON_CollectionView
//
//  Created by anirudh on 01/08/16.
//  Copyright © 2016 V2 Solutions. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

//@property (nonatomic, strong) NSString *userID;
//@property (nonatomic, strong) NSString *password;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)loginButton:(id)sender {
    if ([self checkUserName:self.userIDTextField.text] && [self userPassword:self.passwordTextField.text]) {
        [self performSegueWithIdentifier:@"login" sender:self];
    }
}

-(BOOL)checkUserName:(NSString *)name {
   
    NSCharacterSet *set = [NSCharacterSet whitespaceCharacterSet];
    NSString *trimmedString = [name stringByTrimmingCharactersInSet:set];
    NSCharacterSet * setspecial = [[NSCharacterSet characterSetWithCharactersInString:@"@#$%^&*_!~(){}[].,/?=+-"] invertedSet];
    
    if (trimmedString.length == 0 || [trimmedString rangeOfCharacterFromSet:setspecial].location)
    {
        return false;
    }else {
        return true;
    }

    return nil;
}

-(BOOL)userPassword:(NSString *)password {
    NSCharacterSet * set = [[NSCharacterSet characterSetWithCharactersInString:@"abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLKMNOPQRSTUVWXYZ0123456789@#$%^&*_!~(){}[].,/?=+-"] invertedSet];
    
    if (password.length >= 8 && [password rangeOfCharacterFromSet:set].length != NSNotFound) {
        return true;
    }
    return nil;
}

@end
