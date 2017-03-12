//
//  TableViewController.m
//  InputDisplayTest
//
//  Created by Abdul Haziq on 09/03/2017.
//  Copyright © 2017 Abdul Haziq. All rights reserved.
//

#import "TableViewController.h"
#import "Person.h"
#import "ViewController.h"


@interface TableViewController ()

@end

@implementation TableViewController
@synthesize persons, NextPageTableView, NameTF, FnameTF, AddTF, dateOutput;


- (void)viewDidLoad {
    [super viewDidLoad];
    
    persons = [[NSMutableArray alloc]init];
    self.NextPageTableView.dataSource = self;
    
    Person *person = [[Person alloc]init];
    person.name = NameTF.text;
    person.fname = FnameTF.text;
    person.address = AddTF.text;
    person.dob = dateOutput.text;
    [persons addObject:person];
    [self.NextPageTableView reloadData];

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return persons.count;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 4;
    
}

- (UITableViewCell *)tableView: (UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    
    static NSString *CellIdentifier = @"Cell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    if (cell == nil) {
        cell = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier];
    }
    
    Person *person = self.persons[indexPath.section];
    if (indexPath.row == 0) {
        cell.textLabel.text = person.name;
    } else if(indexPath.row == 1){
        cell.textLabel.text = person.fname;
    }else if (indexPath.row == 2){
        cell.textLabel.text = person.address;
    }else{
        cell.textLabel.text = person.dob;
    }
    
    return cell;
}

/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    } else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath {
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
