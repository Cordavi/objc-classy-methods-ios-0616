//  FISAppDelegate.m

#import "FISAppDelegate.h"

@interface FISAppDelegate ()

@end


@implementation FISAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    
    //instance method
    NSString *katherine = @"Katherine";
    NSString *kathrineHepburn = [katherine stringByAppendingString:@" Hepburn"];
    NSLog(@"%@", kathrineHepburn);
    
    //init method
    NSString *james = @"James";
    NSString *jamesStewart = [[NSString alloc] initWithFormat:@"%@ %@", james, @"Stewaart"];
    NSLog(@"%@", jamesStewart);
    
    //class method
    NSString *queen  =@"Queen";
    NSString *queenElizabethII = [NSString stringWithFormat:@"%@ %@ %@", queen, @"Elizabeth", @"II"];
    NSLog(@"%@", queenElizabethII);
    
    //array literal
    NSArray *classyThings = @[ @"monocle", @"top hat", @"martini glass" ];
    NSLog(@"%@", classyThings);
    
    //array initalizer method
    NSArray *classyPeople = [[NSArray alloc] initWithObjects:@"Katherine Hepburn", @"James Stewart", @"Queen Elizabeth II", nil];
    NSLog(@"%@", classyPeople);
    
    // array class method
    NSArray *classyDrinks = [NSArray arrayWithObjects:@"Old Fashioned", @"Churchill Martini", @"Prosecoo", nil];
    NSLog(@"%@", classyDrinks);
    
    
    //NSDictionary Literal
    NSDictionary *classyByLiteral = @{ @"classy things":@[@"monocle",
                                                          @"top hat",
                                                          @"martini glass"],
                                       @"classy people":@[@"Katherin Hepburn",
                                                          @"James Stewart",
                                                          @"Queen Elizabeth II"],
                                       @"classy drinks":@[@"Old Fashioned",
                                                          @"Churchill Martini",
                                                          @"Proseccp"]
                                       };
    
    NSLog(@"%@", classyByLiteral);
    
    NSDictionary *classyByInit = [[NSDictionary alloc] initWithObjectsAndKeys:classyThings, @"classy things", classyPeople, @"classy people", classyDrinks, @"classy drinks", nil];
    NSLog(@"%@", classyByInit);
    
    
    NSDictionary *classyByClass = [NSDictionary dictionaryWithObjects:@[classyThings,
                                                                        classyPeople,
                                                                        classyDrinks
                                                                        ]
                                                              forKeys:@[@"classy things",
                                                                        @"classy people",
                                                                        @"classy drinks"
                                                                        ]];
    
    NSLog(@"%@", classyByClass);
    
    
    return YES;
}

@end
