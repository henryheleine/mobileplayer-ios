//
//  SoundControlView.swift
//  MobilePlayer
//
//  Created by Toygar Dündaralp on 25/06/15.
//  Copyright (c) 2015 MovieLaLa. All rights reserved.
//

import UIKit
import MediaPlayer

class VolumeControlView: UIView {
  var volumeSlider = MPVolumeView(frame: CGRectZero)
  var increaseVolumeImage = UIImageView(frame: CGRectZero)
  var reduceVolumeImage = UIImageView(frame: CGRectZero)

  override init(frame: CGRect) {
    super.init(frame: frame)
    self.backgroundColor = UIColor.whiteColor()
    volumeSlider.frame = CGRectMake(-22.0, 50.0, 110.0, 50.0)
    volumeSlider.transform = CGAffineTransformMakeRotation(CGFloat(-M_PI_2))
    volumeSlider.showsVolumeSlider = true
    volumeSlider.showsRouteButton = false
    addSubview(volumeSlider)
    increaseVolumeImage = UIImageView(frame: CGRectMake(10.0, 0.0, 20.0, 20.0))
    increaseVolumeImage.image = UIImage(named: "increaseVolumeImage")
    addSubview(increaseVolumeImage)
    reduceVolumeImage = UIImageView(frame: CGRectMake(10.0, 130.0, 20.0, 20.0))
    reduceVolumeImage.image = UIImage(named: "reduceVolumeImage")
    addSubview(reduceVolumeImage)
  }

  required init(coder aDecoder: NSCoder) {
      fatalError("init(coder:) has not been implemented")
  }

  override func layoutSubviews() {
    self.layer.cornerRadius = 5
    self.layer.borderColor = UIColor.grayColor().CGColor
    self.layer.borderWidth = 0.5
    self.layer.masksToBounds = true
  }
}
