
## 适配器模式 -- 结构型模式
 
适配器模式：将一个类的接口，转换成客户期望的另一个接口。适配器让原本接口不兼容的类可以合作无间。
 
- Client: 客户只看到目标接口
- Target接口：适配器实现目标接口
- Adapter：适配器与被适配者组合
- Adaptee：所有的请求都委托给被适配者
 
### 适配器模式有两种：对象适配器和类适配器。
 
- 对象适配器利用组合的方式将请求传送给被适配者
- 类适配器是继承了被适配者和目标类，它使用了多重继承
 
### 适配器模式和装饰者模式的区别
 
- 适配器模式是将一个接口转换成另一个接口
- 装饰者是不改变接口，但加入了责任，扩展我们包装对象的行为或责任