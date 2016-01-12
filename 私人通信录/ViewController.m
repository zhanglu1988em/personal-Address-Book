 //
//  ViewController.m
//  私人通信录
//
//  Created by zhanglu1988em on 16/1/10.
//  Copyright © 2016年 wbder. All rights reserved.
//

#import "ViewController.h"
#import "ContactTableViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UITextField *accountField;

@property (weak, nonatomic) IBOutlet UIButton *loginBtn;
@property (weak, nonatomic) IBOutlet UITextField *pwdField;
@property (weak, nonatomic) IBOutlet UISwitch *autoLoginSwith;
@property (weak, nonatomic) IBOutlet UISwitch *remPwdSwitch;
@end

@implementation ViewController

-(void) prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    UIViewController *vc = segue.destinationViewController;
    vc.navigationItem.title = [NSString stringWithFormat:@"%@%@",self.accountField.text,vc.navigationItem.title];
    
}
- (void)viewDidLoad {
    [super viewDidLoad];
    [_accountField addTarget:self action:@selector(contextChanged) forControlEvents:UIControlEventEditingChanged];
    [_pwdField addTarget:self action:@selector(contextChanged)forControlEvents:UIControlEventEditingChanged];
    [self  contextChanged];
}
- (IBAction)remPwd:(UISwitch *)sender {
    if (sender.isOn == NO) {
        [_autoLoginSwith setOn:NO animated:YES];
    }
}
- (IBAction)autoLogin:(UISwitch *)sender {
    if (sender.isOn == YES) {
        [_remPwdSwitch setOn:YES animated:YES];
    }
}



- (IBAction)login:(UIButton *)sender {
    if ([self.accountField.text isEqualToString:@"wbder" ]&& [self.pwdField.text isEqualToString:@"123"]) {
        //通过storyboard 获得视图控制器
        /*
        UIStoryboard *stroyboard = [UIStoryboard storyboardWithName:@"Main" bundle:nil];
        ContactTableViewController *contact = [stroyboard instantiateViewControllerWithIdentifier:@"contact"];
        [self.navigationController pushViewController:contact animated:YES ];
         */
        
        [self performSegueWithIdentifier:@"contact" sender:nil];
        
    }
 //   UIAlertAction *aler = [UIAlertAction actionWithTitle:@"密码或用户名输入错误" style:UIAlertActionStyleDefault handler:nil];

    
}

-(void) contextChanged
{
    self.loginBtn.enabled = self.accountField.text.length && self.pwdField.text.length;
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
