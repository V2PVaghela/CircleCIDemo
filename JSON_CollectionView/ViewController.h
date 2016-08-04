//
//  ViewController.h
//  JSON_CollectionView
//
//  Created by anirudh on 01/08/16.
//  Copyright © 2016 V2 Solutions. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
@property (weak, nonatomic) IBOutlet UITextField *userIDTextField;
@property (weak, nonatomic) IBOutlet UITextField *passwordTextField;

- (IBAction)loginButton:(id)sender;
-(BOOL)checkUserName:(NSString *)name;
-(BOOL)userPassword:(NSString *)password;

@end

