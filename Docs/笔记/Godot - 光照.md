链接: [[Godot]]

标签: #笔记 #Godot 

创建时间: 2023-12-16 11:59

---

- 节点:
  DirectionLight2D - 直线光(太阳)
  PositonalLight2D - 点光(手电筒)
  LightOccluder2D - 遮光器
- 通过绘制形状, 并打开阴影属性来使用遮光
- 一个遮光器只能应用一个闭合形状
- 在 TileMap - Rendering 属性下,
  可以为整个图块集设置遮光(需要为图块绘制形状)