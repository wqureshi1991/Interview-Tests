//
//  ViewController.m
//  PhotoGallery
//
//  Created by Sachin Patil on 24/08/15.
//  Copyright (c) 2015 Cuelogic Technologies. All rights reserved.
//

#import "ViewController.h"
#import "LazyDownloading.h"
@interface ViewController ()
@property(nonatomic,retain)NSArray *categoryImages;
@property(nonatomic,retain)NSMutableDictionary *imageDetailsDictionary;

@end

@implementation ViewController
@synthesize categoryImages;
@synthesize imageview,imageDetailsDictionary;

- (void)viewDidLoad {
    [super viewDidLoad];
    imageDetailsDictionary=[[NSMutableDictionary alloc]init];
    
    LazyDownloading *ldObject=[[LazyDownloading alloc] init];
    
    [ldObject downloadImagesDetailsWithBlocks:^(NSMutableDictionary * imageDetails)
     {
         NSLog(@"imageDetails=> %@", imageDetails);
         
         categoryImages=[imageDetails allKeys];
         
        NSMutableArray *array=[imageDetails valueForKey:categoryImages[0]];
         
         
        self.imageview.image=[UIImage imageWithData:array[0]];
     }];
    
}


- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{

    
    return [categoryImages count];

}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    
    static NSString *simpleTableIdentifier = @"Cell";
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:simpleTableIdentifier];
    
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:simpleTableIdentifier];
    }
    [tableView reloadData];
    return cell;
}



- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    
    return [categoryImages count];
   
}

- (NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section
{
        return [categoryImages objectAtIndex:section];
}





@end
