//
//  PlayListDetailViewController.m
//  Algorhythm
//
//  Created by LiaoWenwen on 11/15/15.
//  Copyright © 2015 LiaoWenwen. All rights reserved.
//

#import "PlayListDetailViewController.h"

@interface PlayListDetailViewController ()

@end

@implementation PlayListDetailViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    if(self.playlist) {
        self.playlistCoverImage.image = self.playlist.playlistIcon;
        self.playlistCoverImage.backgroundColor = self.playlist.backgroundColor;
        self.playlistTitile.text = self.playlist.playlistTitle;
        self.playlistDescription.text = self.playlist.playlistDescription;
        self.playlistArtist0.text = self.playlist.playlistArtists[0];
        self.playlistArtist1.text = self.playlist.playlistArtists[1];
        self.playlistArtist2.text = self.playlist.playlistArtists[2];
    }
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



@end
