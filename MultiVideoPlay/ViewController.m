//
//  ViewController.m
//  MultiVideoPlay
//
//  Created by Nandeep Mali on 05/09/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController
@synthesize movieView;
@synthesize currentPlayer;

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    moviePlayer1 = [self createMoviePlayerWithMovieName:@"video1"];
    moviePlayer2 = [self createMoviePlayerWithMovieName:@"video2"];
    moviePlayer3 = [self createMoviePlayerWithMovieName:@"video3"];
    moviePlayer4 = [self createMoviePlayerWithMovieName:@"video4"];
    moviePlayer5 = [self createMoviePlayerWithMovieName:@"video5"];
    moviePlayer6 = [self createMoviePlayerWithMovieName:@"video6"];
    
    [self setCurrentPlayer:moviePlayer1];
}

- (void)viewDidUnload
{
    [self setMovieView:nil];
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return YES;
}

- (MPMoviePlayerController *)createMoviePlayerWithMovieName:(NSString *)fileName
{
    NSURL *url = [NSURL fileURLWithPath:[[NSBundle mainBundle] pathForResource:fileName ofType:@"mp4"]];
    MPMoviePlayerController *moviePlayer = [[MPMoviePlayerController alloc] initWithContentURL:url];
    moviePlayer.controlStyle = MPMovieControlStyleNone;
    moviePlayer.shouldAutoplay = NO;
//    [moviePlayer prepareToPlay];
    
    moviePlayer.view.hidden = YES;
    
    [movieView addSubview:moviePlayer.view];

    [moviePlayer.view setFrame:CGRectMake(0, 0, 512, 384)];
    // [moviePlayer.view setCenter:CGPointMake(384, 512)];

    return moviePlayer;
}

-(void)playFromPlayer:(MPMoviePlayerController *)moviePlayer
{
    [moviePlayer setContentURL:[moviePlayer contentURL]];

    [currentPlayer stop];
    currentPlayer.view.hidden = YES;
    [movieView sendSubviewToBack:currentPlayer.view];

    [self setCurrentPlayer:moviePlayer];    
    
    [movieView bringSubviewToFront:currentPlayer.view];
    currentPlayer.view.hidden = NO;
    [currentPlayer play];
}

- (IBAction)handleMovie1:(id)sender {
    [self playFromPlayer:moviePlayer1];
}

- (IBAction)handleMovie2:(id)sender {
    [self playFromPlayer:moviePlayer2];
}

- (IBAction)handleMovie3:(id)sender {
    [self playFromPlayer:moviePlayer3];
}

- (IBAction)handleMovie4:(id)sender {
    [self playFromPlayer:moviePlayer4];
}

- (IBAction)handleMovie5:(id)sender {
    [self playFromPlayer:moviePlayer5];
}

- (IBAction)handleMovie6:(id)sender {
    [self playFromPlayer:moviePlayer6];
}


@end
