//
//  ViewController.m
//  Abevulator
//
//  Created by stanza on 6/9/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "ViewController.h"
#import "functions.h"


@implementation ViewController
- (void)awakeFromNib
{
    [OriginalPlato setDelegate:self];
	[FinalPlato setDelegate:self];
	[OriginalGravity setDelegate:self];
	[FinalGravity setDelegate:self];	
}
- (void)controlTextDidChange:(NSNotification *)aNotification
{
	double og; double fg;
	
	if(([aNotification object] == OriginalPlato) ||
	   ([aNotification object] == FinalPlato))
    {
		double op = [OriginalPlato doubleValue];
		double fp = [FinalPlato doubleValue];		
		
		og = plato2gravity(op); NSString * tog = [NSString stringWithFormat:@"%.3f", og];
		fg = plato2gravity(fp); NSString * tfg = [NSString stringWithFormat:@"%.3f", fg];
		[OriginalGravity setStringValue:tog];
		[FinalGravity    setStringValue:tfg];
    }

	if(([aNotification object] == OriginalGravity) ||
	   ([aNotification object] == FinalGravity))
	{
		og = [OriginalGravity doubleValue];
		fg = [FinalGravity doubleValue];
		
		NSString * top = [NSString stringWithFormat:@"%.2f", gravity2plato(og)];
		NSString * tfp = [NSString stringWithFormat:@"%.2f", gravity2plato(fg)];
		[OriginalPlato setStringValue:top];
		[FinalPlato    setStringValue:tfp];
		
	}
	
	NSString * tabv = [NSString stringWithFormat:@"%.2f", abv(og, fg)];
	NSString * tabw = [NSString stringWithFormat:@"%.2f", abw(og, fg)];
	[AlcoholByVolume setStringValue:tabv];
	[AlcoholByWeight setStringValue:tabw];
	
}

@end
