//
//  Quiz.h
//  quotesQuiz
//
//  Created by jade on 13-8-20.
//  Copyright (c) 2013年 zcity. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Quiz : NSObject
@property (nonatomic, strong) NSMutableArray* movieArray;
- (id) initWithQuiz:(NSString *) plistName;
@property(nonatomic, assign) NSInteger correctCount;
@property(nonatomic, assign) NSInteger incorrectCount;
@property(nonatomic, assign) NSInteger quizCount;
@property(nonatomic, assign) NSInteger tipCount;
@property(nonatomic, strong) NSString * tip;

@property(nonatomic, readonly, strong) NSString* quote;
@property(nonatomic, readonly, strong) NSString* ans1;
@property(nonatomic, readonly, strong) NSString* ans2;
@property(nonatomic, readonly, strong) NSString* ans3;



-(void) nextQuestion:(NSInteger) idx;
-(BOOL) checkQuestion:(NSInteger) question forAnswer:(NSUInteger) answer;
@end
