[Conway's Game of life](http://en.wikipedia.org/wiki/Conway%27s_Game_of_Life)
============

### 问题
细胞自动机，由一堆格子构成的封闭空间，尺寸为N的空间就有 N×N 个格子。每一个格子旁边都由邻居格子存在。 每个格子的生死遵循下面的原则：

1. 如果一个活细胞周围有两个或者三个活细胞，则这个细胞为生。
2. 如果一个活细胞周围少于两个活细胞，则这个细胞死亡。
3. 如果一个活细胞周围有超过三个活细胞，则这个细胞死亡。
4. 如果一个死细胞周围有三个活细胞，则这个细胞为生。

### 工作方式

1. 远程结对编程
2. 测试先行
3. 小步快走
4. ~~每45分钟休息一次~~ 小步快走的发布视频

### 工具

1. rake
2. rspec
3. ruby
4. vim
5. git / github
6. whiteboard
7. AntiRSI / Timer
8. SketchBook Express

### 原则
1. Always drive code from requirement - 代码是从需求一步一步推演出来
2. Limit red phase - 尽快让失败的测试用例通过，从而尽量缩短代码RED状态的时间
3. Improve design only when code base is safe - 只有在代码安全的状态下，才去优化和改进设计

### [Session 1] Feedback from RubyChina
1. 对游戏规则不熟悉[fixed]
2. 对极为细小的单元测试步伐不适应[fixed refs to 原则2]
3. 为什么不用自动测试工具？[fixed]
4. 尽量帮助初学者学习TDD的方法，原理[fixed]

### [Session 1] Feedback from Daniel Teng's friends
1. 有些测试用例的沟通性不强[fixed]
2. 接口设计不够友好[fixed]

### TODO

* ~~deal with two dimension~~
* switch i and j and @x_length and @y_length
* ~~merge has_2_alive_y_neighbors and has_2_alive_x_neighbors to has_two_neighbors~~
* ~~issue with assert_grid~~
* ~~mrege similiar codes: alive_y? and alive_x?~~
* ~~pull parameters for left_cell_alive? and up_cell_alive?~~
