链接: [[Godot]]

标签: #笔记 #Godot 

创建时间: 2023-12-16 11:56

---

- 坐标分为绝对坐标和相对坐标
- Godot 默认使用相对坐标, 即相对于父节点的 x, y 偏移量
- 使用 `global_position` 表示绝对坐标
- 使用 Camera2D 相机节点创建 2D 镜头, Position Smoothing 控制平滑移动