abstract class Routes {
  // 根页面
  static const String root     = '/';
  // static const String root   = '/';
  static const String notFound = '/notFound';


  // 认证页面
  static const String login    = '/auth/login';
  static const String register = '/auth/register';
  static const String retrieve = '/auth/retrieve';

  // 主要功能页面
  static const String main = '/main';

  static const String searchUser = '/friends/searchUser';
  static const String userInfo = '/main/friends/userInfo';
  static const String addUser = '/main/friends/addUser';
  static const String sortName = '/main/friends/sortName';
  static const String verifyUser = '/main/friends/verifyUser';
  static const String personalMessage = '/main/friends/personalMessage';
  static const String fullTextEdit = '/main/friends/fullTextEdit';

  // 个人功能页面
  static const String settings = '/personal/settings';
  static const String accountManager = '/accountManager';
  static const String accountSafe = '/accountSafe';
  static const String onlineDevice = '/onlineDevice';

  static const String personalInfo = '/info/personalInfo';
  static const String modifyInfo = '/modifyInfo';

  static const String qrcode = '/main/personal/qrcode/';
  static const String cacheManager = '/main/personal/settings/cacheManager';

  // static final String setting = '/personal/setting'; //设置页面
  // static final String orc = '/personal/orc'; //orc 扫描
  // static final String learn = '/personal/learn'; //learn 学习
  // static final String personalInfo = '/personalInfo'; //个人资料
  // static final String qrcode = '/qrcode'; //查看二维码
  // static final String scanQrcode = '/scanQrcode'; //扫描二维码
  //
  // static final String searchUser = '/searchUser'; //搜索用户
  // static final String userInfo = '/userInfo'; //查看用户信息
  // static final String addFriend = '/addFriend'; //添加好友
  // static final String choiceGroup = '/choiceGroup'; //选择分组
  // static final String friendClassify = '/friendClassify'; //查看用户分组
  // static final String verifyFriend = '/verifyFriend'; //查看用户分组
  // static final String friendCard = '/friendCard'; //查看用户资料卡片
  // static final String userMessages = '/userMessages'; //用户会话页面
}