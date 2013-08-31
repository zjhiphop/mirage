
#import "ListViewController.h"

@implementation ListViewController
{
	NSMutableArray *list;
}

- (id)initWithCoder:(NSCoder *)aDecoder
{
	if (self == [super initWithCoder:aDecoder])
	{
        list = [[NSMutableArray arrayWithCapacity:10] retain];
        
		[list addObject:@"One"];
		[list addObject:@"Two"];
		[list addObject:@"Three"];
		[list addObject:@"Four"];
		[list addObject:@"Five"];
	}
	return self;
}

- (void)viewDidLoad
{
	[super viewDidLoad];
    NSLog(@"list view loaded!!");
}

- (void)viewDidUnload
{
	[super viewDidUnload];
}

- (void) dealloc{
    [list release];
    [super dealloc];
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
	return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

#pragma mark - Table view data source

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
	return [list count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
	static NSString *CellIdentifier = @"Cell";
	UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];

	cell.textLabel.text = [list objectAtIndex:indexPath.row];
    NSLog(@"the cell is %@", cell);
    NSLog(@"the text is %@", [list objectAtIndex:indexPath.row]);
	return cell;
}

- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath
{
	if (editingStyle == UITableViewCellEditingStyleDelete)
	{
        [list removeObjectAtIndex:indexPath.row];
		[tableView deleteRowsAtIndexPaths:[NSArray arrayWithObject:indexPath] withRowAnimation:UITableViewRowAnimationFade];
	}   
}

@end
