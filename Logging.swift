//
//  Logging.swift
//
//  Created by Zak Goneau
//  Created on 2025-02-19
//  Version 1.0
//  Copyright (c) 2025 Zak Goneau. All rights reserved.
//
//  This program says how many of a certain log can fit on a truck.

// Import library
import Foundation

// Declare constants 
let MAX_WEIGHT: Float = 1100;
let QUARTER_LENGTH: Float = 0.25;
let HALF_LENGTH: Float = 0.5;
let FULL_LENGTH: Float = 1;
let WEIGHT_PER_METER: Float = 20;

// define function to calculate total logs
func totalLogs() {

    // Introduce program to user
    print("This program says how many of a certain log can fit on a truck")

    // Get user input
    print("Enter a log size: 0.25, 0.5, 1 (m): ")

    // Try to assign input as string and convert into float
    guard let lengthString = readLine(), let lengthFloat = Float(lengthString) else {

        // Tell user invalid input if failed conversion
        print("Invalid input. This is not a number.")

        // Exit function
        return
    }

    // Check if length is 0.25m
    if (lengthFloat == QUARTER_LENGTH) {
    
        // Calculate total logs for 0.25m
        let totalLogs = MAX_WEIGHT / (WEIGHT_PER_METER * QUARTER_LENGTH)

        // Print result to user
        print("The total amount of 0.25m logs is: \(totalLogs)")

    // Check if length is 0.5m
    } else if (lengthFloat == HALF_LENGTH) {

        // Calculate total logs for 0.5m
        let totalLogs = MAX_WEIGHT / (WEIGHT_PER_METER * HALF_LENGTH)

        // Print result to user
        print("The total amount of 0.5m logs is: \(totalLogs)")
    
    // Check if length is 1m
    } else if (lengthFloat == FULL_LENGTH) {

        // Calculate total logs for 1m
        let totalLogs = MAX_WEIGHT / WEIGHT_PER_METER

        // Print result to user
        print("The total amount of 1m logs is: \(totalLogs)")

    // Otherwise, invalid length
    } else {

        // Tell user length is not valid
        print("That is an invalid length \(lengthFloat)")
    }

}

// Call function
totalLogs()
