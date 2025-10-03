// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_database.dart';

// ignore_for_file: type=lint
class $UserProgressesTable extends UserProgresses
    with TableInfo<$UserProgressesTable, UserProgress> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $UserProgressesTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
    'id',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
    defaultValue: const Constant(1),
  );
  static const VerificationMeta _currentLevelIdMeta = const VerificationMeta(
    'currentLevelId',
  );
  @override
  late final GeneratedColumn<int> currentLevelId = GeneratedColumn<int>(
    'current_level_id',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
    defaultValue: const Constant(1),
  );
  static const VerificationMeta _totalEarnedXpMeta = const VerificationMeta(
    'totalEarnedXp',
  );
  @override
  late final GeneratedColumn<int> totalEarnedXp = GeneratedColumn<int>(
    'total_earned_xp',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
    defaultValue: const Constant(0),
  );
  @override
  List<GeneratedColumn> get $columns => [id, currentLevelId, totalEarnedXp];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'user_progresses';
  @override
  VerificationContext validateIntegrity(
    Insertable<UserProgress> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('current_level_id')) {
      context.handle(
        _currentLevelIdMeta,
        currentLevelId.isAcceptableOrUnknown(
          data['current_level_id']!,
          _currentLevelIdMeta,
        ),
      );
    }
    if (data.containsKey('total_earned_xp')) {
      context.handle(
        _totalEarnedXpMeta,
        totalEarnedXp.isAcceptableOrUnknown(
          data['total_earned_xp']!,
          _totalEarnedXpMeta,
        ),
      );
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  UserProgress map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return UserProgress(
      id: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}id'],
      )!,
      currentLevelId: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}current_level_id'],
      )!,
      totalEarnedXp: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}total_earned_xp'],
      )!,
    );
  }

  @override
  $UserProgressesTable createAlias(String alias) {
    return $UserProgressesTable(attachedDatabase, alias);
  }
}

class UserProgress extends DataClass implements Insertable<UserProgress> {
  final int id;
  final int currentLevelId;
  final int totalEarnedXp;
  const UserProgress({
    required this.id,
    required this.currentLevelId,
    required this.totalEarnedXp,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['current_level_id'] = Variable<int>(currentLevelId);
    map['total_earned_xp'] = Variable<int>(totalEarnedXp);
    return map;
  }

  UserProgressesCompanion toCompanion(bool nullToAbsent) {
    return UserProgressesCompanion(
      id: Value(id),
      currentLevelId: Value(currentLevelId),
      totalEarnedXp: Value(totalEarnedXp),
    );
  }

  factory UserProgress.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return UserProgress(
      id: serializer.fromJson<int>(json['id']),
      currentLevelId: serializer.fromJson<int>(json['currentLevelId']),
      totalEarnedXp: serializer.fromJson<int>(json['totalEarnedXp']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'currentLevelId': serializer.toJson<int>(currentLevelId),
      'totalEarnedXp': serializer.toJson<int>(totalEarnedXp),
    };
  }

  UserProgress copyWith({int? id, int? currentLevelId, int? totalEarnedXp}) =>
      UserProgress(
        id: id ?? this.id,
        currentLevelId: currentLevelId ?? this.currentLevelId,
        totalEarnedXp: totalEarnedXp ?? this.totalEarnedXp,
      );
  UserProgress copyWithCompanion(UserProgressesCompanion data) {
    return UserProgress(
      id: data.id.present ? data.id.value : this.id,
      currentLevelId: data.currentLevelId.present
          ? data.currentLevelId.value
          : this.currentLevelId,
      totalEarnedXp: data.totalEarnedXp.present
          ? data.totalEarnedXp.value
          : this.totalEarnedXp,
    );
  }

  @override
  String toString() {
    return (StringBuffer('UserProgress(')
          ..write('id: $id, ')
          ..write('currentLevelId: $currentLevelId, ')
          ..write('totalEarnedXp: $totalEarnedXp')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, currentLevelId, totalEarnedXp);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is UserProgress &&
          other.id == this.id &&
          other.currentLevelId == this.currentLevelId &&
          other.totalEarnedXp == this.totalEarnedXp);
}

class UserProgressesCompanion extends UpdateCompanion<UserProgress> {
  final Value<int> id;
  final Value<int> currentLevelId;
  final Value<int> totalEarnedXp;
  const UserProgressesCompanion({
    this.id = const Value.absent(),
    this.currentLevelId = const Value.absent(),
    this.totalEarnedXp = const Value.absent(),
  });
  UserProgressesCompanion.insert({
    this.id = const Value.absent(),
    this.currentLevelId = const Value.absent(),
    this.totalEarnedXp = const Value.absent(),
  });
  static Insertable<UserProgress> custom({
    Expression<int>? id,
    Expression<int>? currentLevelId,
    Expression<int>? totalEarnedXp,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (currentLevelId != null) 'current_level_id': currentLevelId,
      if (totalEarnedXp != null) 'total_earned_xp': totalEarnedXp,
    });
  }

  UserProgressesCompanion copyWith({
    Value<int>? id,
    Value<int>? currentLevelId,
    Value<int>? totalEarnedXp,
  }) {
    return UserProgressesCompanion(
      id: id ?? this.id,
      currentLevelId: currentLevelId ?? this.currentLevelId,
      totalEarnedXp: totalEarnedXp ?? this.totalEarnedXp,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (currentLevelId.present) {
      map['current_level_id'] = Variable<int>(currentLevelId.value);
    }
    if (totalEarnedXp.present) {
      map['total_earned_xp'] = Variable<int>(totalEarnedXp.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('UserProgressesCompanion(')
          ..write('id: $id, ')
          ..write('currentLevelId: $currentLevelId, ')
          ..write('totalEarnedXp: $totalEarnedXp')
          ..write(')'))
        .toString();
  }
}

class $LevelsTable extends Levels with TableInfo<$LevelsTable, Level> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $LevelsTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
    'id',
    aliasedName,
    false,
    hasAutoIncrement: true,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'PRIMARY KEY AUTOINCREMENT',
    ),
  );
  static const VerificationMeta _indexMeta = const VerificationMeta('index');
  @override
  late final GeneratedColumn<int> index = GeneratedColumn<int>(
    'index',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
    defaultConstraints: GeneratedColumn.constraintIsAlways('UNIQUE'),
  );
  static const VerificationMeta _titleMeta = const VerificationMeta('title');
  @override
  late final GeneratedColumn<String> title = GeneratedColumn<String>(
    'title',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  @override
  List<GeneratedColumn> get $columns => [id, index, title];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'levels';
  @override
  VerificationContext validateIntegrity(
    Insertable<Level> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('index')) {
      context.handle(
        _indexMeta,
        index.isAcceptableOrUnknown(data['index']!, _indexMeta),
      );
    } else if (isInserting) {
      context.missing(_indexMeta);
    }
    if (data.containsKey('title')) {
      context.handle(
        _titleMeta,
        title.isAcceptableOrUnknown(data['title']!, _titleMeta),
      );
    } else if (isInserting) {
      context.missing(_titleMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  Level map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return Level(
      id: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}id'],
      )!,
      index: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}index'],
      )!,
      title: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}title'],
      )!,
    );
  }

  @override
  $LevelsTable createAlias(String alias) {
    return $LevelsTable(attachedDatabase, alias);
  }
}

class Level extends DataClass implements Insertable<Level> {
  final int id;
  final int index;
  final String title;
  const Level({required this.id, required this.index, required this.title});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['index'] = Variable<int>(index);
    map['title'] = Variable<String>(title);
    return map;
  }

  LevelsCompanion toCompanion(bool nullToAbsent) {
    return LevelsCompanion(
      id: Value(id),
      index: Value(index),
      title: Value(title),
    );
  }

  factory Level.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return Level(
      id: serializer.fromJson<int>(json['id']),
      index: serializer.fromJson<int>(json['index']),
      title: serializer.fromJson<String>(json['title']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'index': serializer.toJson<int>(index),
      'title': serializer.toJson<String>(title),
    };
  }

  Level copyWith({int? id, int? index, String? title}) => Level(
    id: id ?? this.id,
    index: index ?? this.index,
    title: title ?? this.title,
  );
  Level copyWithCompanion(LevelsCompanion data) {
    return Level(
      id: data.id.present ? data.id.value : this.id,
      index: data.index.present ? data.index.value : this.index,
      title: data.title.present ? data.title.value : this.title,
    );
  }

  @override
  String toString() {
    return (StringBuffer('Level(')
          ..write('id: $id, ')
          ..write('index: $index, ')
          ..write('title: $title')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, index, title);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is Level &&
          other.id == this.id &&
          other.index == this.index &&
          other.title == this.title);
}

class LevelsCompanion extends UpdateCompanion<Level> {
  final Value<int> id;
  final Value<int> index;
  final Value<String> title;
  const LevelsCompanion({
    this.id = const Value.absent(),
    this.index = const Value.absent(),
    this.title = const Value.absent(),
  });
  LevelsCompanion.insert({
    this.id = const Value.absent(),
    required int index,
    required String title,
  }) : index = Value(index),
       title = Value(title);
  static Insertable<Level> custom({
    Expression<int>? id,
    Expression<int>? index,
    Expression<String>? title,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (index != null) 'index': index,
      if (title != null) 'title': title,
    });
  }

  LevelsCompanion copyWith({
    Value<int>? id,
    Value<int>? index,
    Value<String>? title,
  }) {
    return LevelsCompanion(
      id: id ?? this.id,
      index: index ?? this.index,
      title: title ?? this.title,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (index.present) {
      map['index'] = Variable<int>(index.value);
    }
    if (title.present) {
      map['title'] = Variable<String>(title.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('LevelsCompanion(')
          ..write('id: $id, ')
          ..write('index: $index, ')
          ..write('title: $title')
          ..write(')'))
        .toString();
  }
}

class $QuestsTable extends Quests with TableInfo<$QuestsTable, Quest> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $QuestsTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
    'id',
    aliasedName,
    false,
    hasAutoIncrement: true,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'PRIMARY KEY AUTOINCREMENT',
    ),
  );
  static const VerificationMeta _levelIdMeta = const VerificationMeta(
    'levelId',
  );
  @override
  late final GeneratedColumn<int> levelId = GeneratedColumn<int>(
    'level_id',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'REFERENCES levels (id) ON DELETE CASCADE',
    ),
  );
  static const VerificationMeta _titleMeta = const VerificationMeta('title');
  @override
  late final GeneratedColumn<String> title = GeneratedColumn<String>(
    'title',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _descriptionMeta = const VerificationMeta(
    'description',
  );
  @override
  late final GeneratedColumn<String> description = GeneratedColumn<String>(
    'description',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  @override
  late final GeneratedColumnWithTypeConverter<QuestType, int> type =
      GeneratedColumn<int>(
        'type',
        aliasedName,
        false,
        type: DriftSqlType.int,
        requiredDuringInsert: true,
      ).withConverter<QuestType>($QuestsTable.$convertertype);
  static const VerificationMeta _xpRewardMeta = const VerificationMeta(
    'xpReward',
  );
  @override
  late final GeneratedColumn<int> xpReward = GeneratedColumn<int>(
    'xp_reward',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
    defaultValue: const Constant(0),
  );
  static const VerificationMeta _completedMeta = const VerificationMeta(
    'completed',
  );
  @override
  late final GeneratedColumn<bool> completed = GeneratedColumn<bool>(
    'completed',
    aliasedName,
    false,
    type: DriftSqlType.bool,
    requiredDuringInsert: false,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'CHECK ("completed" IN (0, 1))',
    ),
    defaultValue: const Constant(false),
  );
  @override
  List<GeneratedColumn> get $columns => [
    id,
    levelId,
    title,
    description,
    type,
    xpReward,
    completed,
  ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'quests';
  @override
  VerificationContext validateIntegrity(
    Insertable<Quest> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('level_id')) {
      context.handle(
        _levelIdMeta,
        levelId.isAcceptableOrUnknown(data['level_id']!, _levelIdMeta),
      );
    } else if (isInserting) {
      context.missing(_levelIdMeta);
    }
    if (data.containsKey('title')) {
      context.handle(
        _titleMeta,
        title.isAcceptableOrUnknown(data['title']!, _titleMeta),
      );
    } else if (isInserting) {
      context.missing(_titleMeta);
    }
    if (data.containsKey('description')) {
      context.handle(
        _descriptionMeta,
        description.isAcceptableOrUnknown(
          data['description']!,
          _descriptionMeta,
        ),
      );
    }
    if (data.containsKey('xp_reward')) {
      context.handle(
        _xpRewardMeta,
        xpReward.isAcceptableOrUnknown(data['xp_reward']!, _xpRewardMeta),
      );
    }
    if (data.containsKey('completed')) {
      context.handle(
        _completedMeta,
        completed.isAcceptableOrUnknown(data['completed']!, _completedMeta),
      );
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  Quest map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return Quest(
      id: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}id'],
      )!,
      levelId: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}level_id'],
      )!,
      title: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}title'],
      )!,
      description: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}description'],
      ),
      type: $QuestsTable.$convertertype.fromSql(
        attachedDatabase.typeMapping.read(
          DriftSqlType.int,
          data['${effectivePrefix}type'],
        )!,
      ),
      xpReward: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}xp_reward'],
      )!,
      completed: attachedDatabase.typeMapping.read(
        DriftSqlType.bool,
        data['${effectivePrefix}completed'],
      )!,
    );
  }

  @override
  $QuestsTable createAlias(String alias) {
    return $QuestsTable(attachedDatabase, alias);
  }

  static JsonTypeConverter2<QuestType, int, int> $convertertype =
      const EnumIndexConverter<QuestType>(QuestType.values);
}

class Quest extends DataClass implements Insertable<Quest> {
  final int id;
  final int levelId;
  final String title;
  final String? description;
  final QuestType type;
  final int xpReward;
  final bool completed;
  const Quest({
    required this.id,
    required this.levelId,
    required this.title,
    this.description,
    required this.type,
    required this.xpReward,
    required this.completed,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['level_id'] = Variable<int>(levelId);
    map['title'] = Variable<String>(title);
    if (!nullToAbsent || description != null) {
      map['description'] = Variable<String>(description);
    }
    {
      map['type'] = Variable<int>($QuestsTable.$convertertype.toSql(type));
    }
    map['xp_reward'] = Variable<int>(xpReward);
    map['completed'] = Variable<bool>(completed);
    return map;
  }

  QuestsCompanion toCompanion(bool nullToAbsent) {
    return QuestsCompanion(
      id: Value(id),
      levelId: Value(levelId),
      title: Value(title),
      description: description == null && nullToAbsent
          ? const Value.absent()
          : Value(description),
      type: Value(type),
      xpReward: Value(xpReward),
      completed: Value(completed),
    );
  }

  factory Quest.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return Quest(
      id: serializer.fromJson<int>(json['id']),
      levelId: serializer.fromJson<int>(json['levelId']),
      title: serializer.fromJson<String>(json['title']),
      description: serializer.fromJson<String?>(json['description']),
      type: $QuestsTable.$convertertype.fromJson(
        serializer.fromJson<int>(json['type']),
      ),
      xpReward: serializer.fromJson<int>(json['xpReward']),
      completed: serializer.fromJson<bool>(json['completed']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'levelId': serializer.toJson<int>(levelId),
      'title': serializer.toJson<String>(title),
      'description': serializer.toJson<String?>(description),
      'type': serializer.toJson<int>($QuestsTable.$convertertype.toJson(type)),
      'xpReward': serializer.toJson<int>(xpReward),
      'completed': serializer.toJson<bool>(completed),
    };
  }

  Quest copyWith({
    int? id,
    int? levelId,
    String? title,
    Value<String?> description = const Value.absent(),
    QuestType? type,
    int? xpReward,
    bool? completed,
  }) => Quest(
    id: id ?? this.id,
    levelId: levelId ?? this.levelId,
    title: title ?? this.title,
    description: description.present ? description.value : this.description,
    type: type ?? this.type,
    xpReward: xpReward ?? this.xpReward,
    completed: completed ?? this.completed,
  );
  Quest copyWithCompanion(QuestsCompanion data) {
    return Quest(
      id: data.id.present ? data.id.value : this.id,
      levelId: data.levelId.present ? data.levelId.value : this.levelId,
      title: data.title.present ? data.title.value : this.title,
      description: data.description.present
          ? data.description.value
          : this.description,
      type: data.type.present ? data.type.value : this.type,
      xpReward: data.xpReward.present ? data.xpReward.value : this.xpReward,
      completed: data.completed.present ? data.completed.value : this.completed,
    );
  }

  @override
  String toString() {
    return (StringBuffer('Quest(')
          ..write('id: $id, ')
          ..write('levelId: $levelId, ')
          ..write('title: $title, ')
          ..write('description: $description, ')
          ..write('type: $type, ')
          ..write('xpReward: $xpReward, ')
          ..write('completed: $completed')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode =>
      Object.hash(id, levelId, title, description, type, xpReward, completed);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is Quest &&
          other.id == this.id &&
          other.levelId == this.levelId &&
          other.title == this.title &&
          other.description == this.description &&
          other.type == this.type &&
          other.xpReward == this.xpReward &&
          other.completed == this.completed);
}

class QuestsCompanion extends UpdateCompanion<Quest> {
  final Value<int> id;
  final Value<int> levelId;
  final Value<String> title;
  final Value<String?> description;
  final Value<QuestType> type;
  final Value<int> xpReward;
  final Value<bool> completed;
  const QuestsCompanion({
    this.id = const Value.absent(),
    this.levelId = const Value.absent(),
    this.title = const Value.absent(),
    this.description = const Value.absent(),
    this.type = const Value.absent(),
    this.xpReward = const Value.absent(),
    this.completed = const Value.absent(),
  });
  QuestsCompanion.insert({
    this.id = const Value.absent(),
    required int levelId,
    required String title,
    this.description = const Value.absent(),
    required QuestType type,
    this.xpReward = const Value.absent(),
    this.completed = const Value.absent(),
  }) : levelId = Value(levelId),
       title = Value(title),
       type = Value(type);
  static Insertable<Quest> custom({
    Expression<int>? id,
    Expression<int>? levelId,
    Expression<String>? title,
    Expression<String>? description,
    Expression<int>? type,
    Expression<int>? xpReward,
    Expression<bool>? completed,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (levelId != null) 'level_id': levelId,
      if (title != null) 'title': title,
      if (description != null) 'description': description,
      if (type != null) 'type': type,
      if (xpReward != null) 'xp_reward': xpReward,
      if (completed != null) 'completed': completed,
    });
  }

  QuestsCompanion copyWith({
    Value<int>? id,
    Value<int>? levelId,
    Value<String>? title,
    Value<String?>? description,
    Value<QuestType>? type,
    Value<int>? xpReward,
    Value<bool>? completed,
  }) {
    return QuestsCompanion(
      id: id ?? this.id,
      levelId: levelId ?? this.levelId,
      title: title ?? this.title,
      description: description ?? this.description,
      type: type ?? this.type,
      xpReward: xpReward ?? this.xpReward,
      completed: completed ?? this.completed,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (levelId.present) {
      map['level_id'] = Variable<int>(levelId.value);
    }
    if (title.present) {
      map['title'] = Variable<String>(title.value);
    }
    if (description.present) {
      map['description'] = Variable<String>(description.value);
    }
    if (type.present) {
      map['type'] = Variable<int>(
        $QuestsTable.$convertertype.toSql(type.value),
      );
    }
    if (xpReward.present) {
      map['xp_reward'] = Variable<int>(xpReward.value);
    }
    if (completed.present) {
      map['completed'] = Variable<bool>(completed.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('QuestsCompanion(')
          ..write('id: $id, ')
          ..write('levelId: $levelId, ')
          ..write('title: $title, ')
          ..write('description: $description, ')
          ..write('type: $type, ')
          ..write('xpReward: $xpReward, ')
          ..write('completed: $completed')
          ..write(')'))
        .toString();
  }
}

class $QuestProgressesTable extends QuestProgresses
    with TableInfo<$QuestProgressesTable, QuestProgress> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $QuestProgressesTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
    'id',
    aliasedName,
    false,
    hasAutoIncrement: true,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'PRIMARY KEY AUTOINCREMENT',
    ),
  );
  static const VerificationMeta _questIdMeta = const VerificationMeta(
    'questId',
  );
  @override
  late final GeneratedColumn<int> questId = GeneratedColumn<int>(
    'quest_id',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'REFERENCES quests (id) ON DELETE CASCADE',
    ),
  );
  static const VerificationMeta _isCompletedMeta = const VerificationMeta(
    'isCompleted',
  );
  @override
  late final GeneratedColumn<bool> isCompleted = GeneratedColumn<bool>(
    'is_completed',
    aliasedName,
    false,
    type: DriftSqlType.bool,
    requiredDuringInsert: false,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'CHECK ("is_completed" IN (0, 1))',
    ),
    defaultValue: const Constant(false),
  );
  static const VerificationMeta _completedAtMeta = const VerificationMeta(
    'completedAt',
  );
  @override
  late final GeneratedColumn<DateTime> completedAt = GeneratedColumn<DateTime>(
    'completed_at',
    aliasedName,
    true,
    type: DriftSqlType.dateTime,
    requiredDuringInsert: false,
  );
  @override
  List<GeneratedColumn> get $columns => [id, questId, isCompleted, completedAt];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'quest_progresses';
  @override
  VerificationContext validateIntegrity(
    Insertable<QuestProgress> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('quest_id')) {
      context.handle(
        _questIdMeta,
        questId.isAcceptableOrUnknown(data['quest_id']!, _questIdMeta),
      );
    } else if (isInserting) {
      context.missing(_questIdMeta);
    }
    if (data.containsKey('is_completed')) {
      context.handle(
        _isCompletedMeta,
        isCompleted.isAcceptableOrUnknown(
          data['is_completed']!,
          _isCompletedMeta,
        ),
      );
    }
    if (data.containsKey('completed_at')) {
      context.handle(
        _completedAtMeta,
        completedAt.isAcceptableOrUnknown(
          data['completed_at']!,
          _completedAtMeta,
        ),
      );
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  QuestProgress map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return QuestProgress(
      id: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}id'],
      )!,
      questId: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}quest_id'],
      )!,
      isCompleted: attachedDatabase.typeMapping.read(
        DriftSqlType.bool,
        data['${effectivePrefix}is_completed'],
      )!,
      completedAt: attachedDatabase.typeMapping.read(
        DriftSqlType.dateTime,
        data['${effectivePrefix}completed_at'],
      ),
    );
  }

  @override
  $QuestProgressesTable createAlias(String alias) {
    return $QuestProgressesTable(attachedDatabase, alias);
  }
}

class QuestProgress extends DataClass implements Insertable<QuestProgress> {
  final int id;
  final int questId;
  final bool isCompleted;
  final DateTime? completedAt;
  const QuestProgress({
    required this.id,
    required this.questId,
    required this.isCompleted,
    this.completedAt,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['quest_id'] = Variable<int>(questId);
    map['is_completed'] = Variable<bool>(isCompleted);
    if (!nullToAbsent || completedAt != null) {
      map['completed_at'] = Variable<DateTime>(completedAt);
    }
    return map;
  }

  QuestProgressesCompanion toCompanion(bool nullToAbsent) {
    return QuestProgressesCompanion(
      id: Value(id),
      questId: Value(questId),
      isCompleted: Value(isCompleted),
      completedAt: completedAt == null && nullToAbsent
          ? const Value.absent()
          : Value(completedAt),
    );
  }

  factory QuestProgress.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return QuestProgress(
      id: serializer.fromJson<int>(json['id']),
      questId: serializer.fromJson<int>(json['questId']),
      isCompleted: serializer.fromJson<bool>(json['isCompleted']),
      completedAt: serializer.fromJson<DateTime?>(json['completedAt']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'questId': serializer.toJson<int>(questId),
      'isCompleted': serializer.toJson<bool>(isCompleted),
      'completedAt': serializer.toJson<DateTime?>(completedAt),
    };
  }

  QuestProgress copyWith({
    int? id,
    int? questId,
    bool? isCompleted,
    Value<DateTime?> completedAt = const Value.absent(),
  }) => QuestProgress(
    id: id ?? this.id,
    questId: questId ?? this.questId,
    isCompleted: isCompleted ?? this.isCompleted,
    completedAt: completedAt.present ? completedAt.value : this.completedAt,
  );
  QuestProgress copyWithCompanion(QuestProgressesCompanion data) {
    return QuestProgress(
      id: data.id.present ? data.id.value : this.id,
      questId: data.questId.present ? data.questId.value : this.questId,
      isCompleted: data.isCompleted.present
          ? data.isCompleted.value
          : this.isCompleted,
      completedAt: data.completedAt.present
          ? data.completedAt.value
          : this.completedAt,
    );
  }

  @override
  String toString() {
    return (StringBuffer('QuestProgress(')
          ..write('id: $id, ')
          ..write('questId: $questId, ')
          ..write('isCompleted: $isCompleted, ')
          ..write('completedAt: $completedAt')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, questId, isCompleted, completedAt);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is QuestProgress &&
          other.id == this.id &&
          other.questId == this.questId &&
          other.isCompleted == this.isCompleted &&
          other.completedAt == this.completedAt);
}

class QuestProgressesCompanion extends UpdateCompanion<QuestProgress> {
  final Value<int> id;
  final Value<int> questId;
  final Value<bool> isCompleted;
  final Value<DateTime?> completedAt;
  const QuestProgressesCompanion({
    this.id = const Value.absent(),
    this.questId = const Value.absent(),
    this.isCompleted = const Value.absent(),
    this.completedAt = const Value.absent(),
  });
  QuestProgressesCompanion.insert({
    this.id = const Value.absent(),
    required int questId,
    this.isCompleted = const Value.absent(),
    this.completedAt = const Value.absent(),
  }) : questId = Value(questId);
  static Insertable<QuestProgress> custom({
    Expression<int>? id,
    Expression<int>? questId,
    Expression<bool>? isCompleted,
    Expression<DateTime>? completedAt,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (questId != null) 'quest_id': questId,
      if (isCompleted != null) 'is_completed': isCompleted,
      if (completedAt != null) 'completed_at': completedAt,
    });
  }

  QuestProgressesCompanion copyWith({
    Value<int>? id,
    Value<int>? questId,
    Value<bool>? isCompleted,
    Value<DateTime?>? completedAt,
  }) {
    return QuestProgressesCompanion(
      id: id ?? this.id,
      questId: questId ?? this.questId,
      isCompleted: isCompleted ?? this.isCompleted,
      completedAt: completedAt ?? this.completedAt,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (questId.present) {
      map['quest_id'] = Variable<int>(questId.value);
    }
    if (isCompleted.present) {
      map['is_completed'] = Variable<bool>(isCompleted.value);
    }
    if (completedAt.present) {
      map['completed_at'] = Variable<DateTime>(completedAt.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('QuestProgressesCompanion(')
          ..write('id: $id, ')
          ..write('questId: $questId, ')
          ..write('isCompleted: $isCompleted, ')
          ..write('completedAt: $completedAt')
          ..write(')'))
        .toString();
  }
}

abstract class _$AppDatabase extends GeneratedDatabase {
  _$AppDatabase(QueryExecutor e) : super(e);
  $AppDatabaseManager get managers => $AppDatabaseManager(this);
  late final $UserProgressesTable userProgresses = $UserProgressesTable(this);
  late final $LevelsTable levels = $LevelsTable(this);
  late final $QuestsTable quests = $QuestsTable(this);
  late final $QuestProgressesTable questProgresses = $QuestProgressesTable(
    this,
  );
  late final LevelDao levelDao = LevelDao(this as AppDatabase);
  late final QuestDao questDao = QuestDao(this as AppDatabase);
  @override
  Iterable<TableInfo<Table, Object?>> get allTables =>
      allSchemaEntities.whereType<TableInfo<Table, Object?>>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities => [
    userProgresses,
    levels,
    quests,
    questProgresses,
  ];
  @override
  StreamQueryUpdateRules get streamUpdateRules => const StreamQueryUpdateRules([
    WritePropagation(
      on: TableUpdateQuery.onTableName(
        'levels',
        limitUpdateKind: UpdateKind.delete,
      ),
      result: [TableUpdate('quests', kind: UpdateKind.delete)],
    ),
    WritePropagation(
      on: TableUpdateQuery.onTableName(
        'quests',
        limitUpdateKind: UpdateKind.delete,
      ),
      result: [TableUpdate('quest_progresses', kind: UpdateKind.delete)],
    ),
  ]);
}

typedef $$UserProgressesTableCreateCompanionBuilder =
    UserProgressesCompanion Function({
      Value<int> id,
      Value<int> currentLevelId,
      Value<int> totalEarnedXp,
    });
typedef $$UserProgressesTableUpdateCompanionBuilder =
    UserProgressesCompanion Function({
      Value<int> id,
      Value<int> currentLevelId,
      Value<int> totalEarnedXp,
    });

class $$UserProgressesTableFilterComposer
    extends Composer<_$AppDatabase, $UserProgressesTable> {
  $$UserProgressesTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<int> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get currentLevelId => $composableBuilder(
    column: $table.currentLevelId,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get totalEarnedXp => $composableBuilder(
    column: $table.totalEarnedXp,
    builder: (column) => ColumnFilters(column),
  );
}

class $$UserProgressesTableOrderingComposer
    extends Composer<_$AppDatabase, $UserProgressesTable> {
  $$UserProgressesTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<int> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get currentLevelId => $composableBuilder(
    column: $table.currentLevelId,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get totalEarnedXp => $composableBuilder(
    column: $table.totalEarnedXp,
    builder: (column) => ColumnOrderings(column),
  );
}

class $$UserProgressesTableAnnotationComposer
    extends Composer<_$AppDatabase, $UserProgressesTable> {
  $$UserProgressesTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<int> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<int> get currentLevelId => $composableBuilder(
    column: $table.currentLevelId,
    builder: (column) => column,
  );

  GeneratedColumn<int> get totalEarnedXp => $composableBuilder(
    column: $table.totalEarnedXp,
    builder: (column) => column,
  );
}

class $$UserProgressesTableTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          $UserProgressesTable,
          UserProgress,
          $$UserProgressesTableFilterComposer,
          $$UserProgressesTableOrderingComposer,
          $$UserProgressesTableAnnotationComposer,
          $$UserProgressesTableCreateCompanionBuilder,
          $$UserProgressesTableUpdateCompanionBuilder,
          (
            UserProgress,
            BaseReferences<_$AppDatabase, $UserProgressesTable, UserProgress>,
          ),
          UserProgress,
          PrefetchHooks Function()
        > {
  $$UserProgressesTableTableManager(
    _$AppDatabase db,
    $UserProgressesTable table,
  ) : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$UserProgressesTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$UserProgressesTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$UserProgressesTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback:
              ({
                Value<int> id = const Value.absent(),
                Value<int> currentLevelId = const Value.absent(),
                Value<int> totalEarnedXp = const Value.absent(),
              }) => UserProgressesCompanion(
                id: id,
                currentLevelId: currentLevelId,
                totalEarnedXp: totalEarnedXp,
              ),
          createCompanionCallback:
              ({
                Value<int> id = const Value.absent(),
                Value<int> currentLevelId = const Value.absent(),
                Value<int> totalEarnedXp = const Value.absent(),
              }) => UserProgressesCompanion.insert(
                id: id,
                currentLevelId: currentLevelId,
                totalEarnedXp: totalEarnedXp,
              ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ),
      );
}

typedef $$UserProgressesTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      $UserProgressesTable,
      UserProgress,
      $$UserProgressesTableFilterComposer,
      $$UserProgressesTableOrderingComposer,
      $$UserProgressesTableAnnotationComposer,
      $$UserProgressesTableCreateCompanionBuilder,
      $$UserProgressesTableUpdateCompanionBuilder,
      (
        UserProgress,
        BaseReferences<_$AppDatabase, $UserProgressesTable, UserProgress>,
      ),
      UserProgress,
      PrefetchHooks Function()
    >;
typedef $$LevelsTableCreateCompanionBuilder =
    LevelsCompanion Function({
      Value<int> id,
      required int index,
      required String title,
    });
typedef $$LevelsTableUpdateCompanionBuilder =
    LevelsCompanion Function({
      Value<int> id,
      Value<int> index,
      Value<String> title,
    });

final class $$LevelsTableReferences
    extends BaseReferences<_$AppDatabase, $LevelsTable, Level> {
  $$LevelsTableReferences(super.$_db, super.$_table, super.$_typedResult);

  static MultiTypedResultKey<$QuestsTable, List<Quest>> _questsRefsTable(
    _$AppDatabase db,
  ) => MultiTypedResultKey.fromTable(
    db.quests,
    aliasName: $_aliasNameGenerator(db.levels.id, db.quests.levelId),
  );

  $$QuestsTableProcessedTableManager get questsRefs {
    final manager = $$QuestsTableTableManager(
      $_db,
      $_db.quests,
    ).filter((f) => f.levelId.id.sqlEquals($_itemColumn<int>('id')!));

    final cache = $_typedResult.readTableOrNull(_questsRefsTable($_db));
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: cache),
    );
  }
}

class $$LevelsTableFilterComposer
    extends Composer<_$AppDatabase, $LevelsTable> {
  $$LevelsTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<int> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get index => $composableBuilder(
    column: $table.index,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get title => $composableBuilder(
    column: $table.title,
    builder: (column) => ColumnFilters(column),
  );

  Expression<bool> questsRefs(
    Expression<bool> Function($$QuestsTableFilterComposer f) f,
  ) {
    final $$QuestsTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.id,
      referencedTable: $db.quests,
      getReferencedColumn: (t) => t.levelId,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$QuestsTableFilterComposer(
            $db: $db,
            $table: $db.quests,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return f(composer);
  }
}

class $$LevelsTableOrderingComposer
    extends Composer<_$AppDatabase, $LevelsTable> {
  $$LevelsTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<int> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get index => $composableBuilder(
    column: $table.index,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get title => $composableBuilder(
    column: $table.title,
    builder: (column) => ColumnOrderings(column),
  );
}

class $$LevelsTableAnnotationComposer
    extends Composer<_$AppDatabase, $LevelsTable> {
  $$LevelsTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<int> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<int> get index =>
      $composableBuilder(column: $table.index, builder: (column) => column);

  GeneratedColumn<String> get title =>
      $composableBuilder(column: $table.title, builder: (column) => column);

  Expression<T> questsRefs<T extends Object>(
    Expression<T> Function($$QuestsTableAnnotationComposer a) f,
  ) {
    final $$QuestsTableAnnotationComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.id,
      referencedTable: $db.quests,
      getReferencedColumn: (t) => t.levelId,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$QuestsTableAnnotationComposer(
            $db: $db,
            $table: $db.quests,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return f(composer);
  }
}

class $$LevelsTableTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          $LevelsTable,
          Level,
          $$LevelsTableFilterComposer,
          $$LevelsTableOrderingComposer,
          $$LevelsTableAnnotationComposer,
          $$LevelsTableCreateCompanionBuilder,
          $$LevelsTableUpdateCompanionBuilder,
          (Level, $$LevelsTableReferences),
          Level,
          PrefetchHooks Function({bool questsRefs})
        > {
  $$LevelsTableTableManager(_$AppDatabase db, $LevelsTable table)
    : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$LevelsTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$LevelsTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$LevelsTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback:
              ({
                Value<int> id = const Value.absent(),
                Value<int> index = const Value.absent(),
                Value<String> title = const Value.absent(),
              }) => LevelsCompanion(id: id, index: index, title: title),
          createCompanionCallback:
              ({
                Value<int> id = const Value.absent(),
                required int index,
                required String title,
              }) => LevelsCompanion.insert(id: id, index: index, title: title),
          withReferenceMapper: (p0) => p0
              .map(
                (e) =>
                    (e.readTable(table), $$LevelsTableReferences(db, table, e)),
              )
              .toList(),
          prefetchHooksCallback: ({questsRefs = false}) {
            return PrefetchHooks(
              db: db,
              explicitlyWatchedTables: [if (questsRefs) db.quests],
              addJoins: null,
              getPrefetchedDataCallback: (items) async {
                return [
                  if (questsRefs)
                    await $_getPrefetchedData<Level, $LevelsTable, Quest>(
                      currentTable: table,
                      referencedTable: $$LevelsTableReferences._questsRefsTable(
                        db,
                      ),
                      managerFromTypedResult: (p0) =>
                          $$LevelsTableReferences(db, table, p0).questsRefs,
                      referencedItemsForCurrentItem: (item, referencedItems) =>
                          referencedItems.where((e) => e.levelId == item.id),
                      typedResults: items,
                    ),
                ];
              },
            );
          },
        ),
      );
}

typedef $$LevelsTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      $LevelsTable,
      Level,
      $$LevelsTableFilterComposer,
      $$LevelsTableOrderingComposer,
      $$LevelsTableAnnotationComposer,
      $$LevelsTableCreateCompanionBuilder,
      $$LevelsTableUpdateCompanionBuilder,
      (Level, $$LevelsTableReferences),
      Level,
      PrefetchHooks Function({bool questsRefs})
    >;
typedef $$QuestsTableCreateCompanionBuilder =
    QuestsCompanion Function({
      Value<int> id,
      required int levelId,
      required String title,
      Value<String?> description,
      required QuestType type,
      Value<int> xpReward,
      Value<bool> completed,
    });
typedef $$QuestsTableUpdateCompanionBuilder =
    QuestsCompanion Function({
      Value<int> id,
      Value<int> levelId,
      Value<String> title,
      Value<String?> description,
      Value<QuestType> type,
      Value<int> xpReward,
      Value<bool> completed,
    });

final class $$QuestsTableReferences
    extends BaseReferences<_$AppDatabase, $QuestsTable, Quest> {
  $$QuestsTableReferences(super.$_db, super.$_table, super.$_typedResult);

  static $LevelsTable _levelIdTable(_$AppDatabase db) => db.levels.createAlias(
    $_aliasNameGenerator(db.quests.levelId, db.levels.id),
  );

  $$LevelsTableProcessedTableManager get levelId {
    final $_column = $_itemColumn<int>('level_id')!;

    final manager = $$LevelsTableTableManager(
      $_db,
      $_db.levels,
    ).filter((f) => f.id.sqlEquals($_column));
    final item = $_typedResult.readTableOrNull(_levelIdTable($_db));
    if (item == null) return manager;
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: [item]),
    );
  }

  static MultiTypedResultKey<$QuestProgressesTable, List<QuestProgress>>
  _questProgressesRefsTable(_$AppDatabase db) => MultiTypedResultKey.fromTable(
    db.questProgresses,
    aliasName: $_aliasNameGenerator(db.quests.id, db.questProgresses.questId),
  );

  $$QuestProgressesTableProcessedTableManager get questProgressesRefs {
    final manager = $$QuestProgressesTableTableManager(
      $_db,
      $_db.questProgresses,
    ).filter((f) => f.questId.id.sqlEquals($_itemColumn<int>('id')!));

    final cache = $_typedResult.readTableOrNull(
      _questProgressesRefsTable($_db),
    );
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: cache),
    );
  }
}

class $$QuestsTableFilterComposer
    extends Composer<_$AppDatabase, $QuestsTable> {
  $$QuestsTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<int> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get title => $composableBuilder(
    column: $table.title,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get description => $composableBuilder(
    column: $table.description,
    builder: (column) => ColumnFilters(column),
  );

  ColumnWithTypeConverterFilters<QuestType, QuestType, int> get type =>
      $composableBuilder(
        column: $table.type,
        builder: (column) => ColumnWithTypeConverterFilters(column),
      );

  ColumnFilters<int> get xpReward => $composableBuilder(
    column: $table.xpReward,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<bool> get completed => $composableBuilder(
    column: $table.completed,
    builder: (column) => ColumnFilters(column),
  );

  $$LevelsTableFilterComposer get levelId {
    final $$LevelsTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.levelId,
      referencedTable: $db.levels,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$LevelsTableFilterComposer(
            $db: $db,
            $table: $db.levels,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }

  Expression<bool> questProgressesRefs(
    Expression<bool> Function($$QuestProgressesTableFilterComposer f) f,
  ) {
    final $$QuestProgressesTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.id,
      referencedTable: $db.questProgresses,
      getReferencedColumn: (t) => t.questId,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$QuestProgressesTableFilterComposer(
            $db: $db,
            $table: $db.questProgresses,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return f(composer);
  }
}

class $$QuestsTableOrderingComposer
    extends Composer<_$AppDatabase, $QuestsTable> {
  $$QuestsTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<int> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get title => $composableBuilder(
    column: $table.title,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get description => $composableBuilder(
    column: $table.description,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get type => $composableBuilder(
    column: $table.type,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get xpReward => $composableBuilder(
    column: $table.xpReward,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<bool> get completed => $composableBuilder(
    column: $table.completed,
    builder: (column) => ColumnOrderings(column),
  );

  $$LevelsTableOrderingComposer get levelId {
    final $$LevelsTableOrderingComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.levelId,
      referencedTable: $db.levels,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$LevelsTableOrderingComposer(
            $db: $db,
            $table: $db.levels,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }
}

class $$QuestsTableAnnotationComposer
    extends Composer<_$AppDatabase, $QuestsTable> {
  $$QuestsTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<int> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<String> get title =>
      $composableBuilder(column: $table.title, builder: (column) => column);

  GeneratedColumn<String> get description => $composableBuilder(
    column: $table.description,
    builder: (column) => column,
  );

  GeneratedColumnWithTypeConverter<QuestType, int> get type =>
      $composableBuilder(column: $table.type, builder: (column) => column);

  GeneratedColumn<int> get xpReward =>
      $composableBuilder(column: $table.xpReward, builder: (column) => column);

  GeneratedColumn<bool> get completed =>
      $composableBuilder(column: $table.completed, builder: (column) => column);

  $$LevelsTableAnnotationComposer get levelId {
    final $$LevelsTableAnnotationComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.levelId,
      referencedTable: $db.levels,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$LevelsTableAnnotationComposer(
            $db: $db,
            $table: $db.levels,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }

  Expression<T> questProgressesRefs<T extends Object>(
    Expression<T> Function($$QuestProgressesTableAnnotationComposer a) f,
  ) {
    final $$QuestProgressesTableAnnotationComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.id,
      referencedTable: $db.questProgresses,
      getReferencedColumn: (t) => t.questId,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$QuestProgressesTableAnnotationComposer(
            $db: $db,
            $table: $db.questProgresses,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return f(composer);
  }
}

class $$QuestsTableTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          $QuestsTable,
          Quest,
          $$QuestsTableFilterComposer,
          $$QuestsTableOrderingComposer,
          $$QuestsTableAnnotationComposer,
          $$QuestsTableCreateCompanionBuilder,
          $$QuestsTableUpdateCompanionBuilder,
          (Quest, $$QuestsTableReferences),
          Quest,
          PrefetchHooks Function({bool levelId, bool questProgressesRefs})
        > {
  $$QuestsTableTableManager(_$AppDatabase db, $QuestsTable table)
    : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$QuestsTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$QuestsTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$QuestsTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback:
              ({
                Value<int> id = const Value.absent(),
                Value<int> levelId = const Value.absent(),
                Value<String> title = const Value.absent(),
                Value<String?> description = const Value.absent(),
                Value<QuestType> type = const Value.absent(),
                Value<int> xpReward = const Value.absent(),
                Value<bool> completed = const Value.absent(),
              }) => QuestsCompanion(
                id: id,
                levelId: levelId,
                title: title,
                description: description,
                type: type,
                xpReward: xpReward,
                completed: completed,
              ),
          createCompanionCallback:
              ({
                Value<int> id = const Value.absent(),
                required int levelId,
                required String title,
                Value<String?> description = const Value.absent(),
                required QuestType type,
                Value<int> xpReward = const Value.absent(),
                Value<bool> completed = const Value.absent(),
              }) => QuestsCompanion.insert(
                id: id,
                levelId: levelId,
                title: title,
                description: description,
                type: type,
                xpReward: xpReward,
                completed: completed,
              ),
          withReferenceMapper: (p0) => p0
              .map(
                (e) =>
                    (e.readTable(table), $$QuestsTableReferences(db, table, e)),
              )
              .toList(),
          prefetchHooksCallback:
              ({levelId = false, questProgressesRefs = false}) {
                return PrefetchHooks(
                  db: db,
                  explicitlyWatchedTables: [
                    if (questProgressesRefs) db.questProgresses,
                  ],
                  addJoins:
                      <
                        T extends TableManagerState<
                          dynamic,
                          dynamic,
                          dynamic,
                          dynamic,
                          dynamic,
                          dynamic,
                          dynamic,
                          dynamic,
                          dynamic,
                          dynamic,
                          dynamic
                        >
                      >(state) {
                        if (levelId) {
                          state =
                              state.withJoin(
                                    currentTable: table,
                                    currentColumn: table.levelId,
                                    referencedTable: $$QuestsTableReferences
                                        ._levelIdTable(db),
                                    referencedColumn: $$QuestsTableReferences
                                        ._levelIdTable(db)
                                        .id,
                                  )
                                  as T;
                        }

                        return state;
                      },
                  getPrefetchedDataCallback: (items) async {
                    return [
                      if (questProgressesRefs)
                        await $_getPrefetchedData<
                          Quest,
                          $QuestsTable,
                          QuestProgress
                        >(
                          currentTable: table,
                          referencedTable: $$QuestsTableReferences
                              ._questProgressesRefsTable(db),
                          managerFromTypedResult: (p0) =>
                              $$QuestsTableReferences(
                                db,
                                table,
                                p0,
                              ).questProgressesRefs,
                          referencedItemsForCurrentItem:
                              (item, referencedItems) => referencedItems.where(
                                (e) => e.questId == item.id,
                              ),
                          typedResults: items,
                        ),
                    ];
                  },
                );
              },
        ),
      );
}

typedef $$QuestsTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      $QuestsTable,
      Quest,
      $$QuestsTableFilterComposer,
      $$QuestsTableOrderingComposer,
      $$QuestsTableAnnotationComposer,
      $$QuestsTableCreateCompanionBuilder,
      $$QuestsTableUpdateCompanionBuilder,
      (Quest, $$QuestsTableReferences),
      Quest,
      PrefetchHooks Function({bool levelId, bool questProgressesRefs})
    >;
typedef $$QuestProgressesTableCreateCompanionBuilder =
    QuestProgressesCompanion Function({
      Value<int> id,
      required int questId,
      Value<bool> isCompleted,
      Value<DateTime?> completedAt,
    });
typedef $$QuestProgressesTableUpdateCompanionBuilder =
    QuestProgressesCompanion Function({
      Value<int> id,
      Value<int> questId,
      Value<bool> isCompleted,
      Value<DateTime?> completedAt,
    });

final class $$QuestProgressesTableReferences
    extends
        BaseReferences<_$AppDatabase, $QuestProgressesTable, QuestProgress> {
  $$QuestProgressesTableReferences(
    super.$_db,
    super.$_table,
    super.$_typedResult,
  );

  static $QuestsTable _questIdTable(_$AppDatabase db) => db.quests.createAlias(
    $_aliasNameGenerator(db.questProgresses.questId, db.quests.id),
  );

  $$QuestsTableProcessedTableManager get questId {
    final $_column = $_itemColumn<int>('quest_id')!;

    final manager = $$QuestsTableTableManager(
      $_db,
      $_db.quests,
    ).filter((f) => f.id.sqlEquals($_column));
    final item = $_typedResult.readTableOrNull(_questIdTable($_db));
    if (item == null) return manager;
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: [item]),
    );
  }
}

class $$QuestProgressesTableFilterComposer
    extends Composer<_$AppDatabase, $QuestProgressesTable> {
  $$QuestProgressesTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<int> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<bool> get isCompleted => $composableBuilder(
    column: $table.isCompleted,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<DateTime> get completedAt => $composableBuilder(
    column: $table.completedAt,
    builder: (column) => ColumnFilters(column),
  );

  $$QuestsTableFilterComposer get questId {
    final $$QuestsTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.questId,
      referencedTable: $db.quests,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$QuestsTableFilterComposer(
            $db: $db,
            $table: $db.quests,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }
}

class $$QuestProgressesTableOrderingComposer
    extends Composer<_$AppDatabase, $QuestProgressesTable> {
  $$QuestProgressesTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<int> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<bool> get isCompleted => $composableBuilder(
    column: $table.isCompleted,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<DateTime> get completedAt => $composableBuilder(
    column: $table.completedAt,
    builder: (column) => ColumnOrderings(column),
  );

  $$QuestsTableOrderingComposer get questId {
    final $$QuestsTableOrderingComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.questId,
      referencedTable: $db.quests,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$QuestsTableOrderingComposer(
            $db: $db,
            $table: $db.quests,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }
}

class $$QuestProgressesTableAnnotationComposer
    extends Composer<_$AppDatabase, $QuestProgressesTable> {
  $$QuestProgressesTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<int> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<bool> get isCompleted => $composableBuilder(
    column: $table.isCompleted,
    builder: (column) => column,
  );

  GeneratedColumn<DateTime> get completedAt => $composableBuilder(
    column: $table.completedAt,
    builder: (column) => column,
  );

  $$QuestsTableAnnotationComposer get questId {
    final $$QuestsTableAnnotationComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.questId,
      referencedTable: $db.quests,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$QuestsTableAnnotationComposer(
            $db: $db,
            $table: $db.quests,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }
}

class $$QuestProgressesTableTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          $QuestProgressesTable,
          QuestProgress,
          $$QuestProgressesTableFilterComposer,
          $$QuestProgressesTableOrderingComposer,
          $$QuestProgressesTableAnnotationComposer,
          $$QuestProgressesTableCreateCompanionBuilder,
          $$QuestProgressesTableUpdateCompanionBuilder,
          (QuestProgress, $$QuestProgressesTableReferences),
          QuestProgress,
          PrefetchHooks Function({bool questId})
        > {
  $$QuestProgressesTableTableManager(
    _$AppDatabase db,
    $QuestProgressesTable table,
  ) : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$QuestProgressesTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$QuestProgressesTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$QuestProgressesTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback:
              ({
                Value<int> id = const Value.absent(),
                Value<int> questId = const Value.absent(),
                Value<bool> isCompleted = const Value.absent(),
                Value<DateTime?> completedAt = const Value.absent(),
              }) => QuestProgressesCompanion(
                id: id,
                questId: questId,
                isCompleted: isCompleted,
                completedAt: completedAt,
              ),
          createCompanionCallback:
              ({
                Value<int> id = const Value.absent(),
                required int questId,
                Value<bool> isCompleted = const Value.absent(),
                Value<DateTime?> completedAt = const Value.absent(),
              }) => QuestProgressesCompanion.insert(
                id: id,
                questId: questId,
                isCompleted: isCompleted,
                completedAt: completedAt,
              ),
          withReferenceMapper: (p0) => p0
              .map(
                (e) => (
                  e.readTable(table),
                  $$QuestProgressesTableReferences(db, table, e),
                ),
              )
              .toList(),
          prefetchHooksCallback: ({questId = false}) {
            return PrefetchHooks(
              db: db,
              explicitlyWatchedTables: [],
              addJoins:
                  <
                    T extends TableManagerState<
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic
                    >
                  >(state) {
                    if (questId) {
                      state =
                          state.withJoin(
                                currentTable: table,
                                currentColumn: table.questId,
                                referencedTable:
                                    $$QuestProgressesTableReferences
                                        ._questIdTable(db),
                                referencedColumn:
                                    $$QuestProgressesTableReferences
                                        ._questIdTable(db)
                                        .id,
                              )
                              as T;
                    }

                    return state;
                  },
              getPrefetchedDataCallback: (items) async {
                return [];
              },
            );
          },
        ),
      );
}

typedef $$QuestProgressesTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      $QuestProgressesTable,
      QuestProgress,
      $$QuestProgressesTableFilterComposer,
      $$QuestProgressesTableOrderingComposer,
      $$QuestProgressesTableAnnotationComposer,
      $$QuestProgressesTableCreateCompanionBuilder,
      $$QuestProgressesTableUpdateCompanionBuilder,
      (QuestProgress, $$QuestProgressesTableReferences),
      QuestProgress,
      PrefetchHooks Function({bool questId})
    >;

class $AppDatabaseManager {
  final _$AppDatabase _db;
  $AppDatabaseManager(this._db);
  $$UserProgressesTableTableManager get userProgresses =>
      $$UserProgressesTableTableManager(_db, _db.userProgresses);
  $$LevelsTableTableManager get levels =>
      $$LevelsTableTableManager(_db, _db.levels);
  $$QuestsTableTableManager get quests =>
      $$QuestsTableTableManager(_db, _db.quests);
  $$QuestProgressesTableTableManager get questProgresses =>
      $$QuestProgressesTableTableManager(_db, _db.questProgresses);
}
