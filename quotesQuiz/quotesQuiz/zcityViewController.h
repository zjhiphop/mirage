//
//  zcityViewController.h
//  quotesQuiz
//
//  Created by jade on 13-8-20.
//  Copyright (c) 2013年 zcity. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "QuizTipVIewController.h"

@class Quiz;

@interface zcityViewController : UIViewController<QuizTipViewControllerDelegate>
@property(nonatomic, assign) NSInteger quizIndex;
@property(nonatomic, strong) Quiz* quiz;
@end
