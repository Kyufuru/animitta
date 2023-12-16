- 补间动画(Tweens) 是通过脚本创建的一类对象, 用于创建简单动画
- `get_tree().create_tween()` 创建补间动画
- `tween.tween_peroperty()` 为补间动画应用
  对象,属性,终止值,时长(s)
- `tween_peroperty().from()` 设置动画起始值
- `tween_peroperty().set_trans()` 设置播放方式
- "modulate:a" 单独引用不透明度属性
- `tween.set_parallel()` 可以同时播放多个补间动画