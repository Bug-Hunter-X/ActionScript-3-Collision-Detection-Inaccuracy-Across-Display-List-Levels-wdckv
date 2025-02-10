function checkCollision(obj1:MovieClip, obj2:MovieClip):Boolean {
  if (!obj1 || !obj2) {
    return false; 
  }

  // Get the root display object
  var root:DisplayObjectContainer = obj1.root;

  //Convert coordinates to a common coordinate system
  var obj1Bounds:Rectangle = obj1.getBounds(obj1.parent);
  var obj2Bounds:Rectangle = obj2.getBounds(obj2.parent);
  var obj2BoundsInObj1:Rectangle = obj1.globalToLocal(obj2Bounds.x, obj2Bounds.y, obj2Bounds.width, obj2Bounds.height);

  return obj1Bounds.intersects(obj2BoundsInObj1); 
} 