flutter 顶部导航栏 keep alive

总结就是顶部的 tab 如果要和下面联动，下面的得用 TabBarView

然后中间内容区还需要继承
class _MyHomePageState extends State<MyHomePage> with AutomaticKeepAliveClientMixin {
  int _counter = 0;

  @override
  bool get wantKeepAlive => true;