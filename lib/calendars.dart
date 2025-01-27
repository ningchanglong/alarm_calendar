
class Calendars {
  //标题参数
  String _title;

  String _location;

  //备注
  String _note;

  //提醒时间，默认提前15分钟提醒
  //可以设置多个提醒时间
  List<int>? _alert;

  //事件id，根据此id来更新或删除提醒事件
  //当为-1时表示未赋值。
  //创建提醒事件的时候，eventId在后台是自增的。
  //不受此参数影响
  //具体eventId需要在自己保留
  String _eventId;

  //开始时间，不设置即为默认
  DateTime _startTime;

  //结束时间，不要觉得默认时间很奇怪，连时间都要默认还要这个插件干嘛。
  DateTime _endTime;

  //全天事件，如果为全天事件设置为1。
  int _allDay;

//  DateTime(int year,
//      [int month = 1,
//        int day = 1,
//        int hour = 0,
//        int minute = 0,
//        int second = 0,
//        int millisecond = 0,
//        int microsecond = 0])
//      : this._internal(year, month, day, hour, minute, second, millisecond,
//      microsecond, false);

  Calendars(DateTime startTime, DateTime endTime,
      [String title = 'title',
      String location = 'location',
      String note = 'note',
      List<int>? alert,
      String eventId = '-1',
      int allDay = 0])
      : _title = title,
        _location = location,
        _note = note,
        _alert = alert,
        _eventId = eventId,
        _startTime = startTime,
        _endTime = endTime,
        _allDay = allDay {
    if (_startTime == null) {
      _startTime = DateTime(2020, 5, 20, 13, 14);
    }
    if (_endTime == null) {
      _endTime = DateTime(2020, 5, 21, 13, 14);
    }
  }

  //  get方法
  String get getTitle => _title;

  String get getLocation => _location;

  String get getNote => _note;

  List<int>? get getAlert => _alert;

  String get getEventId => _eventId;

  DateTime get getStartTime => _startTime;

  DateTime get getEndTime => _endTime;

  int get getAllDay => _allDay;

  //set方法

  set setTitle(String title) => this._title = title;

  set setLocation(String location) => this._location = location;

  set setNote(String note) => this._note = note;

  set setAlert(List<int> alert) => this._alert = alert;

  set setEventId(String eventId) => this._eventId = eventId;

  set setStartTime(DateTime startTime) => this._startTime = startTime;

  set setEndTime(DateTime endTime) => this._endTime = endTime;

  set setAllDay(int allDay) => this._allDay = allDay;
}
