//
//  zcityDetailViewController.m
//  ScaryBugs
//
//  Created by jade on 13-8-21.
//  Copyright (c) 2013年 zcity. All rights reserved.
//

#import "zcityDetailViewController.h"
#import "ScaryBugDoc.h"
#import "ScaryBugData.h"
#import "UIImageExtras.h"

@interface zcityDetailViewController ()
- (void)configureView;
@end

@implementation zcityDetailViewController

#pragma mark - Managing the detail item

- (void)setDetailItem:(id)newDetailItem
{
    if (_detailItem != newDetailItem) {
        _detailItem = newDetailItem;
        
        // Update the view.
        [self configureView];
    }
}

- (void)configureView
{
    // Update the user interface for the detail item.

        self.ratingView.notSelectedImage = [UIImage imageNamed:@"shockedface2_empty.png"];
        self.ratingView.halfSelectedImage = [UIImage imageNamed:@"shockedface2_half.png"];
        self.ratingView.fullSelectedImage = [UIImage imageNamed:@"shockedface2_full.png"];
        self.ratingView.editable = YES;
        self.ratingView.maxRating = 5;
        self.ratingView.delegate = self;
    
    if(self.detailItem) {
        self.titleField.text = self.detailItem.data.title;
        self.ratingView.rating = self.detailItem.data.rating;
        self.imageView.image = self.detailItem.fullImage;
    }
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    [self configureView];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)titleFieldTextChanged:(id)sender
{
    [sender resignFirstResponder];
    
}

- (void) rateView:(RateView *)rateView ratingDidChange:(float)rating {
    self.detailItem.data.rating = rating;
    NSLog(@"rating changed: %f", rating);
}


#pragma mark UITextFileDelegate
- (BOOL)textField:(UITextField *)textField shouldChangeCharactersInRange:(NSRange)range replacementString:(NSString *)string {
    [textField resignFirstResponder];
    return YES;
}

- (IBAction)addPictureTapped:(id)sender{
    if(self.picker == nil) {
        self.picker = [[UIImagePickerController alloc] init];
        self.picker.delegate = self;
        self.picker.sourceType = UIImagePickerControllerSourceTypePhotoLibrary;
        self.picker.allowsEditing = NO;
    }

[self.navigationController presentModalViewController:_picker animated:YES];

}


#pragma mark UIImagePickerControllerDelegate

- (void)imagePickerControllerDidCancel:(UIImagePickerController *)picker {
    [self dismissModalViewControllerAnimated:YES];
}

- (void)imagePickerController:(UIImagePickerController *)picker didFinishPickingMediaWithInfo:(NSDictionary *)info {
    
    [self dismissModalViewControllerAnimated:YES];
    
    UIImage *fullImage = (UIImage *) [info objectForKey:UIImagePickerControllerOriginalImage];
    UIImage *thumbImage = [fullImage imageByScalingAndCroppingForSize:CGSizeMake(44, 44)];
    self.detailItem.fullImage = fullImage;
    self.detailItem.thumbImage = thumbImage;
    self.imageView.image = fullImage;
}
@end
