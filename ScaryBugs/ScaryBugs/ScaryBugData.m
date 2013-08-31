//
//  ScaryBugData.m
//  ScaryBugs
//
//  Created by jade on 13-8-21.
//  Copyright (c) 2013年 zcity. All rights reserved.
//

#import "ScaryBugData.h"

@implementation ScaryBugData
- (id)initWithTitle:(NSString *)title rating:(float)rating{
    if (self = [super init]){
        self.title = title;
        self.rating = rating;
    }
    
    return self;
    
}
@end
