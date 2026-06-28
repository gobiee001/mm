.class public Lcom/amazon/ags/storage/SQLiteOfflineEventStorage;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "SQLiteOfflineEventStorage.java"

# interfaces
.implements Lcom/amazon/ags/storage/OfflineEventStorage;


# static fields
.field private static final DATABASE_VERSION:I = 0x2

.field private static final PRIMARY_KEY_NAME:Ljava/lang/String; = "id"

.field private static final TABLE_NAME:Ljava/lang/String; = "events"

.field private static final TAG:Ljava/lang/String;

.field private static final TEXT_KEY_NAME:Ljava/lang/String; = "text"


# instance fields
.field private final obfuscator:Lcom/amazon/ags/storage/StringObfuscator;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 30
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "GC_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lcom/amazon/ags/storage/SQLiteOfflineEventStorage;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/ags/storage/SQLiteOfflineEventStorage;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/amazon/ags/storage/StringObfuscator;Ljava/lang/String;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "obfuscator"    # Lcom/amazon/ags/storage/StringObfuscator;
    .param p3, "databaseName"    # Ljava/lang/String;

    .prologue
    .line 38
    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-direct {p0, p1, p3, v0, v1}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 39
    iput-object p2, p0, Lcom/amazon/ags/storage/SQLiteOfflineEventStorage;->obfuscator:Lcom/amazon/ags/storage/StringObfuscator;

    .line 40
    return-void
.end method


# virtual methods
.method public final declared-synchronized getAllEvents()Ljava/util/List;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/amazon/ags/storage/OfflineEventStorage$OfflineEventJSONTuple;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/ags/storage/OfflineEventException;
        }
    .end annotation

    .prologue
    .line 240
    monitor-enter p0

    const/4 v1, 0x0

    .line 241
    .local v1, "db":Landroid/database/sqlite/SQLiteDatabase;
    const/4 v0, 0x0

    .line 242
    .local v0, "cursor":Landroid/database/Cursor;
    const/4 v3, 0x0

    .line 245
    .local v3, "eventsList":Ljava/util/List;, "Ljava/util/List<Lcom/amazon/ags/storage/OfflineEventStorage$OfflineEventJSONTuple;>;"
    :try_start_0
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 246
    .end local v3    # "eventsList":Ljava/util/List;, "Ljava/util/List<Lcom/amazon/ags/storage/OfflineEventStorage$OfflineEventJSONTuple;>;"
    .local v6, "eventsList":Ljava/util/List;, "Ljava/util/List<Lcom/amazon/ags/storage/OfflineEventStorage$OfflineEventJSONTuple;>;"
    :try_start_1
    invoke-virtual {p0}, Lcom/amazon/ags/storage/SQLiteOfflineEventStorage;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 247
    const-string v9, "SELECT * FROM events"

    const/4 v10, 0x0

    invoke-virtual {v1, v9, v10}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 250
    if-eqz v0, :cond_4

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v9

    if-eqz v9, :cond_4

    iget-object v9, p0, Lcom/amazon/ags/storage/SQLiteOfflineEventStorage;->obfuscator:Lcom/amazon/ags/storage/StringObfuscator;

    if-eqz v9, :cond_4

    .line 252
    :cond_0
    const/4 v9, 0x0

    invoke-interface {v0, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 253
    .local v4, "eventId":J
    const/4 v9, 0x1

    invoke-interface {v0, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 256
    .local v7, "text":Ljava/lang/String;
    iget-object v9, p0, Lcom/amazon/ags/storage/SQLiteOfflineEventStorage;->obfuscator:Lcom/amazon/ags/storage/StringObfuscator;

    invoke-interface {v9, v7}, Lcom/amazon/ags/storage/StringObfuscator;->unobfuscate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 257
    if-nez v7, :cond_3

    .line 258
    sget-object v9, Lcom/amazon/ags/storage/SQLiteOfflineEventStorage;->TAG:Ljava/lang/String;

    const-string v10, "Failed to unobfuscate text."

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    new-instance v9, Lcom/amazon/ags/storage/OfflineEventException;

    const-string v10, "Failed to unobfuscate text."

    invoke-direct {v9, v10}, Lcom/amazon/ags/storage/OfflineEventException;-><init>(Ljava/lang/String;)V

    throw v9
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_6
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 270
    .end local v4    # "eventId":J
    .end local v7    # "text":Ljava/lang/String;
    :catch_0
    move-exception v2

    move-object v3, v6

    .line 271
    .end local v6    # "eventsList":Ljava/util/List;, "Ljava/util/List<Lcom/amazon/ags/storage/OfflineEventStorage$OfflineEventJSONTuple;>;"
    .local v2, "e":Landroid/database/sqlite/SQLiteException;
    .restart local v3    # "eventsList":Ljava/util/List;, "Ljava/util/List<Lcom/amazon/ags/storage/OfflineEventStorage$OfflineEventJSONTuple;>;"
    :goto_0
    :try_start_2
    sget-object v9, Lcom/amazon/ags/storage/SQLiteOfflineEventStorage;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Failed to open SQL database: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteException;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 273
    new-instance v9, Lcom/amazon/ags/storage/OfflineEventException;

    invoke-direct {v9, v2}, Lcom/amazon/ags/storage/OfflineEventException;-><init>(Ljava/lang/Throwable;)V

    throw v9
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 289
    .end local v2    # "e":Landroid/database/sqlite/SQLiteException;
    :catchall_0
    move-exception v9

    :goto_1
    if-eqz v0, :cond_1

    .line 290
    :try_start_3
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 293
    :cond_1
    if-eqz v1, :cond_2

    .line 294
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_2
    throw v9
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 240
    :catchall_1
    move-exception v9

    :goto_2
    monitor-exit p0

    throw v9

    .line 262
    .end local v3    # "eventsList":Ljava/util/List;, "Ljava/util/List<Lcom/amazon/ags/storage/OfflineEventStorage$OfflineEventJSONTuple;>;"
    .restart local v4    # "eventId":J
    .restart local v6    # "eventsList":Ljava/util/List;, "Ljava/util/List<Lcom/amazon/ags/storage/OfflineEventStorage$OfflineEventJSONTuple;>;"
    .restart local v7    # "text":Ljava/lang/String;
    :cond_3
    :try_start_4
    sget-object v9, Lcom/amazon/ags/storage/SQLiteOfflineEventStorage;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "GT: eventId: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", text: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 263
    new-instance v9, Lcom/amazon/ags/storage/OfflineEventStorage$OfflineEventJSONTuple;

    new-instance v10, Lcom/amazon/ags/storage/OfflineEventId;

    invoke-direct {v10, v4, v5}, Lcom/amazon/ags/storage/OfflineEventId;-><init>(J)V

    new-instance v11, Lorg/json/JSONObject;

    invoke-static {v7}, Lcom/newrelic/agent/android/instrumentation/JSONObjectInstrumentation;->init(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v11

    invoke-direct {v9, v10, v11}, Lcom/amazon/ags/storage/OfflineEventStorage$OfflineEventJSONTuple;-><init>(Lcom/amazon/ags/storage/OfflineEventId;Lorg/json/JSONObject;)V

    invoke-interface {v6, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 265
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_4
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_6
    .catch Ljava/lang/IllegalStateException; {:try_start_4 .. :try_end_4} :catch_5
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    move-result v9

    if-nez v9, :cond_0

    .line 289
    .end local v4    # "eventId":J
    .end local v7    # "text":Ljava/lang/String;
    :cond_4
    if-eqz v0, :cond_5

    .line 290
    :try_start_5
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 293
    :cond_5
    if-eqz v1, :cond_6

    .line 294
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    :cond_6
    monitor-exit p0

    return-object v6

    .line 274
    .end local v6    # "eventsList":Ljava/util/List;, "Ljava/util/List<Lcom/amazon/ags/storage/OfflineEventStorage$OfflineEventJSONTuple;>;"
    .restart local v3    # "eventsList":Ljava/util/List;, "Ljava/util/List<Lcom/amazon/ags/storage/OfflineEventStorage$OfflineEventJSONTuple;>;"
    :catch_1
    move-exception v2

    .line 275
    .local v2, "e":Lorg/json/JSONException;
    :goto_3
    :try_start_6
    sget-object v9, Lcom/amazon/ags/storage/SQLiteOfflineEventStorage;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Failed to parse JSON: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v2}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 277
    new-instance v9, Lcom/amazon/ags/storage/OfflineEventException;

    invoke-direct {v9, v2}, Lcom/amazon/ags/storage/OfflineEventException;-><init>(Ljava/lang/Throwable;)V

    throw v9

    .line 278
    .end local v2    # "e":Lorg/json/JSONException;
    :catch_2
    move-exception v2

    .line 279
    .local v2, "e":Ljava/lang/IllegalStateException;
    :goto_4
    sget-object v9, Lcom/amazon/ags/storage/SQLiteOfflineEventStorage;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "SQL database is in an invalid state: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v2}, Ljava/lang/IllegalStateException;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 281
    new-instance v9, Lcom/amazon/ags/storage/OfflineEventException;

    invoke-direct {v9, v2}, Lcom/amazon/ags/storage/OfflineEventException;-><init>(Ljava/lang/Throwable;)V

    throw v9

    .line 282
    .end local v2    # "e":Ljava/lang/IllegalStateException;
    :catch_3
    move-exception v8

    .line 283
    .local v8, "throwable":Ljava/lang/Throwable;
    :goto_5
    sget-object v9, Lcom/amazon/ags/storage/SQLiteOfflineEventStorage;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Unexepected error/exception: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v8}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 285
    new-instance v9, Lcom/amazon/ags/storage/OfflineEventException;

    invoke-direct {v9, v8}, Lcom/amazon/ags/storage/OfflineEventException;-><init>(Ljava/lang/Throwable;)V

    throw v9
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 289
    .end local v3    # "eventsList":Ljava/util/List;, "Ljava/util/List<Lcom/amazon/ags/storage/OfflineEventStorage$OfflineEventJSONTuple;>;"
    .end local v8    # "throwable":Ljava/lang/Throwable;
    .restart local v6    # "eventsList":Ljava/util/List;, "Ljava/util/List<Lcom/amazon/ags/storage/OfflineEventStorage$OfflineEventJSONTuple;>;"
    :catchall_2
    move-exception v9

    move-object v3, v6

    .end local v6    # "eventsList":Ljava/util/List;, "Ljava/util/List<Lcom/amazon/ags/storage/OfflineEventStorage$OfflineEventJSONTuple;>;"
    .restart local v3    # "eventsList":Ljava/util/List;, "Ljava/util/List<Lcom/amazon/ags/storage/OfflineEventStorage$OfflineEventJSONTuple;>;"
    goto/16 :goto_1

    .line 282
    .end local v3    # "eventsList":Ljava/util/List;, "Ljava/util/List<Lcom/amazon/ags/storage/OfflineEventStorage$OfflineEventJSONTuple;>;"
    .restart local v6    # "eventsList":Ljava/util/List;, "Ljava/util/List<Lcom/amazon/ags/storage/OfflineEventStorage$OfflineEventJSONTuple;>;"
    :catch_4
    move-exception v8

    move-object v3, v6

    .end local v6    # "eventsList":Ljava/util/List;, "Ljava/util/List<Lcom/amazon/ags/storage/OfflineEventStorage$OfflineEventJSONTuple;>;"
    .restart local v3    # "eventsList":Ljava/util/List;, "Ljava/util/List<Lcom/amazon/ags/storage/OfflineEventStorage$OfflineEventJSONTuple;>;"
    goto :goto_5

    .line 278
    .end local v3    # "eventsList":Ljava/util/List;, "Ljava/util/List<Lcom/amazon/ags/storage/OfflineEventStorage$OfflineEventJSONTuple;>;"
    .restart local v6    # "eventsList":Ljava/util/List;, "Ljava/util/List<Lcom/amazon/ags/storage/OfflineEventStorage$OfflineEventJSONTuple;>;"
    :catch_5
    move-exception v2

    move-object v3, v6

    .end local v6    # "eventsList":Ljava/util/List;, "Ljava/util/List<Lcom/amazon/ags/storage/OfflineEventStorage$OfflineEventJSONTuple;>;"
    .restart local v3    # "eventsList":Ljava/util/List;, "Ljava/util/List<Lcom/amazon/ags/storage/OfflineEventStorage$OfflineEventJSONTuple;>;"
    goto :goto_4

    .line 274
    .end local v3    # "eventsList":Ljava/util/List;, "Ljava/util/List<Lcom/amazon/ags/storage/OfflineEventStorage$OfflineEventJSONTuple;>;"
    .restart local v6    # "eventsList":Ljava/util/List;, "Ljava/util/List<Lcom/amazon/ags/storage/OfflineEventStorage$OfflineEventJSONTuple;>;"
    :catch_6
    move-exception v2

    move-object v3, v6

    .end local v6    # "eventsList":Ljava/util/List;, "Ljava/util/List<Lcom/amazon/ags/storage/OfflineEventStorage$OfflineEventJSONTuple;>;"
    .restart local v3    # "eventsList":Ljava/util/List;, "Ljava/util/List<Lcom/amazon/ags/storage/OfflineEventStorage$OfflineEventJSONTuple;>;"
    goto :goto_3

    .line 270
    :catch_7
    move-exception v2

    goto/16 :goto_0

    .line 240
    .end local v3    # "eventsList":Ljava/util/List;, "Ljava/util/List<Lcom/amazon/ags/storage/OfflineEventStorage$OfflineEventJSONTuple;>;"
    .restart local v6    # "eventsList":Ljava/util/List;, "Ljava/util/List<Lcom/amazon/ags/storage/OfflineEventStorage$OfflineEventJSONTuple;>;"
    :catchall_3
    move-exception v9

    move-object v3, v6

    .end local v6    # "eventsList":Ljava/util/List;, "Ljava/util/List<Lcom/amazon/ags/storage/OfflineEventStorage$OfflineEventJSONTuple;>;"
    .restart local v3    # "eventsList":Ljava/util/List;, "Ljava/util/List<Lcom/amazon/ags/storage/OfflineEventStorage$OfflineEventJSONTuple;>;"
    goto/16 :goto_2
.end method

.method public final declared-synchronized getEvent(Lcom/amazon/ags/storage/OfflineEventId;)Lorg/json/JSONObject;
    .locals 12
    .param p1, "id"    # Lcom/amazon/ags/storage/OfflineEventId;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/ags/storage/OfflineEventException;
        }
    .end annotation

    .prologue
    .line 185
    monitor-enter p0

    const/4 v0, 0x0

    .line 186
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    const/4 v8, 0x0

    .line 189
    .local v8, "cursor":Landroid/database/Cursor;
    :try_start_0
    sget-object v1, Lcom/amazon/ags/storage/SQLiteOfflineEventStorage;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getEvent() event id: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/amazon/ags/storage/OfflineEventId;->getId()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    invoke-virtual {p0}, Lcom/amazon/ags/storage/SQLiteOfflineEventStorage;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 192
    const-string v1, "events"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "text"

    aput-object v4, v2, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "id = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lcom/amazon/ags/storage/OfflineEventId;->getId()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 195
    if-eqz v8, :cond_5

    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 196
    const/4 v1, 0x0

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 198
    .local v10, "text":Ljava/lang/String;
    iget-object v1, p0, Lcom/amazon/ags/storage/SQLiteOfflineEventStorage;->obfuscator:Lcom/amazon/ags/storage/StringObfuscator;

    if-eqz v1, :cond_2

    .line 199
    iget-object v1, p0, Lcom/amazon/ags/storage/SQLiteOfflineEventStorage;->obfuscator:Lcom/amazon/ags/storage/StringObfuscator;

    invoke-interface {v1, v10}, Lcom/amazon/ags/storage/StringObfuscator;->unobfuscate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 200
    if-nez v10, :cond_2

    .line 201
    sget-object v1, Lcom/amazon/ags/storage/SQLiteOfflineEventStorage;->TAG:Ljava/lang/String;

    const-string v2, "Failed to unobfuscate text."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    new-instance v1, Lcom/amazon/ags/storage/OfflineEventException;

    const-string v2, "Failed to unobfuscate text."

    invoke-direct {v1, v2}, Lcom/amazon/ags/storage/OfflineEventException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 210
    .end local v10    # "text":Ljava/lang/String;
    :catch_0
    move-exception v9

    .line 211
    .local v9, "e":Landroid/database/sqlite/SQLiteException;
    :try_start_1
    sget-object v1, Lcom/amazon/ags/storage/SQLiteOfflineEventStorage;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to open SQL database: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v9}, Landroid/database/sqlite/SQLiteException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    new-instance v1, Lcom/amazon/ags/storage/OfflineEventException;

    invoke-direct {v1, v9}, Lcom/amazon/ags/storage/OfflineEventException;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 227
    .end local v9    # "e":Landroid/database/sqlite/SQLiteException;
    :catchall_0
    move-exception v1

    if-eqz v8, :cond_0

    .line 228
    :try_start_2
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 231
    :cond_0
    if-eqz v0, :cond_1

    .line 232
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_1
    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 185
    :catchall_1
    move-exception v1

    monitor-exit p0

    throw v1

    .line 206
    .restart local v10    # "text":Ljava/lang/String;
    :cond_2
    :try_start_3
    new-instance v1, Lorg/json/JSONObject;

    invoke-static {v10}, Lcom/newrelic/agent/android/instrumentation/JSONObjectInstrumentation;->init(Ljava/lang/String;)Lorg/json/JSONObject;
    :try_end_3
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v1

    .line 227
    if-eqz v8, :cond_3

    .line 228
    :try_start_4
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 231
    :cond_3
    if-eqz v0, :cond_4

    .line 232
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :cond_4
    monitor-exit p0

    return-object v1

    .line 208
    .end local v10    # "text":Ljava/lang/String;
    :cond_5
    :try_start_5
    new-instance v1, Lcom/amazon/ags/storage/OfflineEventException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to get text for id: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/amazon/ags/storage/OfflineEventId;->getId()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/amazon/ags/storage/OfflineEventException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_5
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_3
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 214
    :catch_1
    move-exception v9

    .line 215
    .local v9, "e":Lorg/json/JSONException;
    :try_start_6
    sget-object v1, Lcom/amazon/ags/storage/SQLiteOfflineEventStorage;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to parse JSON: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v9}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    new-instance v1, Lcom/amazon/ags/storage/OfflineEventException;

    invoke-direct {v1, v9}, Lcom/amazon/ags/storage/OfflineEventException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 218
    .end local v9    # "e":Lorg/json/JSONException;
    :catch_2
    move-exception v9

    .line 219
    .local v9, "e":Ljava/lang/IllegalStateException;
    sget-object v1, Lcom/amazon/ags/storage/SQLiteOfflineEventStorage;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SQL database is in an invalid state: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v9}, Ljava/lang/IllegalStateException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    new-instance v1, Lcom/amazon/ags/storage/OfflineEventException;

    invoke-direct {v1, v9}, Lcom/amazon/ags/storage/OfflineEventException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 222
    .end local v9    # "e":Ljava/lang/IllegalStateException;
    :catch_3
    move-exception v11

    .line 223
    .local v11, "throwable":Ljava/lang/Throwable;
    sget-object v1, Lcom/amazon/ags/storage/SQLiteOfflineEventStorage;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexepected error/exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v11}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    new-instance v1, Lcom/amazon/ags/storage/OfflineEventException;

    invoke-direct {v1, v11}, Lcom/amazon/ags/storage/OfflineEventException;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
.end method

.method public final declared-synchronized getSize()I
    .locals 8

    .prologue
    const/4 v4, -0x1

    .line 302
    monitor-enter p0

    const/4 v1, 0x0

    .line 303
    .local v1, "db":Landroid/database/sqlite/SQLiteDatabase;
    const/4 v0, 0x0

    .line 306
    .local v0, "cursor":Landroid/database/Cursor;
    :try_start_0
    invoke-virtual {p0}, Lcom/amazon/ags/storage/SQLiteOfflineEventStorage;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 307
    const-string v5, "SELECT * FROM events"

    const/4 v6, 0x0

    invoke-virtual {v1, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 309
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result v4

    .line 321
    if-eqz v0, :cond_0

    .line 322
    :try_start_1
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 325
    :cond_0
    if-eqz v1, :cond_1

    .line 326
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    :goto_0
    monitor-exit p0

    return v4

    .line 311
    :catch_0
    move-exception v2

    .line 312
    .local v2, "e":Landroid/database/sqlite/SQLiteException;
    :try_start_2
    sget-object v5, Lcom/amazon/ags/storage/SQLiteOfflineEventStorage;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed to open SQL database: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteException;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 321
    if-eqz v0, :cond_2

    .line 322
    :try_start_3
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 325
    :cond_2
    if-eqz v1, :cond_1

    .line 326
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 302
    .end local v2    # "e":Landroid/database/sqlite/SQLiteException;
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4

    .line 314
    :catch_1
    move-exception v2

    .line 315
    .local v2, "e":Ljava/lang/IllegalStateException;
    :try_start_4
    sget-object v5, Lcom/amazon/ags/storage/SQLiteOfflineEventStorage;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "SQL database is in an invalid state: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Ljava/lang/IllegalStateException;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 321
    if-eqz v0, :cond_3

    .line 322
    :try_start_5
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 325
    :cond_3
    if-eqz v1, :cond_1

    .line 326
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_0

    .line 317
    .end local v2    # "e":Ljava/lang/IllegalStateException;
    :catch_2
    move-exception v3

    .line 318
    .local v3, "throwable":Ljava/lang/Throwable;
    :try_start_6
    sget-object v5, Lcom/amazon/ags/storage/SQLiteOfflineEventStorage;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unexepected error/exception: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v3}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 321
    if-eqz v0, :cond_4

    .line 322
    :try_start_7
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 325
    :cond_4
    if-eqz v1, :cond_1

    .line 326
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    goto :goto_0

    .line 321
    .end local v3    # "throwable":Ljava/lang/Throwable;
    :catchall_1
    move-exception v4

    if-eqz v0, :cond_5

    .line 322
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 325
    :cond_5
    if-eqz v1, :cond_6

    .line 326
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_6
    throw v4
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0
.end method

.method public final onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 336
    const-string v0, "CREATE TABLE events(id INTEGER PRIMARY KEY AUTOINCREMENT, text TEXT)"

    .line 339
    .local v0, "createTableString":Ljava/lang/String;
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 340
    return-void
.end method

.method public final onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 1
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "oldVersion"    # I
    .param p3, "newVersion"    # I

    .prologue
    .line 348
    const-string v0, "DROP TABLE IF EXISTS events"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 349
    invoke-virtual {p0, p1}, Lcom/amazon/ags/storage/SQLiteOfflineEventStorage;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 350
    return-void
.end method

.method public final declared-synchronized peekEvent()Lcom/amazon/ags/storage/OfflineEventId;
    .locals 9

    .prologue
    .line 136
    monitor-enter p0

    const/4 v1, 0x0

    .line 137
    .local v1, "db":Landroid/database/sqlite/SQLiteDatabase;
    const/4 v0, 0x0

    .line 143
    .local v0, "cursor":Landroid/database/Cursor;
    :try_start_0
    invoke-virtual {p0}, Lcom/amazon/ags/storage/SQLiteOfflineEventStorage;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 144
    const-string v6, "SELECT MIN(id) FROM events"

    const/4 v7, 0x0

    invoke-virtual {v1, v6, v7}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 146
    if-eqz v0, :cond_4

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 147
    const/4 v6, 0x0

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 150
    .local v4, "id":J
    const-wide/16 v6, 0x0

    cmp-long v6, v4, v6

    if-nez v6, :cond_2

    .line 151
    sget-object v6, Lcom/amazon/ags/storage/OfflineEventId;->Invalid:Lcom/amazon/ags/storage/OfflineEventId;
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 170
    if-eqz v0, :cond_0

    .line 171
    :try_start_1
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 174
    :cond_0
    if-eqz v1, :cond_1

    .line 175
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local v4    # "id":J
    :cond_1
    :goto_0
    monitor-exit p0

    return-object v6

    .line 154
    .restart local v4    # "id":J
    :cond_2
    :try_start_2
    new-instance v6, Lcom/amazon/ags/storage/OfflineEventId;

    invoke-direct {v6, v4, v5}, Lcom/amazon/ags/storage/OfflineEventId;-><init>(J)V
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 170
    if-eqz v0, :cond_3

    .line 171
    :try_start_3
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 174
    :cond_3
    if-eqz v1, :cond_1

    .line 175
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 136
    .end local v4    # "id":J
    :catchall_0
    move-exception v6

    monitor-exit p0

    throw v6

    .line 156
    :cond_4
    :try_start_4
    sget-object v6, Lcom/amazon/ags/storage/OfflineEventId;->Invalid:Lcom/amazon/ags/storage/OfflineEventId;
    :try_end_4
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 170
    if-eqz v0, :cond_5

    .line 171
    :try_start_5
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 174
    :cond_5
    if-eqz v1, :cond_1

    .line 175
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_0

    .line 158
    :catch_0
    move-exception v2

    .line 159
    .local v2, "e":Landroid/database/sqlite/SQLiteException;
    :try_start_6
    sget-object v6, Lcom/amazon/ags/storage/SQLiteOfflineEventStorage;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Failed to open SQL database: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteException;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    sget-object v6, Lcom/amazon/ags/storage/OfflineEventId;->Invalid:Lcom/amazon/ags/storage/OfflineEventId;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 170
    if-eqz v0, :cond_6

    .line 171
    :try_start_7
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 174
    :cond_6
    if-eqz v1, :cond_1

    .line 175
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_0

    .line 162
    .end local v2    # "e":Landroid/database/sqlite/SQLiteException;
    :catch_1
    move-exception v2

    .line 163
    .local v2, "e":Ljava/lang/IllegalStateException;
    :try_start_8
    sget-object v6, Lcom/amazon/ags/storage/SQLiteOfflineEventStorage;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "SQL database is in an invalid state: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v2}, Ljava/lang/IllegalStateException;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    sget-object v6, Lcom/amazon/ags/storage/OfflineEventId;->Invalid:Lcom/amazon/ags/storage/OfflineEventId;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 170
    if-eqz v0, :cond_7

    .line 171
    :try_start_9
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 174
    :cond_7
    if-eqz v1, :cond_1

    .line 175
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto :goto_0

    .line 165
    .end local v2    # "e":Ljava/lang/IllegalStateException;
    :catch_2
    move-exception v3

    .line 166
    .local v3, "throwable":Ljava/lang/Throwable;
    :try_start_a
    sget-object v6, Lcom/amazon/ags/storage/SQLiteOfflineEventStorage;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unexepected error/exception: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v3}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    sget-object v6, Lcom/amazon/ags/storage/OfflineEventId;->Invalid:Lcom/amazon/ags/storage/OfflineEventId;
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    .line 170
    if-eqz v0, :cond_8

    .line 171
    :try_start_b
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 174
    :cond_8
    if-eqz v1, :cond_1

    .line 175
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    goto/16 :goto_0

    .line 170
    .end local v3    # "throwable":Ljava/lang/Throwable;
    :catchall_1
    move-exception v6

    if-eqz v0, :cond_9

    .line 171
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 174
    :cond_9
    if-eqz v1, :cond_a

    .line 175
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_a
    throw v6
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0
.end method

.method public final declared-synchronized removeAllEvents()V
    .locals 5

    .prologue
    .line 354
    monitor-enter p0

    const/4 v0, 0x0

    .line 357
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    :try_start_0
    sget-object v2, Lcom/amazon/ags/storage/SQLiteOfflineEventStorage;->TAG:Ljava/lang/String;

    const-string v3, "Removing all events"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 358
    invoke-virtual {p0}, Lcom/amazon/ags/storage/SQLiteOfflineEventStorage;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 359
    const-string v2, "DELETE FROM events"

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 363
    if-eqz v0, :cond_0

    .line 364
    :try_start_1
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 367
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 360
    :catch_0
    move-exception v1

    .line 361
    .local v1, "e":Landroid/database/sqlite/SQLiteException;
    :try_start_2
    sget-object v2, Lcom/amazon/ags/storage/SQLiteOfflineEventStorage;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to open SQL database: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 363
    if-eqz v0, :cond_0

    .line 364
    :try_start_3
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 354
    .end local v1    # "e":Landroid/database/sqlite/SQLiteException;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 363
    :catchall_1
    move-exception v2

    if-eqz v0, :cond_1

    .line 364
    :try_start_4
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_1
    throw v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
.end method

.method public final declared-synchronized removeEvent(Lcom/amazon/ags/storage/OfflineEventId;)V
    .locals 8
    .param p1, "id"    # Lcom/amazon/ags/storage/OfflineEventId;

    .prologue
    .line 111
    monitor-enter p0

    const/4 v0, 0x0

    .line 114
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    :try_start_0
    sget-object v3, Lcom/amazon/ags/storage/SQLiteOfflineEventStorage;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Removing event: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Lcom/amazon/ags/storage/OfflineEventId;->getId()J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    invoke-virtual {p0}, Lcom/amazon/ags/storage/SQLiteOfflineEventStorage;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 117
    const-string v3, "events"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "id="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Lcom/amazon/ags/storage/OfflineEventId;->getId()J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v0, v3, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 125
    if-eqz v0, :cond_0

    .line 126
    :try_start_1
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 129
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 118
    :catch_0
    move-exception v1

    .line 119
    .local v1, "e":Landroid/database/sqlite/SQLiteException;
    :try_start_2
    sget-object v3, Lcom/amazon/ags/storage/SQLiteOfflineEventStorage;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to open SQL database: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 125
    if-eqz v0, :cond_0

    .line 126
    :try_start_3
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 111
    .end local v1    # "e":Landroid/database/sqlite/SQLiteException;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 120
    :catch_1
    move-exception v1

    .line 121
    .local v1, "e":Ljava/lang/IllegalStateException;
    :try_start_4
    sget-object v3, Lcom/amazon/ags/storage/SQLiteOfflineEventStorage;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SQL database is in an invalid state: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/IllegalStateException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 125
    if-eqz v0, :cond_0

    .line 126
    :try_start_5
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_0

    .line 122
    .end local v1    # "e":Ljava/lang/IllegalStateException;
    :catch_2
    move-exception v2

    .line 123
    .local v2, "throwable":Ljava/lang/Throwable;
    :try_start_6
    sget-object v3, Lcom/amazon/ags/storage/SQLiteOfflineEventStorage;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unexepected error/exception: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 125
    if-eqz v0, :cond_0

    .line 126
    :try_start_7
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    goto :goto_0

    .line 125
    .end local v2    # "throwable":Ljava/lang/Throwable;
    :catchall_1
    move-exception v3

    if-eqz v0, :cond_1

    .line 126
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_1
    throw v3
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0
.end method

.method public final declared-synchronized storeEvent(Lorg/json/JSONObject;)Lcom/amazon/ags/storage/OfflineEventId;
    .locals 19
    .param p1, "event"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/ags/storage/OfflineEventException;
        }
    .end annotation

    .prologue
    .line 47
    monitor-enter p0

    const/4 v2, 0x0

    .line 48
    .local v2, "db":Landroid/database/sqlite/SQLiteDatabase;
    const/4 v10, 0x0

    .line 51
    .local v10, "cursor":Landroid/database/Cursor;
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/amazon/ags/storage/SQLiteOfflineEventStorage;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 53
    move-object/from16 v0, p1

    instance-of v3, v0, Lorg/json/JSONObject;

    if-nez v3, :cond_2

    invoke-virtual/range {p1 .. p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v12

    .line 55
    .end local p1    # "event":Lorg/json/JSONObject;
    .local v12, "eventString":Ljava/lang/String;
    :goto_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/amazon/ags/storage/SQLiteOfflineEventStorage;->obfuscator:Lcom/amazon/ags/storage/StringObfuscator;

    if-eqz v3, :cond_3

    .line 56
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/amazon/ags/storage/SQLiteOfflineEventStorage;->obfuscator:Lcom/amazon/ags/storage/StringObfuscator;

    invoke-interface {v3, v12}, Lcom/amazon/ags/storage/StringObfuscator;->obfuscate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 57
    if-nez v12, :cond_3

    .line 58
    sget-object v3, Lcom/amazon/ags/storage/SQLiteOfflineEventStorage;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to obfuscate text: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    new-instance v3, Lcom/amazon/ags/storage/OfflineEventException;

    const-string v4, "Failed to obfuscate text."

    invoke-direct {v3, v4}, Lcom/amazon/ags/storage/OfflineEventException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 86
    .end local v12    # "eventString":Ljava/lang/String;
    :catch_0
    move-exception v11

    .line 87
    .local v11, "e":Landroid/database/sqlite/SQLiteException;
    :try_start_1
    sget-object v3, Lcom/amazon/ags/storage/SQLiteOfflineEventStorage;->TAG:Ljava/lang/String;

    const-string v4, "Failed to open SQL database."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    new-instance v3, Lcom/amazon/ags/storage/OfflineEventException;

    invoke-direct {v3, v11}, Lcom/amazon/ags/storage/OfflineEventException;-><init>(Ljava/lang/Throwable;)V

    throw v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 96
    .end local v11    # "e":Landroid/database/sqlite/SQLiteException;
    :catchall_0
    move-exception v3

    if-eqz v10, :cond_0

    .line 97
    :try_start_2
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 100
    :cond_0
    if-eqz v2, :cond_1

    .line 101
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_1
    throw v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 47
    :catchall_1
    move-exception v3

    monitor-exit p0

    throw v3

    .line 53
    .restart local p1    # "event":Lorg/json/JSONObject;
    :cond_2
    :try_start_3
    check-cast p1, Lorg/json/JSONObject;

    .end local p1    # "event":Lorg/json/JSONObject;
    invoke-static/range {p1 .. p1}, Lcom/newrelic/agent/android/instrumentation/JSONObjectInstrumentation;->toString(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v12

    goto :goto_0

    .line 63
    .restart local v12    # "eventString":Ljava/lang/String;
    :cond_3
    sget-object v3, Lcom/amazon/ags/storage/SQLiteOfflineEventStorage;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Storing event: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    new-instance v18, Landroid/content/ContentValues;

    invoke-direct/range {v18 .. v18}, Landroid/content/ContentValues;-><init>()V

    .line 67
    .local v18, "values":Landroid/content/ContentValues;
    const-string v3, "text"

    move-object/from16 v0, v18

    invoke-virtual {v0, v3, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    const-string v3, "events"

    const/4 v4, 0x0

    move-object/from16 v0, v18

    invoke-virtual {v2, v3, v4, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v16

    .line 70
    .local v16, "rowId":J
    const-wide/16 v4, -0x1

    cmp-long v3, v16, v4

    if-nez v3, :cond_4

    .line 71
    sget-object v3, Lcom/amazon/ags/storage/SQLiteOfflineEventStorage;->TAG:Ljava/lang/String;

    const-string v4, "Failed to store event in database."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    new-instance v3, Lcom/amazon/ags/storage/OfflineEventException;

    const-string v4, "Failed to store event to database."

    invoke-direct {v3, v4}, Lcom/amazon/ags/storage/OfflineEventException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_3
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 89
    .end local v12    # "eventString":Ljava/lang/String;
    .end local v16    # "rowId":J
    .end local v18    # "values":Landroid/content/ContentValues;
    :catch_1
    move-exception v11

    .line 90
    .local v11, "e":Ljava/lang/IllegalStateException;
    :try_start_4
    sget-object v3, Lcom/amazon/ags/storage/SQLiteOfflineEventStorage;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SQL database is in an invalid state: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v11}, Ljava/lang/IllegalStateException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    new-instance v3, Lcom/amazon/ags/storage/OfflineEventException;

    invoke-direct {v3, v11}, Lcom/amazon/ags/storage/OfflineEventException;-><init>(Ljava/lang/Throwable;)V

    throw v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 75
    .end local v11    # "e":Ljava/lang/IllegalStateException;
    .restart local v12    # "eventString":Ljava/lang/String;
    .restart local v16    # "rowId":J
    .restart local v18    # "values":Landroid/content/ContentValues;
    :cond_4
    :try_start_5
    const-string v3, "events"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "id"

    aput-object v6, v4, v5

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "rowid = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-wide/from16 v0, v16

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 78
    if-eqz v10, :cond_7

    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 79
    const/4 v3, 0x0

    invoke-interface {v10, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v14

    .line 81
    .local v14, "id":J
    new-instance v3, Lcom/amazon/ags/storage/OfflineEventId;

    invoke-direct {v3, v14, v15}, Lcom/amazon/ags/storage/OfflineEventId;-><init>(J)V
    :try_end_5
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 96
    if-eqz v10, :cond_5

    .line 97
    :try_start_6
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 100
    :cond_5
    if-eqz v2, :cond_6

    .line 101
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :cond_6
    monitor-exit p0

    return-object v3

    .line 83
    .end local v14    # "id":J
    :cond_7
    :try_start_7
    sget-object v3, Lcom/amazon/ags/storage/SQLiteOfflineEventStorage;->TAG:Ljava/lang/String;

    const-string v4, "Failed to get cursor to inserted item"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    new-instance v3, Lcom/amazon/ags/storage/OfflineEventException;

    const-string v4, "Failed to get cursor to inserted item"

    invoke-direct {v3, v4}, Lcom/amazon/ags/storage/OfflineEventException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_7
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_7 .. :try_end_7} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_7 .. :try_end_7} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 92
    .end local v12    # "eventString":Ljava/lang/String;
    .end local v16    # "rowId":J
    .end local v18    # "values":Landroid/content/ContentValues;
    :catch_2
    move-exception v13

    .line 93
    .local v13, "throwable":Ljava/lang/Throwable;
    :try_start_8
    sget-object v3, Lcom/amazon/ags/storage/SQLiteOfflineEventStorage;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unexepected error/exception: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v13}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    new-instance v3, Lcom/amazon/ags/storage/OfflineEventException;

    invoke-direct {v3, v13}, Lcom/amazon/ags/storage/OfflineEventException;-><init>(Ljava/lang/Throwable;)V

    throw v3
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0
.end method
