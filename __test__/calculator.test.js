const mathOperations = require('./index.js');

describe("Calculator tests", () => {
    test('adding 2 + 4 should return 6', () => {
        // arrange and act
        var result = mathOperations.sum(2, 4)

        // assert
        expect(result).toBe(6);
    });

    test("subtracting 3 from 10 should return 7", () => {
        // arrange and act
        var result = mathOperations.diff(10, 3)

        // assert
        expect(result).toBe(7);
    });

    test("multiplying 3 and 9 should return 27", () => {
        // arrange and act
        var result = mathOperations.product(3, 9)

        // assert
        expect(result).toBe(27);
    });
})