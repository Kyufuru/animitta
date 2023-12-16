链接: [[Godot]]

标签: #笔记 #Godot 

创建时间: 2023-12-16 11:55

---

- 基本流程: 创建场景(作为模板) -> 为场景创建实例 -> 将实例添加到节点树中
- 在创建场景实例前, 需要预加载场景资源:
    `var scn: PackedScene = preload(res)`
- `var ins = scn.instantiate()` 为场景创建实例
- `add_child(ins)` 将实例添加到节点树中
- `if "func" in ins` 判断实例是否存在对应方法
- `ins.queue_free()` 销毁实例
- `randi()` 用于随机生成整数
- Marker2D 节点用于标记实例创建的坐标
- `@export var a` 将变量导出, 可以在属性面板上修改该变量
- 实例发出的信号可以使用 `connect(sign_name,func)` 进行动态连接