//
//  JSON_CollectionViewTests.m
//  JSON_CollectionViewTests
//
//  Created by anirudh on 01/08/16.
//  Copyright © 2016 V2 Solutions. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "ViewController.h"

@interface JSON_CollectionViewTests : XCTestCase
@property (strong, nonatomic) ViewController *vc;
@end

@implementation JSON_CollectionViewTests

- (void)setUp {
    [super setUp];
    self.vc = [[ViewController alloc]init];
    // Put setup code here. This method is called before the invocation of each test method in the class.
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (void)testUserNameEmpty {
    BOOL resultEmpty = [self.vc checkUserName:@""];
    XCTAssertEqual(resultEmpty, false);
}

- (void)testUserNameNonEmpty {
    BOOL resultNonEmpty = [self.vc checkUserName:@"asda"];
    XCTAssertEqual(resultNonEmpty, true);
}

- (void)testUserNameNoSpecialCharacters {
    BOOL result = [self.vc checkUserName:@"@#$%^"];
    XCTAssertEqual(result, false);
}

- (void)testPasswordLength {
    NSString *password = @"";
    BOOL passwordLength = [self.vc userPassword:password];
    XCTAssertEqual(passwordLength, false);
}

- (void)testPasswordSpecialCharacter {
    BOOL result = [self.vc userPassword:@"aA12@#$%"];
    XCTAssertEqual(result, true);
}


//- (void)testExample {
//    // This is an example of a functional test case.
//    // Use XCTAssert and related functions to verify your tests produce the correct results.
//}
//
//- (void)testPerformanceExample {
//    // This is an example of a performance test case.
//    [self measureBlock:^{
//        // Put the code you want to measure the time of here.
//    }];
//}

@end
