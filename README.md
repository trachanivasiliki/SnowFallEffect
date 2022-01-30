# SnowFallEffect

![Snow_Falling-2](https://user-images.githubusercontent.com/40561265/151711286-8f357230-434f-48be-8909-4f7b3a94a5b2.gif)

Based on CAEmitterLayer that emits, animates and renders a particle which is defined by instances of CAEmitterCell
(https://developer.apple.com/documentation/quartzcore/caemitterlayer)

## Usage
* Add Snow Fall Effect
  1. Create `SnowFallEffectItem` with any image, speed, scale and velocity.
  
    ```
    SnowFallEffectItem(image: UIImage(named: "snowFlake")!, speed: 20, scale: 0.05, velocity: 20)
    ```

  2. Create `SnowFallEffectLayer` and inject it to your view.

  ```
   snowLayer = SnowFallEffectLayer(snowFallItems: snowFallItems)
   snowLayer?.addSnowLayer(into: self.view)
  ```

  The `SnowFallEffectLayer` parametres are:
  * direction (top/bottom)
  * duration (infinite or custom - CFTimeInterval)
  * angle (right/left/none) 


* Remove Snow Fall Effect
  Use `removeFallingLayer` to remove snow fall effect from view
  
  ```
  snowLayer?.removeFallingLayer(from: self.view)
  ```
  
## Example
The demo project 'SnowFallEffectExample' contains a collection of examples of how to use it.

## Requirements

* iOS 11.0 and later.
* Xcode 12 or later.
