链接: [[Godot]]

标签: #笔记 #Godot 

创建时间: 2023-12-16 12:03

---

- 使用项目设置 - 自动加载(Autoload)创建全局默认脚本或场景
- `@Onready` 用于使变量在**加载时**初始化
- 通过访问全局变量, 可将事件触发的结果应用到 UI 上
- 访问变量时触发事件的过程, 可以用 Get/Set 语法简化:
```gdscript
var val: int = 1
	get:
		return val
	set(value):
		val = value
```
- 节点和场景可以添加到**分组**中, `get_nodes_in_group()`获取分组成员节点
- 信号和变量对同一分组下的节点都是可见的