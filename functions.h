//
//  functions.h
//  ABVCalculator
//
//  Created by stanza on 6/9/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

// Most calculations taken from 
// http://www.fermentarium.com/homebrewing/how-to-calculate-the-alcohol-in-your-beer-wine-or-mead/



// Degrees Plato = 259 - (259 / Specific Gravity) 
// or, when I get around to importing math.h, 
// Degrees Plato = 1286.4 * SG - 800.47 * SG^2 + 190.74 * SG^3
double gravity2plato(double gravity) {
	return (259.0 - (259.0 / gravity));
}

double plato2gravity(double plato) {
	return ((plato + 259.0) / 259);
}

double abv(double og, double fg) {
	return (og - fg) * 131.25;
}

double abw(double og, double fg) {
	return (abv(og, fg) * 0.789);
}
