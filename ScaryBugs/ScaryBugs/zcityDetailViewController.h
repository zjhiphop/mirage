//
//  zcityDetailViewController.h
//  ScaryBugs
//
//  Created by jade on 13-8-21.
//  Copyright (c) 2013年 zcity. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "RateView.h"

@class  ScaryBugDoc;

@interface zcityDetailViewController : UIViewController<UITextFieldDelegate, RateViewDelegate, UIImagePickerControllerDelegate, UINavigationControllerDelegate>


@property (weak, nonatomic) IBOutlet UITextField *titleField;
@property (weak, nonatomic) IBOutlet UILabel *detailDescriptionLabel;
@property (weak, nonatomic) IBOutlet RateView *ratingView;
@property (weak, nonatomic) IBOutlet UIImageView *imageView;
@property (strong, nonatomic) UIImagePickerController *picker;

- (IBAction)titleFieldTextChanged:(id)sender;
- (IBAction)addPictureTapped:(id)sender;
@property (strong, nonatomic) ScaryBugDoc *detailItem;
@end
