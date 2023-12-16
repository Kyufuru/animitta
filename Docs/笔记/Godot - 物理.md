链接: [[Godot]]

标签: #笔记 #Godot 

创建时间: 2023-12-16 11:53

---

- StaticBody2D, CharacterBody2D, RigidBody2D 和 Area2D
  都是用来表现对象物理和碰撞判定的节点, 这些节点根据速度和方向来移动物体
- velocity 来更新速度, 使用 move_and_slide() 来更新位置
- velocity 会自动使用 delta 来计算速度
- Area2D: 2D 区域节点, 用以检测物体的进入或离开, 可移动(车)
- StaticBody2D: 2D 静态物体节点, 不可移动(墙)
- RigidBody2D: 2D 刚体节点, 按物理规律实现物体运动和碰撞(投射物)
- CharacterBody2D: 2D 角色节点, 由代码控制物体运动和碰撞(人)
- 所有的物体节点都需要定义碰撞形状子节点, 并且为碰撞形状节点指定形状
- CollisionShape2D 碰撞形状节点
- CollisionPolygon2D 碰撞多边形节点
- 碰撞形状的中心应维持在原点