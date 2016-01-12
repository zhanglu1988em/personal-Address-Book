//
//  AddContactViewController.m
//  私人通信录
//
//  Created by zhanglu1988em on 16/1/11.
//  Copyright © 2016年 wbder. All rights reserved.
//

#import "AddContactViewController.h"
#import "ContactMode.h"

@interface AddContactViewController ()

@property (weak, nonatomic) IBOutlet UITextField *nameField;
@property (weak, nonatomic) IBOutlet UITextField *phoneField;
@property (weak, nonatomic) IBOutlet UIButton *saveBtn;

@end

@implementation AddContactViewController
- (IBAction)gotoContactView:(id)sender {
    
    
    if ([self.delegate respondsToSelector:@selector(ContactViewController::)]) {
        [self.delegate ContactViewController:self :[ContactMode contactModeWithNameAndPhone:self.nameField.text :self.phoneField.text]];
        
    }
    [self.navigationController popViewControllerAnimated:YES];
    
}
- (IBAction)cancel:(id)sender {
    self.nameField.text=nil;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    [self.nameField addTarget:self action:@selector(contextChanged) forControlEvents:UIControlEventEditingChanged];
    [self.phoneField addTarget:self action:@selector(contextChanged) forControlEvents:UIControlEventEditingChanged];
    
}

-(void) contextChanged
{
    NSLog(@"%d,%d",self.nameField.text.length,self.phoneField.text.length);
    self.saveBtn.hidden = !(self.nameField.text.length && self.phoneField.text.length);
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
