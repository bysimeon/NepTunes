//
//  AboutWindowController.m
//  NepTunes
//
//  Created by rurza on 22/02/16.
//  Copyright © 2016 micropixels. All rights reserved.
//

#import "AboutWindowController.h"

@interface AboutWindowController ()
@property (strong) IBOutlet NSTextField *buildLabel;
@property (strong) IBOutlet NSTextField *copyrightLabel;

@end

@implementation AboutWindowController

- (void)windowDidLoad
{
    [super windowDidLoad];
    [self.window.contentView setBackgroundColor:[NSColor colorWithRed:0.8 green:0.849 blue:0.91 alpha:1]];
    self.window.titlebarAppearsTransparent = YES;
    self.window.titleVisibility = NSWindowTitleHidden;
    NSDictionary *plist = [NSBundle mainBundle].infoDictionary;
    self.buildLabel.stringValue = [NSString stringWithFormat:NSLocalizedString(@"Version %@ (%@)", nil), [plist objectForKey:@"CFBundleShortVersionString"], [plist objectForKey:@"CFBundleVersion"]];
    self.copyrightLabel.stringValue = [NSString stringWithFormat:NSLocalizedString(@"%@", nil), [plist objectForKey:@"NSHumanReadableCopyright"]];
}
- (IBAction)followOnTwitter:(NSButton *)sender
{
    [[NSWorkspace sharedWorkspace] openURL:[NSURL URLWithString:@"https://twitter.com/neptunesformac"]];
}

- (IBAction)support:(NSButton *)sender
{
    [[NSWorkspace sharedWorkspace] openURL:[NSURL URLWithString:@"http://micropixels.pl/neptunes/#faq"]];
}
@end