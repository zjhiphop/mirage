//
//  ScaryBugData.h
//  ScaryBugs
//
//  Created by jade on 13-8-21.
//  Copyright (c) 2013年 zcity. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ScaryBugData : NSObject

@property(strong) NSString *title;
@property(assign) float rating;

- (id)initWithTitle:(NSString *)title rating:(float) rating;

@end
