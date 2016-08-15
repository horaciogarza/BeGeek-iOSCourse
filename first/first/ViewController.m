//
//  ViewController.m
//  first
//
//  Created by Horacio Garza on 13/08/16.
//  Copyright © 2016 HGarz Studios. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
  [super viewDidLoad];
  // Do any additional setup after loading the view, typically from a nib.
  NSString *test = @"view did load";
  NSInteger testInt = 5;
  NSLog(@"%@ %li", test, (long)testInt);
  
  
  
  //Changes button background
  [[self btnLogin]setBackgroundColor:[UIColor blueColor]];
  
  [self cambiarNombreALogin];
}

- (void)didReceiveMemoryWarning {
  [super didReceiveMemoryWarning];
  // Dispose of any resources that can be recreated.
}


//MARK: Functions

- (void)cambiarNombreALogin{
  
  [[self btnLogin] setTitle:@"Ingresar" forState: UIControlStateNormal];
  
}

@end
