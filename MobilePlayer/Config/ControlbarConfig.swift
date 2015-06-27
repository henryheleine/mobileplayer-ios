//
//  ControlbarConfig.swift
//  MobilePlayer
//
//  Created by Toygar Dündaralp on 26/05/15.
//  Copyright (c) 2015 MovieLaLa. All rights reserved.
//

import Foundation

public struct ControlbarConfig {

  public var playButtonImage = MobilePlayerConfig.loadImage(named: "MLPlayButton.png")
  public var playButtonTintColor = UIColor.whiteColor()
  public var playButtonBackgroundColor = UIColor.clearColor()
  public var pauseButtonImage = MobilePlayerConfig.loadImage(named: "MLPauseButton.png")
  public var pauseButtonTintColor = UIColor.whiteColor()
  public var timeTextFont = UIFont.systemFontOfSize(14)
  public var timeTextColor = UIColor.whiteColor()
  public var timeBackgroundColor = UIColor.clearColor()
  public var timeSliderRailTintColor = UIColor.lightGrayColor()
  public var timeSliderBufferTintColor = UIColor.grayColor()
  public var timeSliderProgressTintColor = UIColor.blueColor()
  public var timeSliderThumbTintColor = UIColor.whiteColor()
  public var timeSliderBackgroundColor = UIColor.clearColor()
  public var volumeButtonImage = MobilePlayerConfig.loadImage(named: "MLVolumeButton.png")
  public var volumeBackgroundColor = UIColor.clearColor()
  public var volumeTintColor = UIColor.blackColor()
  public var volumeProgressTintColor = UIColor.blueColor()
  public var volumeThumbTintColor = UIColor.grayColor()
  public var volumeRailTintColor = UIColor.whiteColor()
  public var backgroundColor = UIColor.clearColor()

  public init() {}

  public init(dictionary: [String: AnyObject]) {
    if let playButtonConfig = dictionary["playButton"] as? [String:AnyObject] {
      if let playButtonImageValue = playButtonConfig["image"] as? String {
        self.playButtonImage = MobilePlayerConfig.loadImage(named: playButtonImageValue)
      }
      if let playButtonTintColorValue = playButtonConfig["tintColor"] as? String {
        self.playButtonTintColor = UIColor(hexString: playButtonTintColorValue)
      }
      if let playButtonBackgroundColorValue = playButtonConfig["backgroundColor"] as? String {
        self.playButtonBackgroundColor = UIColor(hexString: playButtonBackgroundColorValue)
      }
    }
    if let pauseButtonConfig = dictionary["pauseButton"] as? [String:AnyObject] {
      if let pauseButtonImageValue = pauseButtonConfig["image"] as? String {
        self.pauseButtonImage = MobilePlayerConfig.loadImage(named: pauseButtonImageValue)
      }
      if let pauseButtonTintColorValue = pauseButtonConfig["tintColor"] as? String {
        self.pauseButtonTintColor = UIColor(hexString: pauseButtonTintColorValue)
      }
    }
    if let backgroundColor = dictionary["backgroundColor"] as? String {
      self.backgroundColor = UIColor(hexString: backgroundColor)
    }
    if let timeConfig = dictionary["time"] as? [String:AnyObject] {
      if let timeTextFont = timeConfig["textFont"] as? String {
        if let timeTextSize = timeConfig["textFontSize"] as? CGFloat {
          self.timeTextFont = UIFont(name: timeTextFont, size: timeTextSize)!
        }
      }
      if let timeTextColor = timeConfig["textColor"] as? String {
        self.timeTextColor = UIColor(hexString: timeTextColor)
      }
      if let timeBackgroundColor = timeConfig["backgroundColor"] as? String {
        self.timeBackgroundColor = UIColor(hexString: timeBackgroundColor)
      }
    }
    if let timeSliderConfig = dictionary["timeSlider"] as? [String:AnyObject] {
      if let timeSliderRailTintColor = timeSliderConfig["railTintColor"] as? String {
        self.timeSliderRailTintColor = UIColor(hexString: timeSliderRailTintColor)
      }
      if let timeSliderBufferTintColor = timeSliderConfig["bufferTintColor"] as? String {
        self.timeSliderBufferTintColor = UIColor(hexString: timeSliderBufferTintColor)
      }
      if let timeSliderProgressTintColor = timeSliderConfig["progressTintColor"] as? String {
        self.timeSliderProgressTintColor = UIColor(hexString: timeSliderProgressTintColor)
      }
      if let timeSliderThumbTintColor = timeSliderConfig["thumbTintColor"] as? String {
        self.timeSliderThumbTintColor = UIColor(hexString: timeSliderThumbTintColor)
      }
      if let timeSliderBackgroundColor = timeSliderConfig["backgroundColor"] as? String {
        self.timeSliderBackgroundColor = UIColor(hexString: timeSliderBackgroundColor)
      }
    }
    if let volumeSliderConfig = dictionary["volumeSlider"] as? [String:AnyObject] {
      if let volumeSliderRailTintColorValue = volumeSliderConfig["railTintColor"] as? String {
        self.volumeRailTintColor = UIColor(hexString: volumeSliderRailTintColorValue)
      }
      if let volumeSliderProgressTintColorValue = volumeSliderConfig["progressTintColor"] as? String {
          self.volumeProgressTintColor = UIColor(hexString: volumeSliderProgressTintColorValue)
      }
      if let volumeSliderThumbTintColorValue = volumeSliderConfig["thumbTintColor"] as? String {
        self.volumeThumbTintColor = UIColor(hexString: volumeSliderThumbTintColorValue)
      }
      if let volumeSliderBackgroundColorValue = volumeSliderConfig["backgroundColor"] as? String {
        self.volumeBackgroundColor = UIColor(hexString: volumeSliderBackgroundColorValue)
      }
      if let volumeButtonImageValue = volumeSliderConfig["buttonImage"] as? String {
        self.volumeButtonImage = MobilePlayerConfig.loadImage(named: volumeButtonImageValue)
      }
      if let volumeTintColorValue = volumeSliderConfig["tintColor"] as? String {
        self.volumeTintColor = UIColor(hexString: volumeTintColorValue)
      }
    }
  }
}
