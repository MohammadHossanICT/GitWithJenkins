//
//  RedditSwiftUIAsyncAwaitProdTests.swift
//  RedditSwiftUIAsyncAwaitProdTests
//
//  Created by Christian Quicano on 3/7/22.
//

import XCTest
import Combine
@testable import RedditSwiftUIAsyncAwaitProd

class RedditSwiftUIAsyncAwaitProdTests: XCTestCase {
    
    var subscribers = Set<AnyCancellable>()

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    @MainActor func testFetchData() throws {
        // given
        let fakeService = FakeRedditService()
        fakeService.data = getJsonData(from: "stories")
        let viewModel = RedditViewModel(redditService: fakeService)
        let expectation = expectation(description: "waiting...")
        
        // when
        Task {
            await viewModel.fetchData()
            expectation.fulfill()
        }
        
        viewModel
            .$stories
            .dropFirst()
            .sink { stories in
                XCTAssertTrue(stories.count == 25)
        }
        .store(in: &subscribers)
        
        // then
        wait(for: [expectation], timeout: 2.0)
    }

    func testPerformanceExample() throws {
        // This is an example of a performance test case.
        measure {
            // Put the code you want to measure the time of here.
        }
    }
    
    private func getJsonData(from name: String) -> Data {
        // get data from json file
        let bundle = Bundle(for: RedditSwiftUIAsyncAwaitProdTests.self)
        
        guard let file = bundle.url(forResource: name, withExtension: "json")
        else { return Data() }
        
        do {
            return try Data(contentsOf: file)
        } catch {
            return Data()
        }
    }
}
