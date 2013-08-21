//
//  QuizTipVIewController.h
//  quotesQuiz
//
//  Created by jade on 13-8-21.
//  Copyright (c) 2013年 zcity. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol QuizTipViewControllerDelegate;

@interface QuizTipVIewController : UIViewController
@property(nonatomic, assign) id<QuizTipViewControllerDelegate> delegate;
@property(weak, nonatomic) IBOutlet UITextView * tipView;
@property(nonatomic, copy) NSString * tipText;

-(IBAction)donAction:(id)sender;

@end

@protocol QuizTipViewControllerDelegate
-(void) quizTipDidFinish:(QuizTipVIewController *) controller;
@end
