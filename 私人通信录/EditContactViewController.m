//
//  EditContactViewController.m
//  私人通信录
//
//  Created by zhanglu1988em on 16/1/12.
//  Copyright © 2016年 wbder. All rights reserved.
//

#import "EditContactViewController.h"
#import "ContactMode.h"

@interface EditContactViewController ()
@property (weak, nonatomic) IBOutlet UITextField *nameField;
@property (weak, nonatomic) IBOutlet UITextField *phoneField;
@property (weak, nonatomic) IBOutlet UIButton *saveBtn;
@property (weak, nonatomic) IBOutlet UIBarButtonItem *editBtn;
@end

@implementation EditContactViewController

- (void)setContact:(ContactMode *)contact
{
    _contact = contact;
  
}
- (IBAction)editContact:(id)sender {
  
    if (self.saveBtn.isHidden) {
        [self.saveBtn setHidden:NO] ;
        [self.nameField setEnabled:YES];
        [self.phoneField setEnabled:YES];
        [self.editBtn setTitle:@"取消"];
    }
    
}
- (IBAction)saveContact:(id)sender {
    self.contact.name = self.nameField.text;
    self.contact.phonenum = self.phoneField.text;
    if ([self.delegate respondsToSelector:@selector(refreshData)]) {
        [self.delegate refreshData];
    }
    [self.navigationController popViewControllerAnimated:YES];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    self.nameField.text = self.contact.name;
    self.phoneField.text = self.contact.phonenum;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
