链接: [[Godot]]

标签: #笔记 #Godot

创建时间: 2023-12-16 11:10

---

- Godot 是面向对象的, 节点之间存在继承关系
- 节点分为四类: <span style="color:dodgerblue">2D</span>, <span style="color:red">3D</span>, <span style="color:springgreen">Control</span>, 其他
- 节点可以包含另一节点, 从而组织成节点树, 构成一个场景
- 场景以 .tscn 文件的方式保存在游戏目录中
- 通过实例化的方式, 可以在场景内引用另一场景
- 在场景面板中, 节点和场景有绘制顺序, 最下方的节点最后绘制, 显示在最前方