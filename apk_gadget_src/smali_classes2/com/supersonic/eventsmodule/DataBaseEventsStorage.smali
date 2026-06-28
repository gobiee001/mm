.class public Lcom/supersonic/eventsmodule/DataBaseEventsStorage;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "DataBaseEventsStorage.java"


# static fields
.field private static mInstance:Lcom/supersonic/eventsmodule/DataBaseEventsStorage;


# instance fields
.field private final SQL_CREATE_ENTRIES:Ljava/lang/String;

.field private final SQL_DELETE_TABLE:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "databaseName"    # Ljava/lang/String;
    .param p3, "databaseVersion"    # I

    .prologue
    .line 38
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, p3}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 28
    const-string v0, "DROP TABLE IF EXISTS events"

    iput-object v0, p0, Lcom/supersonic/eventsmodule/DataBaseEventsStorage;->SQL_DELETE_TABLE:Ljava/lang/String;

    .line 30
    const-string v0, "CREATE TABLE events (_id INTEGER PRIMARY KEY,eventid INTEGER,timestamp INTEGER,type TEXT,data TEXT )"

    iput-object v0, p0, Lcom/supersonic/eventsmodule/DataBaseEventsStorage;->SQL_CREATE_ENTRIES:Ljava/lang/String;

    .line 39
    return-void
.end method

.method private getContentValuesForEvent(Lcom/supersonic/eventsmodule/EventData;Ljava/lang/String;)Landroid/content/ContentValues;
    .locals 4
    .param p1, "event"    # Lcom/supersonic/eventsmodule/EventData;
    .param p2, "type"    # Ljava/lang/String;

    .prologue
    .line 142
    const/4 v0, 0x0

    .line 144
    .local v0, "values":Landroid/content/ContentValues;
    if-eqz p1, :cond_0

    .line 145
    new-instance v0, Landroid/content/ContentValues;

    .end local v0    # "values":Landroid/content/ContentValues;
    const/4 v1, 0x4

    invoke-direct {v0, v1}, Landroid/content/ContentValues;-><init>(I)V

    .line 148
    .restart local v0    # "values":Landroid/content/ContentValues;
    const-string v1, "eventid"

    invoke-virtual {p1}, Lcom/supersonic/eventsmodule/EventData;->getEventId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 149
    const-string v1, "timestamp"

    invoke-virtual {p1}, Lcom/supersonic/eventsmodule/EventData;->getTimeStamp()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 150
    const-string v1, "type"

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    const-string v1, "data"

    invoke-virtual {p1}, Lcom/supersonic/eventsmodule/EventData;->getAdditionalData()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    :cond_0
    return-object v0
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;Ljava/lang/String;I)Lcom/supersonic/eventsmodule/DataBaseEventsStorage;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "databaseName"    # Ljava/lang/String;
    .param p2, "databaseVersion"    # I

    .prologue
    .line 42
    const-class v1, Lcom/supersonic/eventsmodule/DataBaseEventsStorage;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/supersonic/eventsmodule/DataBaseEventsStorage;->mInstance:Lcom/supersonic/eventsmodule/DataBaseEventsStorage;

    if-nez v0, :cond_0

    .line 43
    new-instance v0, Lcom/supersonic/eventsmodule/DataBaseEventsStorage;

    invoke-direct {v0, p0, p1, p2}, Lcom/supersonic/eventsmodule/DataBaseEventsStorage;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    sput-object v0, Lcom/supersonic/eventsmodule/DataBaseEventsStorage;->mInstance:Lcom/supersonic/eventsmodule/DataBaseEventsStorage;

    .line 45
    :cond_0
    sget-object v0, Lcom/supersonic/eventsmodule/DataBaseEventsStorage;->mInstance:Lcom/supersonic/eventsmodule/DataBaseEventsStorage;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 42
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public declared-synchronized clearEvents(Ljava/lang/String;J)V
    .locals 6
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "timestamp"    # J

    .prologue
    .line 124
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/supersonic/eventsmodule/DataBaseEventsStorage;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 127
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    const-string v2, "type = ? AND timestamp <= ?"

    .line 128
    .local v2, "whereClause":Ljava/lang/String;
    const/4 v3, 0x2

    new-array v1, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p1, v1, v3

    const/4 v3, 0x1

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 132
    .local v1, "whereArgs":[Ljava/lang/String;
    :try_start_1
    const-string v3, "events"

    invoke-virtual {v0, v3, v2, v1}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 136
    if-eqz v0, :cond_0

    :try_start_2
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 137
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 139
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 133
    :catch_0
    move-exception v3

    .line 136
    if-eqz v0, :cond_0

    :try_start_3
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 137
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 124
    .end local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v1    # "whereArgs":[Ljava/lang/String;
    .end local v2    # "whereClause":Ljava/lang/String;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 136
    .restart local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .restart local v1    # "whereArgs":[Ljava/lang/String;
    .restart local v2    # "whereClause":Ljava/lang/String;
    :catchall_1
    move-exception v3

    if-eqz v0, :cond_1

    :try_start_4
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 137
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_1
    throw v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
.end method

.method public declared-synchronized getLatestEventTimestamp(Ljava/lang/String;)J
    .locals 12
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    .line 172
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/supersonic/eventsmodule/DataBaseEventsStorage;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 173
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    const/4 v9, 0x0

    .line 174
    .local v9, "cursor":Landroid/database/Cursor;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v10

    .line 178
    .local v10, "timeStamp":J
    :try_start_1
    const-string v3, "type = ?"

    .line 179
    .local v3, "whereClause":Ljava/lang/String;
    const/4 v1, 0x1

    new-array v4, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p1, v4, v1

    .line 180
    .local v4, "whereArgs":[Ljava/lang/String;
    const-string v7, "timestamp DESC"

    .line 183
    .local v7, "orderByClause":Ljava/lang/String;
    const-string v1, "events"

    const/4 v2, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v8, "1"

    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 186
    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_0

    .line 187
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    .line 188
    const-string v1, "timestamp"

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    .line 189
    invoke-interface {v9}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 194
    :cond_0
    if-eqz v9, :cond_1

    :try_start_2
    invoke-interface {v9}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_1

    .line 195
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 196
    :cond_1
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 197
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 200
    .end local v3    # "whereClause":Ljava/lang/String;
    .end local v4    # "whereArgs":[Ljava/lang/String;
    .end local v7    # "orderByClause":Ljava/lang/String;
    :cond_2
    :goto_0
    monitor-exit p0

    return-wide v10

    .line 191
    :catch_0
    move-exception v1

    .line 194
    if-eqz v9, :cond_3

    :try_start_3
    invoke-interface {v9}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_3

    .line 195
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 196
    :cond_3
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 197
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 172
    .end local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v9    # "cursor":Landroid/database/Cursor;
    .end local v10    # "timeStamp":J
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 194
    .restart local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .restart local v9    # "cursor":Landroid/database/Cursor;
    .restart local v10    # "timeStamp":J
    :catchall_1
    move-exception v1

    if-eqz v9, :cond_4

    :try_start_4
    invoke-interface {v9}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_4

    .line 195
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 196
    :cond_4
    if-eqz v0, :cond_5

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 197
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_5
    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
.end method

.method public declared-synchronized loadEvents(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 16
    .param p1, "type"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/supersonic/eventsmodule/EventData;",
            ">;"
        }
    .end annotation

    .prologue
    .line 79
    monitor-enter p0

    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/supersonic/eventsmodule/DataBaseEventsStorage;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 80
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    const/4 v8, 0x0

    .line 81
    .local v8, "cursor":Landroid/database/Cursor;
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 85
    .local v12, "events":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/supersonic/eventsmodule/EventData;>;"
    :try_start_1
    const-string v3, "type = ?"

    .line 86
    .local v3, "whereClause":Ljava/lang/String;
    const/4 v1, 0x1

    new-array v4, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p1, v4, v1

    .line 89
    .local v4, "whereArgs":[Ljava/lang/String;
    const-string v1, "events"

    const/4 v2, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 92
    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_3

    .line 94
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    .line 97
    :goto_0
    invoke-interface {v8}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v1

    if-nez v1, :cond_2

    .line 98
    const-string v1, "eventid"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    .line 99
    .local v11, "eventId":I
    const-string v1, "timestamp"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v14

    .line 100
    .local v14, "timeStamp":J
    const-string v1, "data"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 102
    .local v9, "data":Ljava/lang/String;
    new-instance v10, Lcom/supersonic/eventsmodule/EventData;

    new-instance v1, Lorg/json/JSONObject;

    invoke-static {v9}, Lcom/newrelic/agent/android/instrumentation/JSONObjectInstrumentation;->init(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-direct {v10, v11, v14, v15, v1}, Lcom/supersonic/eventsmodule/EventData;-><init>(IJLorg/json/JSONObject;)V

    .line 103
    .local v10, "event":Lcom/supersonic/eventsmodule/EventData;
    invoke-virtual {v12, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 105
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    .line 110
    .end local v3    # "whereClause":Ljava/lang/String;
    .end local v4    # "whereArgs":[Ljava/lang/String;
    .end local v9    # "data":Ljava/lang/String;
    .end local v10    # "event":Lcom/supersonic/eventsmodule/EventData;
    .end local v11    # "eventId":I
    .end local v14    # "timeStamp":J
    :catch_0
    move-exception v1

    .line 113
    if-eqz v8, :cond_0

    :try_start_2
    invoke-interface {v8}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_0

    .line 114
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 115
    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 116
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 119
    :cond_1
    :goto_1
    monitor-exit p0

    return-object v12

    .line 108
    .restart local v3    # "whereClause":Ljava/lang/String;
    .restart local v4    # "whereArgs":[Ljava/lang/String;
    :cond_2
    :try_start_3
    invoke-interface {v8}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 113
    :cond_3
    if-eqz v8, :cond_4

    :try_start_4
    invoke-interface {v8}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_4

    .line 114
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 115
    :cond_4
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 116
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    .line 79
    .end local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v3    # "whereClause":Ljava/lang/String;
    .end local v4    # "whereArgs":[Ljava/lang/String;
    .end local v8    # "cursor":Landroid/database/Cursor;
    .end local v12    # "events":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/supersonic/eventsmodule/EventData;>;"
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 113
    .restart local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .restart local v8    # "cursor":Landroid/database/Cursor;
    .restart local v12    # "events":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/supersonic/eventsmodule/EventData;>;"
    :catchall_1
    move-exception v1

    if-eqz v8, :cond_5

    :try_start_5
    invoke-interface {v8}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_5

    .line 114
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 115
    :cond_5
    if-eqz v0, :cond_6

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 116
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_6
    throw v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
.end method

.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 162
    const-string v0, "CREATE TABLE events (_id INTEGER PRIMARY KEY,eventid INTEGER,timestamp INTEGER,type TEXT,data TEXT )"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 163
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 1
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "oldVersion"    # I
    .param p3, "newVersion"    # I

    .prologue
    .line 167
    const-string v0, "DROP TABLE IF EXISTS events"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 168
    invoke-virtual {p0, p1}, Lcom/supersonic/eventsmodule/DataBaseEventsStorage;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 169
    return-void
.end method

.method public declared-synchronized saveEvents(Ljava/util/ArrayList;Ljava/lang/String;)V
    .locals 6
    .param p2, "type"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/supersonic/eventsmodule/EventData;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 53
    .local p1, "events":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/supersonic/eventsmodule/EventData;>;"
    monitor-enter p0

    if-eqz p1, :cond_0

    :try_start_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    if-eqz v4, :cond_1

    .line 75
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 56
    :cond_1
    :try_start_1
    invoke-virtual {p0}, Lcom/supersonic/eventsmodule/DataBaseEventsStorage;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    .line 59
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    :try_start_2
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/supersonic/eventsmodule/EventData;

    .line 61
    .local v2, "toInsert":Lcom/supersonic/eventsmodule/EventData;
    invoke-direct {p0, v2, p2}, Lcom/supersonic/eventsmodule/DataBaseEventsStorage;->getContentValuesForEvent(Lcom/supersonic/eventsmodule/EventData;Ljava/lang/String;)Landroid/content/ContentValues;

    move-result-object v3

    .line 64
    .local v3, "values":Landroid/content/ContentValues;
    if-eqz v0, :cond_2

    if-eqz v3, :cond_2

    .line 65
    const-string v4, "events"

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v5, v3}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_1

    .line 69
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "toInsert":Lcom/supersonic/eventsmodule/EventData;
    .end local v3    # "values":Landroid/content/ContentValues;
    :catch_0
    move-exception v4

    .line 72
    if-eqz v0, :cond_0

    :try_start_3
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 73
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 53
    .end local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4

    .line 72
    .restart local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .restart local v1    # "i$":Ljava/util/Iterator;
    :cond_3
    if-eqz v0, :cond_0

    :try_start_4
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 73
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    goto :goto_0

    .line 72
    .end local v1    # "i$":Ljava/util/Iterator;
    :catchall_1
    move-exception v4

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 73
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_4
    throw v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
.end method
