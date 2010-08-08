//
//  TestViewController.m
//  animation
//
//  Created by Avi Itskovich on 10-08-08.
//  Copyright 2010 Bloq Software. All rights reserved.
//

#import "TestViewController.h"
#import "AIAnimationQueue.h"

@implementation TestViewController

- (id)init {
	return [self initWithNibName:@"TestViewController" bundle:[NSBundle mainBundle]];
}


// Implement viewDidLoad to do additional setup after loading the view, typically from a nib.
- (void)viewDidLoad {
    [super viewDidLoad];
	
	// Add a label that will be moved for testing
	label = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, 100, 40)];
	label.text = @"Test";
	[self.view addSubview:label];

	AIAnimationQueue *animationQueue = [AIAnimationQueue sharedInstance];
	[animationQueue addAnimation:@selector(moveDown) target:self];
	[animationQueue addAnimation:@selector(moveRight) target:self];
	[animationQueue addAnimation:@selector(moveUp) target:self];
	[animationQueue addAnimation:@selector(moveLeft) target:self];
}

- (void)moveDown {
	[UIView setAnimationDuration:2.0];
	label.frame = CGRectMake(0, 400, 100, 40);
}

- (void)moveRight {
	[UIView setAnimationDuration:2.0];
	label.frame = CGRectMake(220, 400, 100, 40);
}

- (void)moveUp {
	[UIView setAnimationDuration:2.0];
	label.frame = CGRectMake(220, 0, 100, 40);
}

- (void)moveLeft {
	[UIView setAnimationDuration:2.0];
	label.frame = CGRectMake(220, 0, 100, 40);
}


/*
// Override to allow orientations other than the default portrait orientation.
- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation {
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}
*/

- (void)didReceiveMemoryWarning {
    // Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
    
    // Release any cached data, images, etc that aren't in use.
}

- (void)viewDidUnload {
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}


- (void)dealloc {
	[label release];
    [super dealloc];
}


@end
