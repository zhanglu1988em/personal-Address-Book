//
//  EditContactViewController.h
//  私人通信录
//
//  Created by zhanglu1988em on 16/1/12.
//  Copyright © 2016年 wbder. All rights reserved.
//

#import <UIKit/UIKit.h>

@class EditContactViewController;
@protocol EditContactViewControllerDelegate <NSObject>

-(void) refreshData ;

@end

@class ContactMode;

@interface EditContactViewController : UIViewController

@property (nonatomic,strong) ContactMode*  contact;
@property(nonatomic,weak) id<EditContactViewControllerDelegate> delegate;

@end
