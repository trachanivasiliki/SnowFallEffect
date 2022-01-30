# SnowFallEffect


![Snow_Falling](https://user-images.githubusercontent.com/40561265/151709520-5afcbe7e-a019-4f32-8b35-043fe2ca1a95.gif)

Based on CAEmitterLayer that emits, animates and renders a particle which is defined by instances of CAEmitterCell
(https://developer.apple.com/documentation/quartzcore/caemitterlayer)

## Usage

* Remove Snow Effect
  Use `removeFallingLayer` to remove snow fall effect from view
  
  ```
  snowLayer?.removeFallingLayer(from: self.view)
  ```
  
## Example
The demo project 'SnowFallEffectExample' contains a collection of examples of how to use it.

## Requirements

* iOS 11.0 and later.
* Xcode 12 or later.
