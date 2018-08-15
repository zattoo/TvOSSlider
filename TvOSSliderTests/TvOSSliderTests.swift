import XCTest
import TvOSSlider

class TvOSSliderTests: XCTestCase {
    
    func test_initial_range_values() {
        // Given
        let sut = TvOSSlider()
        
        // Then
        XCTAssertEqual(sut.minimumValue, 0)
        XCTAssertEqual(sut.maximumValue, 1)
    }
    
    func test_setValue() {
        // Given
        let sut = TvOSSlider()
        
        // When
        sut.setValue(0.5, animated: false)
        
        // Then
        XCTAssertEqual(sut.value, 0.5)
    }
    
    func test_setValue_masks_to_bounds_when_the_value_is_too_low() {
        // Given
        let sut = TvOSSlider()
        sut.minimumValue = 1
        sut.maximumValue = 2
        
        // When
        sut.setValue(0.5, animated: false)
        
        // Then
        XCTAssertEqual(sut.value, 1)
    }
    
    func test_setValue_masks_to_bounds_when_the_value_is_too_high() {
        // Given
        let sut = TvOSSlider()
        sut.minimumValue = 0
        sut.maximumValue = 1
        
        // When
        sut.setValue(2, animated: false)
        
        // Then
        XCTAssertEqual(sut.value, 1)
    }
    
    func test_value_is_masked_to_bounds_when_it_is_too_low_on_range_changes() {
        // Given
        let sut = TvOSSlider()
        sut.value = 0.5
        
        // When
        sut.minimumValue = 1
        sut.maximumValue = 2
        
        // Then
        XCTAssertEqual(sut.value, 1)
    }
    
    func test_value_is_masked_to_bounds_when_it_is_high_low_on_range_changes() {
        // Given
        let sut = TvOSSlider()
        sut.value = 0.5
        
        // When
        sut.minimumValue = 0
        sut.maximumValue = 0.25
        
        // Then
        XCTAssertEqual(sut.value, 0.25)
    }
}
