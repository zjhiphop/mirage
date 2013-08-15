//
//  zcityViewController.m
//  QuoteGen
//
//  Created by jade on 13-8-14.
//  Copyright (c) 2013年 zcity. All rights reserved.
//

#import "zcityViewController.h"

@interface zcityViewController ()

@end

@implementation zcityViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    self.myQuotes = @[
                      @"To be or not to be!",
                      @"Never say die!",
                      @"Stay hungry, stay foolish!"
                      ];
    NSString *plistCatPath = [[NSBundle mainBundle] pathForResource:(@"quotes") ofType:(@"plist")];
    self.movieQuotes = [NSMutableArray arrayWithContentsOfFile:plistCatPath];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(IBAction)quoteButtonTapped:(id)sender{
    
    if(self.quoteOption.selectedSegmentIndex == 2){
        //1. get num of array
        int array_tot = [self.myQuotes count];
        //2. get random index
        int index = (arc4random()%array_tot);
        // get string from index
        //NSString *my_quote = self.myQuotes[index];
        NSString *my_quote = nil;
        NSString *allMy_quotes = @"";
        
        for(int i = 0; i < array_tot; i ++) {
            my_quote = self.myQuotes[i];
            allMy_quotes= [NSString stringWithFormat:@"%@\n\n%@", allMy_quotes, my_quote];
        }
        
        self.quoteText.text = [NSString stringWithFormat:@"Quote:\n\n %@", allMy_quotes];
    } else {
        NSString *selectedCategory = @"classic";
        
        if(self.quoteOption.selectedSegmentIndex == 1) {
            selectedCategory = @"modern";
        }
        
        NSPredicate *predicate = [NSPredicate predicateWithFormat:@"category==%@", selectedCategory];
        NSArray *filterArray = [self.movieQuotes filteredArrayUsingPredicate:predicate];
        
        
        int array_tot = [filterArray count];
        if(array_tot > 0) {
            int index = (arc4random()%array_tot);
            NSString *quote = filterArray[index][@"quote"];
            NSString *source = [[filterArray objectAtIndex:index] valueForKey:@"source"];
            
            for(int i = 0; i < array_tot; i++) {
                NSString *quote2 = self.movieQuotes[i][@"quote"];
                if([quote isEqualToString:quote2]){
                    NSMutableDictionary *itemAtIndex = (NSMutableDictionary *)self.movieQuotes[i];
                    itemAtIndex[@"source"] = @"Done, already shown!!";
                }
            }
            
            if(![source length] ==0){
                quote = [NSString stringWithFormat:@"%@\n\n(%@)", quote, source];
                if ([source hasPrefix:@"Harry"]) {
                    quote = [NSString stringWithFormat:@"HARRY ROCKS!!\n\n%@",  quote];
                }
            }
            //self.quoteText.text =[NSString stringWithFormat:@"Movie quotes: \n\n %@", quote];
            
            if([selectedCategory isEqualToString:@"classic"]) {
                quote = [NSString stringWithFormat:@"From Classic Movie: \n\n %@", quote];
                
            } else {
                quote = [NSString stringWithFormat:@"From Modern Movie: \n\n %@", quote];  
            }
                                
            self.quoteText.text = quote;
        } else {
            self.quoteText.text = [NSString stringWithFormat:@"No quotes string display."];
        }
    }
}
    

@end
