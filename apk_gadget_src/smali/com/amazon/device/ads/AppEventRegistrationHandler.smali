.class Lcom/amazon/device/ads/AppEventRegistrationHandler;
.super Ljava/lang/Object;
.source "AppEventRegistrationHandler.java"


# static fields
.field protected static final APP_EVENTS_FILE:Ljava/lang/String; = "AppEventsJsonFile"

.field protected static final APP_EVENTS_FILE_MAX_SIZE:J = 0x100000L

.field protected static final APP_EVENT_NAME_KEY:Ljava/lang/String; = "evtName"

.field protected static final APP_EVENT_TIMESTAMP_KEY:Ljava/lang/String; = "ts"

.field protected static final INSTALL_REFERRER_EVENT_NAME:Ljava/lang/String; = "INSTALL_REFERRER"

.field private static final LOGTAG:Ljava/lang/String;

.field protected static instance:Lcom/amazon/device/ads/AppEventRegistrationHandler;


# instance fields
.field protected final appEventsFileLock:Ljava/lang/Object;

.field protected final eventsSent:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final fileHandlerFactory:Lcom/amazon/device/ads/FileHandlerFactory;

.field private fileInputHandler:Lcom/amazon/device/ads/FileInputHandler;

.field private fileOutputHandler:Lcom/amazon/device/ads/FileOutputHandler;

.field private final infoStore:Lcom/amazon/device/ads/MobileAdsInfoStore;

.field private final logger:Lcom/amazon/device/ads/MobileAdsLogger;

.field protected final newEventsToSave:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 31
    const-class v0, Lcom/amazon/device/ads/AppEventRegistrationHandler;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/device/ads/AppEventRegistrationHandler;->LOGTAG:Ljava/lang/String;

    .line 62
    new-instance v0, Lcom/amazon/device/ads/AppEventRegistrationHandler;

    invoke-static {}, Lcom/amazon/device/ads/MobileAdsInfoStore;->getInstance()Lcom/amazon/device/ads/MobileAdsInfoStore;

    move-result-object v1

    new-instance v2, Lcom/amazon/device/ads/DefaultFileHandlerFactory;

    invoke-direct {v2}, Lcom/amazon/device/ads/DefaultFileHandlerFactory;-><init>()V

    invoke-direct {v0, v1, v2}, Lcom/amazon/device/ads/AppEventRegistrationHandler;-><init>(Lcom/amazon/device/ads/MobileAdsInfoStore;Lcom/amazon/device/ads/FileHandlerFactory;)V

    sput-object v0, Lcom/amazon/device/ads/AppEventRegistrationHandler;->instance:Lcom/amazon/device/ads/AppEventRegistrationHandler;

    return-void
.end method

.method protected constructor <init>(Lcom/amazon/device/ads/MobileAdsInfoStore;Lcom/amazon/device/ads/FileHandlerFactory;)V
    .locals 2
    .param p1, "infoStore"    # Lcom/amazon/device/ads/MobileAdsInfoStore;
    .param p2, "fileHandlerFactory"    # Lcom/amazon/device/ads/FileHandlerFactory;

    .prologue
    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    new-instance v0, Lcom/amazon/device/ads/MobileAdsLoggerFactory;

    invoke-direct {v0}, Lcom/amazon/device/ads/MobileAdsLoggerFactory;-><init>()V

    sget-object v1, Lcom/amazon/device/ads/AppEventRegistrationHandler;->LOGTAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/amazon/device/ads/MobileAdsLoggerFactory;->createMobileAdsLogger(Ljava/lang/String;)Lcom/amazon/device/ads/MobileAdsLogger;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/device/ads/AppEventRegistrationHandler;->logger:Lcom/amazon/device/ads/MobileAdsLogger;

    .line 66
    iput-object p1, p0, Lcom/amazon/device/ads/AppEventRegistrationHandler;->infoStore:Lcom/amazon/device/ads/MobileAdsInfoStore;

    .line 67
    iput-object p2, p0, Lcom/amazon/device/ads/AppEventRegistrationHandler;->fileHandlerFactory:Lcom/amazon/device/ads/FileHandlerFactory;

    .line 68
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/amazon/device/ads/AppEventRegistrationHandler;->appEventsFileLock:Ljava/lang/Object;

    .line 69
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/device/ads/AppEventRegistrationHandler;->newEventsToSave:Ljava/util/Set;

    .line 70
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/device/ads/AppEventRegistrationHandler;->eventsSent:Ljava/util/Set;

    .line 71
    return-void
.end method

.method static synthetic access$000(Lcom/amazon/device/ads/AppEventRegistrationHandler;)Lcom/amazon/device/ads/MobileAdsInfoStore;
    .locals 1
    .param p0, "x0"    # Lcom/amazon/device/ads/AppEventRegistrationHandler;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/amazon/device/ads/AppEventRegistrationHandler;->infoStore:Lcom/amazon/device/ads/MobileAdsInfoStore;

    return-object v0
.end method

.method private createFileInputHandlerIfNeeded()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 116
    iget-object v2, p0, Lcom/amazon/device/ads/AppEventRegistrationHandler;->fileInputHandler:Lcom/amazon/device/ads/FileInputHandler;

    if-nez v2, :cond_2

    .line 118
    iget-object v2, p0, Lcom/amazon/device/ads/AppEventRegistrationHandler;->infoStore:Lcom/amazon/device/ads/MobileAdsInfoStore;

    invoke-virtual {v2}, Lcom/amazon/device/ads/MobileAdsInfoStore;->getFilesDir()Ljava/io/File;

    move-result-object v0

    .line 119
    .local v0, "fileDir":Ljava/io/File;
    if-nez v0, :cond_1

    .line 121
    iget-object v2, p0, Lcom/amazon/device/ads/AppEventRegistrationHandler;->logger:Lcom/amazon/device/ads/MobileAdsLogger;

    const-string v3, "No files directory has been set."

    invoke-virtual {v2, v3}, Lcom/amazon/device/ads/MobileAdsLogger;->e(Ljava/lang/String;)V

    .line 126
    .end local v0    # "fileDir":Ljava/io/File;
    :cond_0
    :goto_0
    return v1

    .line 124
    .restart local v0    # "fileDir":Ljava/io/File;
    :cond_1
    iget-object v2, p0, Lcom/amazon/device/ads/AppEventRegistrationHandler;->fileHandlerFactory:Lcom/amazon/device/ads/FileHandlerFactory;

    const-string v3, "AppEventsJsonFile"

    invoke-interface {v2, v0, v3}, Lcom/amazon/device/ads/FileHandlerFactory;->createFileInputHandler(Ljava/io/File;Ljava/lang/String;)Lcom/amazon/device/ads/FileInputHandler;

    move-result-object v2

    iput-object v2, p0, Lcom/amazon/device/ads/AppEventRegistrationHandler;->fileInputHandler:Lcom/amazon/device/ads/FileInputHandler;

    .line 126
    .end local v0    # "fileDir":Ljava/io/File;
    :cond_2
    iget-object v2, p0, Lcom/amazon/device/ads/AppEventRegistrationHandler;->fileInputHandler:Lcom/amazon/device/ads/FileInputHandler;

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method private createFileOutputHandlerIfNeeded()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 101
    iget-object v2, p0, Lcom/amazon/device/ads/AppEventRegistrationHandler;->fileOutputHandler:Lcom/amazon/device/ads/FileOutputHandler;

    if-nez v2, :cond_2

    .line 103
    iget-object v2, p0, Lcom/amazon/device/ads/AppEventRegistrationHandler;->infoStore:Lcom/amazon/device/ads/MobileAdsInfoStore;

    invoke-virtual {v2}, Lcom/amazon/device/ads/MobileAdsInfoStore;->getFilesDir()Ljava/io/File;

    move-result-object v0

    .line 104
    .local v0, "fileDir":Ljava/io/File;
    if-nez v0, :cond_1

    .line 106
    iget-object v2, p0, Lcom/amazon/device/ads/AppEventRegistrationHandler;->logger:Lcom/amazon/device/ads/MobileAdsLogger;

    const-string v3, "No files directory has been set."

    invoke-virtual {v2, v3}, Lcom/amazon/device/ads/MobileAdsLogger;->e(Ljava/lang/String;)V

    .line 111
    .end local v0    # "fileDir":Ljava/io/File;
    :cond_0
    :goto_0
    return v1

    .line 109
    .restart local v0    # "fileDir":Ljava/io/File;
    :cond_1
    iget-object v2, p0, Lcom/amazon/device/ads/AppEventRegistrationHandler;->fileHandlerFactory:Lcom/amazon/device/ads/FileHandlerFactory;

    const-string v3, "AppEventsJsonFile"

    invoke-interface {v2, v0, v3}, Lcom/amazon/device/ads/FileHandlerFactory;->createFileOutputHandler(Ljava/io/File;Ljava/lang/String;)Lcom/amazon/device/ads/FileOutputHandler;

    move-result-object v2

    iput-object v2, p0, Lcom/amazon/device/ads/AppEventRegistrationHandler;->fileOutputHandler:Lcom/amazon/device/ads/FileOutputHandler;

    .line 111
    .end local v0    # "fileDir":Ljava/io/File;
    :cond_2
    iget-object v2, p0, Lcom/amazon/device/ads/AppEventRegistrationHandler;->fileOutputHandler:Lcom/amazon/device/ads/FileOutputHandler;

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public static getInstance()Lcom/amazon/device/ads/AppEventRegistrationHandler;
    .locals 1

    .prologue
    .line 74
    sget-object v0, Lcom/amazon/device/ads/AppEventRegistrationHandler;->instance:Lcom/amazon/device/ads/AppEventRegistrationHandler;

    return-object v0
.end method


# virtual methods
.method public addEventToAppEventsCacheFile(Lcom/amazon/device/ads/AppEvent;)V
    .locals 1
    .param p1, "appEvent"    # Lcom/amazon/device/ads/AppEvent;

    .prologue
    .line 83
    new-instance v0, Lcom/amazon/device/ads/AppEventRegistrationHandler$1;

    invoke-direct {v0, p0, p1}, Lcom/amazon/device/ads/AppEventRegistrationHandler$1;-><init>(Lcom/amazon/device/ads/AppEventRegistrationHandler;Lcom/amazon/device/ads/AppEvent;)V

    invoke-static {v0}, Lcom/amazon/device/ads/ThreadUtils;->scheduleRunnable(Ljava/lang/Runnable;)V

    .line 97
    return-void
.end method

.method protected appendAppEventToFile(Lcom/amazon/device/ads/AppEvent;)V
    .locals 12
    .param p1, "appEvent"    # Lcom/amazon/device/ads/AppEvent;

    .prologue
    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 135
    invoke-direct {p0}, Lcom/amazon/device/ads/AppEventRegistrationHandler;->createFileOutputHandlerIfNeeded()Z

    move-result v5

    if-nez v5, :cond_0

    .line 137
    iget-object v5, p0, Lcom/amazon/device/ads/AppEventRegistrationHandler;->logger:Lcom/amazon/device/ads/MobileAdsLogger;

    const-string v6, "Error creating file output handler."

    invoke-virtual {v5, v6}, Lcom/amazon/device/ads/MobileAdsLogger;->e(Ljava/lang/String;)V

    .line 184
    :goto_0
    return-void

    .line 140
    :cond_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 143
    .local v2, "jsonEvent":Lorg/json/JSONObject;
    :try_start_0
    const-string v5, "evtName"

    invoke-virtual {p1}, Lcom/amazon/device/ads/AppEvent;->getEventName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 144
    const-string v5, "ts"

    invoke-virtual {p1}, Lcom/amazon/device/ads/AppEvent;->getTimestamp()J

    move-result-wide v6

    invoke-virtual {v2, v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 145
    invoke-virtual {p1}, Lcom/amazon/device/ads/AppEvent;->getPropertyEntries()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 147
    .local v3, "prop":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 150
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v3    # "prop":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    :catch_0
    move-exception v0

    .line 152
    .local v0, "e":Lorg/json/JSONException;
    iget-object v5, p0, Lcom/amazon/device/ads/AppEventRegistrationHandler;->logger:Lcom/amazon/device/ads/MobileAdsLogger;

    const-string v6, "Internal error while persisting the application event %s."

    new-array v7, v8, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/amazon/device/ads/AppEvent;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v9

    invoke-virtual {v5, v6, v7}, Lcom/amazon/device/ads/MobileAdsLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 159
    .end local v0    # "e":Lorg/json/JSONException;
    .restart local v1    # "i$":Ljava/util/Iterator;
    :cond_1
    iget-object v6, p0, Lcom/amazon/device/ads/AppEventRegistrationHandler;->newEventsToSave:Ljava/util/Set;

    instance-of v5, v2, Lorg/json/JSONObject;

    if-nez v5, :cond_2

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    :goto_2
    invoke-interface {v6, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 162
    iget-object v6, p0, Lcom/amazon/device/ads/AppEventRegistrationHandler;->appEventsFileLock:Ljava/lang/Object;

    monitor-enter v6

    .line 164
    :try_start_1
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    instance-of v5, v2, Lorg/json/JSONObject;

    if-nez v5, :cond_3

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    .end local v2    # "jsonEvent":Lorg/json/JSONObject;
    :goto_3
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, "\n"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 165
    .local v4, "toAppend":Ljava/lang/String;
    iget-object v5, p0, Lcom/amazon/device/ads/AppEventRegistrationHandler;->fileOutputHandler:Lcom/amazon/device/ads/FileOutputHandler;

    invoke-virtual {v5}, Lcom/amazon/device/ads/FileOutputHandler;->getFileLength()J

    move-result-wide v8

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    int-to-long v10, v5

    add-long/2addr v8, v10

    const-wide/32 v10, 0x100000

    cmp-long v5, v8, v10

    if-lez v5, :cond_4

    .line 167
    iget-object v5, p0, Lcom/amazon/device/ads/AppEventRegistrationHandler;->logger:Lcom/amazon/device/ads/MobileAdsLogger;

    const-string v7, "Couldn\'t write the application event %s to the cache file. Maximum size limit reached."

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-virtual {p1}, Lcom/amazon/device/ads/AppEvent;->toString()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-virtual {v5, v7, v8}, Lcom/amazon/device/ads/MobileAdsLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 168
    monitor-exit v6

    goto/16 :goto_0

    .line 183
    .end local v4    # "toAppend":Ljava/lang/String;
    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v5

    .restart local v2    # "jsonEvent":Lorg/json/JSONObject;
    :cond_2
    move-object v5, v2

    .line 159
    check-cast v5, Lorg/json/JSONObject;

    invoke-static {v5}, Lcom/newrelic/agent/android/instrumentation/JSONObjectInstrumentation;->toString(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v5

    goto :goto_2

    .line 164
    :cond_3
    :try_start_2
    check-cast v2, Lorg/json/JSONObject;

    .end local v2    # "jsonEvent":Lorg/json/JSONObject;
    invoke-static {v2}, Lcom/newrelic/agent/android/instrumentation/JSONObjectInstrumentation;->toString(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v5

    goto :goto_3

    .line 170
    .restart local v4    # "toAppend":Ljava/lang/String;
    :cond_4
    iget-object v5, p0, Lcom/amazon/device/ads/AppEventRegistrationHandler;->fileOutputHandler:Lcom/amazon/device/ads/FileOutputHandler;

    sget-object v7, Lcom/amazon/device/ads/FileOutputHandler$WriteMethod;->APPEND:Lcom/amazon/device/ads/FileOutputHandler$WriteMethod;

    invoke-virtual {v5, v7}, Lcom/amazon/device/ads/FileOutputHandler;->open(Lcom/amazon/device/ads/FileOutputHandler$WriteMethod;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v5

    if-eqz v5, :cond_5

    .line 174
    :try_start_3
    iget-object v5, p0, Lcom/amazon/device/ads/AppEventRegistrationHandler;->fileOutputHandler:Lcom/amazon/device/ads/FileOutputHandler;

    invoke-virtual {v5, v4}, Lcom/amazon/device/ads/FileOutputHandler;->write(Ljava/lang/String;)V

    .line 175
    iget-object v5, p0, Lcom/amazon/device/ads/AppEventRegistrationHandler;->logger:Lcom/amazon/device/ads/MobileAdsLogger;

    const-string v7, "Added the application event %s to the cache file."

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-virtual {p1}, Lcom/amazon/device/ads/AppEvent;->toString()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-virtual {v5, v7, v8}, Lcom/amazon/device/ads/MobileAdsLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 182
    :cond_5
    :goto_4
    :try_start_4
    iget-object v5, p0, Lcom/amazon/device/ads/AppEventRegistrationHandler;->fileOutputHandler:Lcom/amazon/device/ads/FileOutputHandler;

    invoke-virtual {v5}, Lcom/amazon/device/ads/FileOutputHandler;->close()V

    .line 183
    monitor-exit v6

    goto/16 :goto_0

    .line 177
    :catch_1
    move-exception v0

    .line 179
    .local v0, "e":Ljava/io/IOException;
    iget-object v5, p0, Lcom/amazon/device/ads/AppEventRegistrationHandler;->logger:Lcom/amazon/device/ads/MobileAdsLogger;

    const-string v7, "Couldn\'t write the application event %s to the file."

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-virtual {p1}, Lcom/amazon/device/ads/AppEvent;->toString()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-virtual {v5, v7, v8}, Lcom/amazon/device/ads/MobileAdsLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_4
.end method

.method public getAppEventsJSONArray()Lorg/json/JSONArray;
    .locals 7

    .prologue
    const/4 v3, 0x0

    .line 192
    invoke-direct {p0}, Lcom/amazon/device/ads/AppEventRegistrationHandler;->createFileInputHandlerIfNeeded()Z

    move-result v4

    if-nez v4, :cond_0

    .line 194
    iget-object v4, p0, Lcom/amazon/device/ads/AppEventRegistrationHandler;->logger:Lcom/amazon/device/ads/MobileAdsLogger;

    const-string v5, "Error creating file input handler."

    invoke-virtual {v4, v5}, Lcom/amazon/device/ads/MobileAdsLogger;->e(Ljava/lang/String;)V

    move-object v0, v3

    .line 231
    :goto_0
    return-object v0

    .line 198
    :cond_0
    iget-object v5, p0, Lcom/amazon/device/ads/AppEventRegistrationHandler;->appEventsFileLock:Ljava/lang/Object;

    monitor-enter v5

    .line 200
    :try_start_0
    iget-object v4, p0, Lcom/amazon/device/ads/AppEventRegistrationHandler;->fileInputHandler:Lcom/amazon/device/ads/FileInputHandler;

    invoke-virtual {v4}, Lcom/amazon/device/ads/FileInputHandler;->doesFileExist()Z

    move-result v4

    if-nez v4, :cond_1

    .line 202
    monitor-exit v5

    move-object v0, v3

    goto :goto_0

    .line 204
    :cond_1
    iget-object v4, p0, Lcom/amazon/device/ads/AppEventRegistrationHandler;->fileInputHandler:Lcom/amazon/device/ads/FileInputHandler;

    invoke-virtual {v4}, Lcom/amazon/device/ads/FileInputHandler;->open()Z

    move-result v4

    if-nez v4, :cond_2

    .line 206
    iget-object v4, p0, Lcom/amazon/device/ads/AppEventRegistrationHandler;->logger:Lcom/amazon/device/ads/MobileAdsLogger;

    const-string v6, "App Events File could not be opened."

    invoke-virtual {v4, v6}, Lcom/amazon/device/ads/MobileAdsLogger;->e(Ljava/lang/String;)V

    .line 207
    monitor-exit v5

    move-object v0, v3

    goto :goto_0

    .line 210
    :cond_2
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 211
    .local v0, "jsonArray":Lorg/json/JSONArray;
    const/4 v2, 0x0

    .line 212
    .local v2, "jsonEventString":Ljava/lang/String;
    :goto_1
    iget-object v4, p0, Lcom/amazon/device/ads/AppEventRegistrationHandler;->fileInputHandler:Lcom/amazon/device/ads/FileInputHandler;

    invoke-virtual {v4}, Lcom/amazon/device/ads/FileInputHandler;->readLine()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_5

    .line 214
    invoke-static {v2}, Lcom/amazon/device/ads/JSONUtils;->getJSONObjectFromString(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 217
    .local v1, "jsonEventObject":Lorg/json/JSONObject;
    if-nez v1, :cond_3

    .line 219
    invoke-virtual {p0}, Lcom/amazon/device/ads/AppEventRegistrationHandler;->onAppEventsRegistered()V

    .line 220
    iget-object v4, p0, Lcom/amazon/device/ads/AppEventRegistrationHandler;->fileInputHandler:Lcom/amazon/device/ads/FileInputHandler;

    invoke-virtual {v4}, Lcom/amazon/device/ads/FileInputHandler;->close()V

    .line 221
    monitor-exit v5

    move-object v0, v3

    goto :goto_0

    .line 223
    :cond_3
    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 224
    iget-object v6, p0, Lcom/amazon/device/ads/AppEventRegistrationHandler;->eventsSent:Ljava/util/Set;

    instance-of v4, v1, Lorg/json/JSONObject;

    if-nez v4, :cond_4

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    .end local v1    # "jsonEventObject":Lorg/json/JSONObject;
    :goto_2
    invoke-interface {v6, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 232
    .end local v0    # "jsonArray":Lorg/json/JSONArray;
    .end local v2    # "jsonEventString":Ljava/lang/String;
    :catchall_0
    move-exception v3

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 224
    .restart local v0    # "jsonArray":Lorg/json/JSONArray;
    .restart local v1    # "jsonEventObject":Lorg/json/JSONObject;
    .restart local v2    # "jsonEventString":Ljava/lang/String;
    :cond_4
    :try_start_1
    check-cast v1, Lorg/json/JSONObject;

    .end local v1    # "jsonEventObject":Lorg/json/JSONObject;
    invoke-static {v1}, Lcom/newrelic/agent/android/instrumentation/JSONObjectInstrumentation;->toString(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v4

    goto :goto_2

    .line 226
    :cond_5
    iget-object v4, p0, Lcom/amazon/device/ads/AppEventRegistrationHandler;->fileInputHandler:Lcom/amazon/device/ads/FileInputHandler;

    invoke-virtual {v4}, Lcom/amazon/device/ads/FileInputHandler;->close()V

    .line 227
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-lez v4, :cond_6

    .line 229
    monitor-exit v5

    goto :goto_0

    .line 231
    :cond_6
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v0, v3

    goto :goto_0
.end method

.method public onAppEventsRegistered()V
    .locals 9

    .prologue
    .line 240
    invoke-direct {p0}, Lcom/amazon/device/ads/AppEventRegistrationHandler;->createFileOutputHandlerIfNeeded()Z

    move-result v5

    if-nez v5, :cond_0

    .line 242
    iget-object v5, p0, Lcom/amazon/device/ads/AppEventRegistrationHandler;->logger:Lcom/amazon/device/ads/MobileAdsLogger;

    const-string v6, "Error creating file output handler."

    invoke-virtual {v5, v6}, Lcom/amazon/device/ads/MobileAdsLogger;->e(Ljava/lang/String;)V

    .line 287
    :goto_0
    return-void

    .line 246
    :cond_0
    iget-object v6, p0, Lcom/amazon/device/ads/AppEventRegistrationHandler;->appEventsFileLock:Ljava/lang/Object;

    monitor-enter v6

    .line 249
    :try_start_0
    iget-object v5, p0, Lcom/amazon/device/ads/AppEventRegistrationHandler;->newEventsToSave:Ljava/util/Set;

    iget-object v7, p0, Lcom/amazon/device/ads/AppEventRegistrationHandler;->eventsSent:Ljava/util/Set;

    invoke-interface {v5, v7}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    .line 253
    iget-object v5, p0, Lcom/amazon/device/ads/AppEventRegistrationHandler;->newEventsToSave:Ljava/util/Set;

    invoke-interface {v5}, Ljava/util/Set;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_3

    .line 255
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 256
    .local v4, "toWrite":Ljava/lang/StringBuilder;
    iget-object v7, p0, Lcom/amazon/device/ads/AppEventRegistrationHandler;->newEventsToSave:Ljava/util/Set;

    monitor-enter v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 258
    :try_start_1
    iget-object v5, p0, Lcom/amazon/device/ads/AppEventRegistrationHandler;->newEventsToSave:Ljava/util/Set;

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 260
    .local v3, "newEvent":Ljava/lang/String;
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, "\n"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 262
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "newEvent":Ljava/lang/String;
    :catchall_0
    move-exception v5

    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v5

    .line 286
    .end local v4    # "toWrite":Ljava/lang/StringBuilder;
    :catchall_1
    move-exception v5

    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v5

    .line 262
    .restart local v2    # "i$":Ljava/util/Iterator;
    .restart local v4    # "toWrite":Ljava/lang/StringBuilder;
    :cond_1
    :try_start_3
    monitor-exit v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 263
    :try_start_4
    iget-object v5, p0, Lcom/amazon/device/ads/AppEventRegistrationHandler;->fileOutputHandler:Lcom/amazon/device/ads/FileOutputHandler;

    sget-object v7, Lcom/amazon/device/ads/FileOutputHandler$WriteMethod;->APPEND:Lcom/amazon/device/ads/FileOutputHandler$WriteMethod;

    invoke-virtual {v5, v7}, Lcom/amazon/device/ads/FileOutputHandler;->open(Lcom/amazon/device/ads/FileOutputHandler$WriteMethod;)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-result v5

    if-eqz v5, :cond_2

    .line 267
    :try_start_5
    iget-object v5, p0, Lcom/amazon/device/ads/AppEventRegistrationHandler;->fileOutputHandler:Lcom/amazon/device/ads/FileOutputHandler;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Lcom/amazon/device/ads/FileOutputHandler;->write(Ljava/lang/String;)V

    .line 269
    iget-object v5, p0, Lcom/amazon/device/ads/AppEventRegistrationHandler;->newEventsToSave:Ljava/util/Set;

    invoke-interface {v5}, Ljava/util/Set;->clear()V

    .line 270
    iget-object v5, p0, Lcom/amazon/device/ads/AppEventRegistrationHandler;->eventsSent:Ljava/util/Set;

    invoke-interface {v5}, Ljava/util/Set;->clear()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 277
    :cond_2
    :goto_2
    :try_start_6
    iget-object v5, p0, Lcom/amazon/device/ads/AppEventRegistrationHandler;->fileOutputHandler:Lcom/amazon/device/ads/FileOutputHandler;

    invoke-virtual {v5}, Lcom/amazon/device/ads/FileOutputHandler;->close()V

    .line 286
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v4    # "toWrite":Ljava/lang/StringBuilder;
    :goto_3
    monitor-exit v6

    goto :goto_0

    .line 272
    .restart local v2    # "i$":Ljava/util/Iterator;
    .restart local v4    # "toWrite":Ljava/lang/StringBuilder;
    :catch_0
    move-exception v1

    .line 274
    .local v1, "e":Ljava/io/IOException;
    iget-object v5, p0, Lcom/amazon/device/ads/AppEventRegistrationHandler;->logger:Lcom/amazon/device/ads/MobileAdsLogger;

    const-string v7, "Couldn\'t write the application event(s) to the file."

    invoke-virtual {v5, v7}, Lcom/amazon/device/ads/MobileAdsLogger;->w(Ljava/lang/String;)V

    goto :goto_2

    .line 282
    .end local v1    # "e":Ljava/io/IOException;
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v4    # "toWrite":Ljava/lang/StringBuilder;
    :cond_3
    iget-object v5, p0, Lcom/amazon/device/ads/AppEventRegistrationHandler;->infoStore:Lcom/amazon/device/ads/MobileAdsInfoStore;

    invoke-virtual {v5}, Lcom/amazon/device/ads/MobileAdsInfoStore;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 283
    .local v0, "appContext":Landroid/content/Context;
    const-string v5, "AppEventsJsonFile"

    invoke-virtual {v0, v5}, Landroid/content/Context;->deleteFile(Ljava/lang/String;)Z

    .line 284
    iget-object v5, p0, Lcom/amazon/device/ads/AppEventRegistrationHandler;->eventsSent:Ljava/util/Set;

    invoke-interface {v5}, Ljava/util/Set;->clear()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto :goto_3
.end method
