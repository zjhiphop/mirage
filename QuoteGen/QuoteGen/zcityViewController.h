//
//  zcityViewController.h
//  QuoteGen
//
//  Created by jade on 13-8-14.
//  Copyright (c) 2013年 zcity. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface zcityViewController : UIViewController
@property (nonatomic, strong) NSArray *myQuotes;
@property(nonatomic, strong) NSMutableArray *movieQuotes;
@property (nonatomic, strong) IBOutlet UITextView *quoteText;
@property(nonatomic, strong) IBOutlet UISegmentedControl *quoteOption;
- (IBAction)quoteButtonTapped:(id)sender;
@end

