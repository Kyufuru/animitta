链接: [[Godot]]

标签: #笔记 #Godot 

创建时间: 2023-12-16 14:23

---

- 新建场景, 创建一个覆盖全屏的 ColorRect 节点
- 将该场景设置为 AutoLoad 场景
- 添加 AnimationPlayer 节点, 创建动画改变 ColorRect
- 为场景创建方法, 当动画播放完毕后切换场景
- 使用 `await` 等待播放完成
- 使用 `AnimationPlayer.play_backwards()` 反向播放动画