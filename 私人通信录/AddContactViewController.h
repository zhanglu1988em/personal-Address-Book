//
//  AddContactViewController.h
//  私人通信录
//
//  Created by zhanglu1988em on 16/1/11.
//  Copyright © 2016年 wbder. All rights reserved.
//

#import <UIKit/UIKit.h>

@class ContactMode;
@class AddContactViewController;

@protocol AddContactViewControllerDelegate  <NSObject>
@optional
-(void)ContactViewController :(AddContactViewController*) contactVc :(ContactMode*) mode;
@end

@interface AddContactViewController : UIViewController

@property (nonatomic,weak) id<AddContactViewControllerDelegate> delegate;

@end
