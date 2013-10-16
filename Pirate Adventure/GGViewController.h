//
//  GGViewController.h
//  Pirate Adventure
//
//  Created by me on 10/10/13.
//  Copyright (c) 2013 me. All rights reserved.
//



#import <UIKit/UIKit.h>
#import "GGCharacter.h"
#import "GGBoss.h"


@interface GGViewController : UIViewController
//iVars

@property(nonatomic) CGPoint currentPoint;
@property (strong, nonatomic) NSArray *tiles;
@property (strong, nonatomic) GGCharacter *character;
@property (strong, nonatomic) GGBoss *boss;


//IBOutlets

@property (strong, nonatomic) IBOutlet UIImageView *backgroundImageView;
@property (strong, nonatomic) IBOutlet UILabel *healthLabel;
@property (strong, nonatomic) IBOutlet UILabel *damageLabel;
@property (strong, nonatomic) IBOutlet UILabel *weaponLabel;
@property (strong, nonatomic) IBOutlet UILabel *armorLabel;

@property (strong, nonatomic) IBOutlet UILabel *storyLabel;

@property (strong, nonatomic) IBOutlet UIButton *actionButton;


@property (strong, nonatomic) IBOutlet UIButton *northButton;


@property (strong, nonatomic) IBOutlet UIButton *westButton;

@property (strong, nonatomic) IBOutlet UIButton *southButton;

@property (strong, nonatomic) IBOutlet UIButton *eastButton;



//IBactions
- (IBAction)actionButtonPressed:(UIButton *)sender;

- (IBAction)northButtonPressed:(UIButton *)sender;

- (IBAction)westButtonPressed:(UIButton *)sender;

- (IBAction)southButtonPressed:(UIButton *)sender;

- (IBAction)eastButtonPressed:(UIButton *)sender;


- (IBAction)resetButtonPressed:(UIButton *)sender;



@end
