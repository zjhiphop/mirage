//
//  ScaryBugDoc.h
//  ScaryBugs
//
//  Created by jade on 13-8-21.
//  Copyright (c) 2013年 zcity. All rights reserved.
//

#import <Foundation/Foundation.h>
@class ScaryBugData;

@interface ScaryBugDoc : NSObject

@property (strong) ScaryBugData *data;
@property (strong) UIImage *thumbImage;
@property (strong) UIImage *fullImage;

- (id)initWithTitle:(NSString *)title rating:(float) rating thumbImage: (UIImage *) thumbImage fullImage: (UIImage *) fullImage;

@end
