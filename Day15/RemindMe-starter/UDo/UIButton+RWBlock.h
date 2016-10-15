//
//  UIButton+RWBlock.h
//  UDo
//
//  Created by Soheil Azarpour on 3/9/14.
//  Copyright (c) 2014 Soheil Azarpour. All rights reserved.
//

@import UIKit;

/**
 * @brief An action block for the receiver. It passes a pointer to
 * self in to the block.
 *
 * @param sender A pointer to the UIButton with the actionBlock.
 */
typedef void (^RWButtonActionBlock)(UIButton *sender);

/**
 * @brief A category that declares an action block for UIButton.
 * This is particularly helpful when adding a UIButton to UITableViewCell,
 * and we don't have to separately track the index path of the cell
 * that contains the button.
 */
@interface UIButton (RWBlock)

/**
 * @brief Adds an action block to the receiver. Note that actionBlock and
 * addTarget:action: are mutually exclusive.
 */
- (void)addActionblock:(RWButtonActionBlock)actionBlock forControlEvents:(UIControlEvents)events;

/**
 * @brief Returns the action block associated with the receiver.
 */
- (RWButtonActionBlock)actionBlock;

@end
