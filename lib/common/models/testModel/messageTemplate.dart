import 'package:flutter_project_learn/common/models/testModel/UserInfo.dart';

/// clients : "-1"
/// msgType : 2
/// releaseTime : "待发布"
/// publishMode : 0
/// grades : "0"
/// delFlag : 0
/// title : "TestOnly-StationNews"
/// content : "TestOnly-StationNews- 待审核"
/// vipGrade : "99"
/// activityId : "1526458649847894809"
/// createdAt : "2023-08-28 18:11:57"
/// sysStatus : 2
/// approveResult : null
/// awayGroundUrl : ""
/// stxx : 5000
/// linkUrl : ""
/// iconUrl : "4"
/// id : "1695827288790143723"
/// pushTime : "无推送"
/// updatedAt : "2023-08-28 18:11:57"
/// eventId : "-1"
/// publishTime : "2000-01-01 00:00:00"
/// updatedBy : "orchid01"
/// pcUrl : ""
/// devices : "0,1"
/// pushStatus : 1
/// awayGroundName : ""
/// homeCourtIcon : ""
/// venuesId : "-1"
/// eventType : -1
/// sendMembers : ""
/// sort : -1
/// pageId : ""
/// h5Url : ""
/// jumpTypeNew : 2
/// pushFlag : 0
/// pushTimeSave : null
/// createdBy : "orchid01"
/// topStatus : 0
/// homeCourtName : ""
/// sendType : 3
/// gameShowBeginTime : null
/// linkType : 1
/// sportProject : ""
/// category : 1
/// venuesEnName : ""

class MessageTemplate {
  MessageTemplate({
      String? clients, 
      num? msgType, 
      String? releaseTime, 
      num? publishMode, 
      String? grades, 
      num? delFlag, 
      String? title, 
      String? content, 
      String? vipGrade, 
      String? activityId, 
      String? createdAt, 
      num? sysStatus, 
      dynamic approveResult, 
      String? awayGroundUrl, 
      num? stxx, 
      String? linkUrl, 
      String? iconUrl, 
      String? id, 
      String? pushTime, 
      String? updatedAt, 
      String? eventId, 
      String? publishTime, 
      String? updatedBy, 
      String? pcUrl, 
      String? devices, 
      num? pushStatus, 
      String? awayGroundName, 
      String? homeCourtIcon, 
      String? venuesId, 
      num? eventType, 
      String? sendMembers, 
      num? sort, 
      String? pageId, 
      String? h5Url, 
      num? jumpTypeNew, 
      num? pushFlag, 
      dynamic pushTimeSave, 
      String? createdBy, 
      num? topStatus, 
      String? homeCourtName, 
      num? sendType, 
      dynamic gameShowBeginTime, 
      num? linkType, 
      String? sportProject, 
      num? category, 
      String? venuesEnName,
      UserInfo? userInfo,
      List<UserInfo>?  userInfos,
  }){
    _clients = clients;
    _msgType = msgType;
    _releaseTime = releaseTime;
    _publishMode = publishMode;
    _grades = grades;
    _delFlag = delFlag;
    _title = title;
    _content = content;
    _vipGrade = vipGrade;
    _activityId = activityId;
    _createdAt = createdAt;
    _sysStatus = sysStatus;
    _approveResult = approveResult;
    _awayGroundUrl = awayGroundUrl;
    _stxx = stxx;
    _linkUrl = linkUrl;
    _iconUrl = iconUrl;
    _id = id;
    _pushTime = pushTime;
    _updatedAt = updatedAt;
    _eventId = eventId;
    _publishTime = publishTime;
    _updatedBy = updatedBy;
    _pcUrl = pcUrl;
    _devices = devices;
    _pushStatus = pushStatus;
    _awayGroundName = awayGroundName;
    _homeCourtIcon = homeCourtIcon;
    _venuesId = venuesId;
    _eventType = eventType;
    _sendMembers = sendMembers;
    _sort = sort;
    _pageId = pageId;
    _h5Url = h5Url;
    _jumpTypeNew = jumpTypeNew;
    _pushFlag = pushFlag;
    _pushTimeSave = pushTimeSave;
    _createdBy = createdBy;
    _topStatus = topStatus;
    _homeCourtName = homeCourtName;
    _sendType = sendType;
    _gameShowBeginTime = gameShowBeginTime;
    _linkType = linkType;
    _sportProject = sportProject;
    _category = category;
    _venuesEnName = venuesEnName;
    _userInfo = userInfo;
    _userInfos = userInfos;
}

  MessageTemplate.fromJson(dynamic json) {
    _clients = json['clients'];
    _msgType = json['msgType'];
    _releaseTime = json['releaseTime'];
    _publishMode = json['publishMode'];
    _grades = json['grades'];
    _delFlag = json['delFlag'];
    _title = json['title'];
    _content = json['content'];
    _vipGrade = json['vipGrade'];
    _activityId = json['activityId'];
    _createdAt = json['createdAt'];
    _sysStatus = json['sysStatus'];
    _approveResult = json['approveResult'];
    _awayGroundUrl = json['awayGroundUrl'];
    _stxx = json['stxx'];
    _linkUrl = json['linkUrl'];
    _iconUrl = json['iconUrl'];
    _id = json['id'];
    _pushTime = json['pushTime'];
    _updatedAt = json['updatedAt'];
    _eventId = json['eventId'];
    _publishTime = json['publishTime'];
    _updatedBy = json['updatedBy'];
    _pcUrl = json['pcUrl'];
    _devices = json['devices'];
    _pushStatus = json['pushStatus'];
    _awayGroundName = json['awayGroundName'];
    _homeCourtIcon = json['homeCourtIcon'];
    _venuesId = json['venuesId'];
    _eventType = json['eventType'];
    _sendMembers = json['sendMembers'];
    _sort = json['sort'];
    _pageId = json['pageId'];
    _h5Url = json['h5Url'];
    _jumpTypeNew = json['jumpTypeNew'];
    _pushFlag = json['pushFlag'];
    _pushTimeSave = json['pushTimeSave'];
    _createdBy = json['createdBy'];
    _topStatus = json['topStatus'];
    _homeCourtName = json['homeCourtName'];
    _sendType = json['sendType'];
    _gameShowBeginTime = json['gameShowBeginTime'];
    _linkType = json['linkType'];
    _sportProject = json['sportProject'];
    _category = json['category'];
    _venuesEnName = json['venuesEnName'];
    _userInfo = json['userInfo']!=null? UserInfo.fromJson(json['userInfo']):null;
    _userInfos = json['userInfos']!=null? (json['userInfos'] as List<dynamic>?)?.map((e) => UserInfo.fromJson(e)).toList() :null;
  }
  String? _clients;
  num? _msgType;
  String? _releaseTime;
  num? _publishMode;
  String? _grades;
  num? _delFlag;
  String? _title;
  String? _content;
  String? _vipGrade;
  String? _activityId;
  String? _createdAt;
  num? _sysStatus;
  dynamic _approveResult;
  String? _awayGroundUrl;
  num? _stxx;
  String? _linkUrl;
  String? _iconUrl;
  String? _id;
  String? _pushTime;
  String? _updatedAt;
  String? _eventId;
  String? _publishTime;
  String? _updatedBy;
  String? _pcUrl;
  String? _devices;
  num? _pushStatus;
  String? _awayGroundName;
  String? _homeCourtIcon;
  String? _venuesId;
  num? _eventType;
  String? _sendMembers;
  num? _sort;
  String? _pageId;
  String? _h5Url;
  num? _jumpTypeNew;
  num? _pushFlag;
  dynamic _pushTimeSave;
  String? _createdBy;
  num? _topStatus;
  String? _homeCourtName;
  num? _sendType;
  dynamic _gameShowBeginTime;
  num? _linkType;
  String? _sportProject;
  num? _category;
  String? _venuesEnName;
  UserInfo? _userInfo;
  List<UserInfo>? _userInfos;
MessageTemplate copyWith({  String? clients,
  num? msgType,
  String? releaseTime,
  num? publishMode,
  String? grades,
  num? delFlag,
  String? title,
  String? content,
  String? vipGrade,
  String? activityId,
  String? createdAt,
  num? sysStatus,
  dynamic approveResult,
  String? awayGroundUrl,
  num? stxx,
  String? linkUrl,
  String? iconUrl,
  String? id,
  String? pushTime,
  String? updatedAt,
  String? eventId,
  String? publishTime,
  String? updatedBy,
  String? pcUrl,
  String? devices,
  num? pushStatus,
  String? awayGroundName,
  String? homeCourtIcon,
  String? venuesId,
  num? eventType,
  String? sendMembers,
  num? sort,
  String? pageId,
  String? h5Url,
  num? jumpTypeNew,
  num? pushFlag,
  dynamic pushTimeSave,
  String? createdBy,
  num? topStatus,
  String? homeCourtName,
  num? sendType,
  dynamic gameShowBeginTime,
  num? linkType,
  String? sportProject,
  num? category,
  String? venuesEnName,
  UserInfo? userInfo,
  List<UserInfo>? userInfos,
}) => MessageTemplate(  clients: clients ?? _clients,
  msgType: msgType ?? _msgType,
  releaseTime: releaseTime ?? _releaseTime,
  publishMode: publishMode ?? _publishMode,
  grades: grades ?? _grades,
  delFlag: delFlag ?? _delFlag,
  title: title ?? _title,
  content: content ?? _content,
  vipGrade: vipGrade ?? _vipGrade,
  activityId: activityId ?? _activityId,
  createdAt: createdAt ?? _createdAt,
  sysStatus: sysStatus ?? _sysStatus,
  approveResult: approveResult ?? _approveResult,
  awayGroundUrl: awayGroundUrl ?? _awayGroundUrl,
  stxx: stxx ?? _stxx,
  linkUrl: linkUrl ?? _linkUrl,
  iconUrl: iconUrl ?? _iconUrl,
  id: id ?? _id,
  pushTime: pushTime ?? _pushTime,
  updatedAt: updatedAt ?? _updatedAt,
  eventId: eventId ?? _eventId,
  publishTime: publishTime ?? _publishTime,
  updatedBy: updatedBy ?? _updatedBy,
  pcUrl: pcUrl ?? _pcUrl,
  devices: devices ?? _devices,
  pushStatus: pushStatus ?? _pushStatus,
  awayGroundName: awayGroundName ?? _awayGroundName,
  homeCourtIcon: homeCourtIcon ?? _homeCourtIcon,
  venuesId: venuesId ?? _venuesId,
  eventType: eventType ?? _eventType,
  sendMembers: sendMembers ?? _sendMembers,
  sort: sort ?? _sort,
  pageId: pageId ?? _pageId,
  h5Url: h5Url ?? _h5Url,
  jumpTypeNew: jumpTypeNew ?? _jumpTypeNew,
  pushFlag: pushFlag ?? _pushFlag,
  pushTimeSave: pushTimeSave ?? _pushTimeSave,
  createdBy: createdBy ?? _createdBy,
  topStatus: topStatus ?? _topStatus,
  homeCourtName: homeCourtName ?? _homeCourtName,
  sendType: sendType ?? _sendType,
  gameShowBeginTime: gameShowBeginTime ?? _gameShowBeginTime,
  linkType: linkType ?? _linkType,
  sportProject: sportProject ?? _sportProject,
  category: category ?? _category,
  venuesEnName: venuesEnName ?? _venuesEnName,
  userInfo: userInfo?? _userInfo,
  userInfos: userInfos?? _userInfos,
);
  String? get clients => _clients;
  num? get msgType => _msgType;
  String? get releaseTime => _releaseTime;
  num? get publishMode => _publishMode;
  String? get grades => _grades;
  num? get delFlag => _delFlag;
  String? get title => _title;
  String? get content => _content;
  String? get vipGrade => _vipGrade;
  String? get activityId => _activityId;
  String? get createdAt => _createdAt;
  num? get sysStatus => _sysStatus;
  dynamic get approveResult => _approveResult;
  String? get awayGroundUrl => _awayGroundUrl;
  num? get stxx => _stxx;
  String? get linkUrl => _linkUrl;
  String? get iconUrl => _iconUrl;
  String? get id => _id;
  String? get pushTime => _pushTime;
  String? get updatedAt => _updatedAt;
  String? get eventId => _eventId;
  String? get publishTime => _publishTime;
  String? get updatedBy => _updatedBy;
  String? get pcUrl => _pcUrl;
  String? get devices => _devices;
  num? get pushStatus => _pushStatus;
  String? get awayGroundName => _awayGroundName;
  String? get homeCourtIcon => _homeCourtIcon;
  String? get venuesId => _venuesId;
  num? get eventType => _eventType;
  String? get sendMembers => _sendMembers;
  num? get sort => _sort;
  String? get pageId => _pageId;
  String? get h5Url => _h5Url;
  num? get jumpTypeNew => _jumpTypeNew;
  num? get pushFlag => _pushFlag;
  dynamic get pushTimeSave => _pushTimeSave;
  String? get createdBy => _createdBy;
  num? get topStatus => _topStatus;
  String? get homeCourtName => _homeCourtName;
  num? get sendType => _sendType;
  dynamic get gameShowBeginTime => _gameShowBeginTime;
  num? get linkType => _linkType;
  String? get sportProject => _sportProject;
  num? get category => _category;
  String? get venuesEnName => _venuesEnName;
  UserInfo? get userInfo => _userInfo;
  List<UserInfo>? get userInfos => _userInfos;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['clients'] = _clients;
    map['msgType'] = _msgType;
    map['releaseTime'] = _releaseTime;
    map['publishMode'] = _publishMode;
    map['grades'] = _grades;
    map['delFlag'] = _delFlag;
    map['title'] = _title;
    map['content'] = _content;
    map['vipGrade'] = _vipGrade;
    map['activityId'] = _activityId;
    map['createdAt'] = _createdAt;
    map['sysStatus'] = _sysStatus;
    map['approveResult'] = _approveResult;
    map['awayGroundUrl'] = _awayGroundUrl;
    map['stxx'] = _stxx;
    map['linkUrl'] = _linkUrl;
    map['iconUrl'] = _iconUrl;
    map['id'] = _id;
    map['pushTime'] = _pushTime;
    map['updatedAt'] = _updatedAt;
    map['eventId'] = _eventId;
    map['publishTime'] = _publishTime;
    map['updatedBy'] = _updatedBy;
    map['pcUrl'] = _pcUrl;
    map['devices'] = _devices;
    map['pushStatus'] = _pushStatus;
    map['awayGroundName'] = _awayGroundName;
    map['homeCourtIcon'] = _homeCourtIcon;
    map['venuesId'] = _venuesId;
    map['eventType'] = _eventType;
    map['sendMembers'] = _sendMembers;
    map['sort'] = _sort;
    map['pageId'] = _pageId;
    map['h5Url'] = _h5Url;
    map['jumpTypeNew'] = _jumpTypeNew;
    map['pushFlag'] = _pushFlag;
    map['pushTimeSave'] = _pushTimeSave;
    map['createdBy'] = _createdBy;
    map['topStatus'] = _topStatus;
    map['homeCourtName'] = _homeCourtName;
    map['sendType'] = _sendType;
    map['gameShowBeginTime'] = _gameShowBeginTime;
    map['linkType'] = _linkType;
    map['sportProject'] = _sportProject;
    map['category'] = _category;
    map['venuesEnName'] = _venuesEnName;
    map['userInfo'] = _userInfo?.toJson();
    map['userInfos'] = _userInfos?.map((e) => e.toJson()).toList();
    return map;
  }

  @override
  String toString() {
    return 'MessageTemplate{_clients: $_clients, _msgType: $_msgType, _releaseTime: $_releaseTime, _publishMode: $_publishMode, _grades: $_grades, _delFlag: $_delFlag, _title: $_title, _content: $_content, _vipGrade: $_vipGrade, _activityId: $_activityId, _createdAt: $_createdAt, _sysStatus: $_sysStatus, _approveResult: $_approveResult, _awayGroundUrl: $_awayGroundUrl, _stxx: $_stxx, _linkUrl: $_linkUrl, _iconUrl: $_iconUrl, _id: $_id, _pushTime: $_pushTime, _updatedAt: $_updatedAt, _eventId: $_eventId, _publishTime: $_publishTime, _updatedBy: $_updatedBy, _pcUrl: $_pcUrl, _devices: $_devices, _pushStatus: $_pushStatus, _awayGroundName: $_awayGroundName, _homeCourtIcon: $_homeCourtIcon, _venuesId: $_venuesId, _eventType: $_eventType, _sendMembers: $_sendMembers, _sort: $_sort, _pageId: $_pageId, _h5Url: $_h5Url, _jumpTypeNew: $_jumpTypeNew, _pushFlag: $_pushFlag, _pushTimeSave: $_pushTimeSave, _createdBy: $_createdBy, _topStatus: $_topStatus, _homeCourtName: $_homeCourtName, _sendType: $_sendType, _gameShowBeginTime: $_gameShowBeginTime, _linkType: $_linkType, _sportProject: $_sportProject, _category: $_category, _venuesEnName: $_venuesEnName, _userInfo: $_userInfo}';
  }
}