//
//  ViewController.h
//  Abevulator
//
//  Created by stanza on 6/9/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <Cocoa/Cocoa.h>


@interface ViewController : NSObject <NSTextFieldDelegate> {
	IBOutlet NSTextField *OriginalGravity;
	IBOutlet NSTextField *FinalGravity;
	IBOutlet NSTextField *OriginalPlato;
	IBOutlet NSTextField *FinalPlato;
	
	IBOutlet NSTextField *AlcoholByVolume;
	IBOutlet NSTextField *AlcoholByWeight;
}

@end
