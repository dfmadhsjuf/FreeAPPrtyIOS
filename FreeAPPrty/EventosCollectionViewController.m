//
//  EventosCollectionViewController.m
//  FreeAPPrty
//
//  Created by alumno on 7/2/18.
//  Copyright © 2018 alumno. All rights reserved.
//

#import "EventosCollectionViewController.h"
#import "Eventos.h"

@interface EventosCollectionViewController (){
    NSMutableArray* eventos;
}

@end

@implementation EventosCollectionViewController

static NSString * const reuseIdentifier = @"eventoCell";

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // Uncomment the following line to preserve selection between presentations
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Register cell classes
    [self.collectionView registerClass:[UICollectionViewCell class] forCellWithReuseIdentifier:reuseIdentifier];
    
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

-(void)cargarDatos{
    Eventos* evento1 = [[Eventos alloc]initWithName:@"Quedada1" area:@"VLC" fecha:@"29/01/2018"];
    Eventos* evento2 = [[Eventos alloc]initWithName:@"Fiesta1" area:@"ALC" fecha:@"16/02/2018"];
    Eventos* evento3 = [[Eventos alloc]initWithName:@"Fiesta2" area:@"VLC" fecha:@"16/02/2018"];
    Eventos* evento4 = [[Eventos alloc]initWithName:@"Acampada" area:@"ALB" fecha:@"23/02/2018"];
    
    eventos = [[NSMutableArray alloc]initWithObjects:evento1, evento2, evento3, evento4, nil];
}

#pragma mark <UICollectionViewDataSource>

- (NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView {
#warning Incomplete implementation, return the number of sections
    return 1;
}


- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
#warning Incomplete implementation, return the number of items
    return [eventos count];
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    
    UICollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:reuseIdentifier forIndexPath:indexPath];
    UIImageView *imagenEvento = (UIImageView *)[cell viewWithTag:100];
    imagenEvento.image = [UIImage imageNamed:@"fondo1"];
    
    
    // Configure the cell
    
    return cell;
}

#pragma mark <UICollectionViewDelegate>

/*
// Uncomment this method to specify if the specified item should be highlighted during tracking
- (BOOL)collectionView:(UICollectionView *)collectionView shouldHighlightItemAtIndexPath:(NSIndexPath *)indexPath {
	return YES;
}
*/

/*
// Uncomment this method to specify if the specified item should be selected
- (BOOL)collectionView:(UICollectionView *)collectionView shouldSelectItemAtIndexPath:(NSIndexPath *)indexPath {
    return YES;
}
*/

/*
// Uncomment these methods to specify if an action menu should be displayed for the specified item, and react to actions performed on the item
- (BOOL)collectionView:(UICollectionView *)collectionView shouldShowMenuForItemAtIndexPath:(NSIndexPath *)indexPath {
	return NO;
}

- (BOOL)collectionView:(UICollectionView *)collectionView canPerformAction:(SEL)action forItemAtIndexPath:(NSIndexPath *)indexPath withSender:(id)sender {
	return NO;
}

- (void)collectionView:(UICollectionView *)collectionView performAction:(SEL)action forItemAtIndexPath:(NSIndexPath *)indexPath withSender:(id)sender {
	
}
*/

@end
