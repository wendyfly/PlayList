//
//  ViewController.m
//  Algorhythm
//
//  Created by LiaoWenwen on 11/11/15.
//  Copyright © 2015 LiaoWenwen. All rights reserved.
//

#import "PlaylistMasterViewController.h"
#import "PlayListDetailViewController.h"
#import "Playlist.h"

@interface PlaylistMasterViewController ()

@end

@implementation PlaylistMasterViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    for(NSUInteger index = 0; index <self.playlistImageView.count; index ++) {
        Playlist *playlist = [[Playlist alloc] initWithIndex : index];
        
        UIImageView *playlistImageView = self.playlistImageView[index];
        playlistImageView.image = playlist.playlistIconLarge;
        playlistImageView.backgroundColor = playlist.backgroundColor;
    }
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    if([segue.identifier isEqual:@"showPlaylistDetails"]) {
        // do something
        UIImageView *playlistImageViews = (UIImageView *)[sender view];
        if([ self.playlistImageView containsObject:playlistImageViews]) {
            NSUInteger index = [self.playlistImageView indexOfObject:playlistImageViews];
            PlayListDetailViewController * playListDetailController = (PlayListDetailViewController *)segue.destinationViewController;
            playListDetailController.playlist = [[Playlist alloc] initWithIndex:index];
        }
    }
}

- (IBAction)showPlaylistDetail:(id)sender {
    [self performSegueWithIdentifier:@"showPlaylistDetails" sender: sender];
}




@end
