.class public Lcom/cuebiq/cuebiqsdk/CuebiqSDKImpl;
.super Ljava/lang/Object;
.source "CuebiqSDKImpl.java"


# static fields
.field public static final GSON:Lcom/google/gson/Gson;

.field private static mHandlerThread:Landroid/os/HandlerThread;

.field private static mLogEnabled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 55
    new-instance v0, Lcom/google/gson/GsonBuilder;

    invoke-direct {v0}, Lcom/google/gson/GsonBuilder;-><init>()V

    .line 56
    invoke-virtual {v0}, Lcom/google/gson/GsonBuilder;->serializeSpecialFloatingPointValues()Lcom/google/gson/GsonBuilder;

    move-result-object v0

    const-class v1, Lcom/cuebiq/cuebiqsdk/model/wrapper/Auth;

    new-instance v2, Lcom/cuebiq/cuebiqsdk/model/listener/AuthSerializer;

    invoke-direct {v2}, Lcom/cuebiq/cuebiqsdk/model/listener/AuthSerializer;-><init>()V

    .line 57
    invoke-virtual {v0, v1, v2}, Lcom/google/gson/GsonBuilder;->registerTypeAdapter(Ljava/lang/reflect/Type;Ljava/lang/Object;)Lcom/google/gson/GsonBuilder;

    move-result-object v0

    const-class v1, Lcom/cuebiq/cuebiqsdk/model/wrapper/Device;

    new-instance v2, Lcom/cuebiq/cuebiqsdk/model/listener/DeviceSerializer;

    invoke-direct {v2}, Lcom/cuebiq/cuebiqsdk/model/listener/DeviceSerializer;-><init>()V

    .line 58
    invoke-virtual {v0, v1, v2}, Lcom/google/gson/GsonBuilder;->registerTypeAdapter(Ljava/lang/reflect/Type;Ljava/lang/Object;)Lcom/google/gson/GsonBuilder;

    move-result-object v0

    const-class v1, Lcom/cuebiq/cuebiqsdk/model/wrapper/Event;

    new-instance v2, Lcom/cuebiq/cuebiqsdk/model/listener/EventSerializer;

    invoke-direct {v2}, Lcom/cuebiq/cuebiqsdk/model/listener/EventSerializer;-><init>()V

    .line 59
    invoke-virtual {v0, v1, v2}, Lcom/google/gson/GsonBuilder;->registerTypeAdapter(Ljava/lang/reflect/Type;Ljava/lang/Object;)Lcom/google/gson/GsonBuilder;

    move-result-object v0

    const-class v1, Lcom/cuebiq/cuebiqsdk/model/wrapper/Geo;

    new-instance v2, Lcom/cuebiq/cuebiqsdk/model/listener/GeoSerializer;

    invoke-direct {v2}, Lcom/cuebiq/cuebiqsdk/model/listener/GeoSerializer;-><init>()V

    .line 60
    invoke-virtual {v0, v1, v2}, Lcom/google/gson/GsonBuilder;->registerTypeAdapter(Ljava/lang/reflect/Type;Ljava/lang/Object;)Lcom/google/gson/GsonBuilder;

    move-result-object v0

    const-class v1, Lcom/cuebiq/cuebiqsdk/model/wrapper/Information;

    new-instance v2, Lcom/cuebiq/cuebiqsdk/model/listener/InformationSerializer;

    invoke-direct {v2}, Lcom/cuebiq/cuebiqsdk/model/listener/InformationSerializer;-><init>()V

    .line 61
    invoke-virtual {v0, v1, v2}, Lcom/google/gson/GsonBuilder;->registerTypeAdapter(Ljava/lang/reflect/Type;Ljava/lang/Object;)Lcom/google/gson/GsonBuilder;

    move-result-object v0

    const-class v1, Lcom/cuebiq/cuebiqsdk/model/wrapper/TrackRequest;

    new-instance v2, Lcom/cuebiq/cuebiqsdk/model/listener/RequestSerializer;

    invoke-direct {v2}, Lcom/cuebiq/cuebiqsdk/model/listener/RequestSerializer;-><init>()V

    .line 62
    invoke-virtual {v0, v1, v2}, Lcom/google/gson/GsonBuilder;->registerTypeAdapter(Ljava/lang/reflect/Type;Ljava/lang/Object;)Lcom/google/gson/GsonBuilder;

    move-result-object v0

    const-class v1, Lcom/cuebiq/cuebiqsdk/model/wrapper/Wifi;

    new-instance v2, Lcom/cuebiq/cuebiqsdk/model/listener/WifiSerializer;

    invoke-direct {v2}, Lcom/cuebiq/cuebiqsdk/model/listener/WifiSerializer;-><init>()V

    .line 63
    invoke-virtual {v0, v1, v2}, Lcom/google/gson/GsonBuilder;->registerTypeAdapter(Ljava/lang/reflect/Type;Ljava/lang/Object;)Lcom/google/gson/GsonBuilder;

    move-result-object v0

    const-class v1, Lcom/cuebiq/cuebiqsdk/model/wrapper/BluetoothDevice;

    new-instance v2, Lcom/cuebiq/cuebiqsdk/model/listener/BluetoothDeviceSerializer;

    invoke-direct {v2}, Lcom/cuebiq/cuebiqsdk/model/listener/BluetoothDeviceSerializer;-><init>()V

    .line 64
    invoke-virtual {v0, v1, v2}, Lcom/google/gson/GsonBuilder;->registerTypeAdapter(Ljava/lang/reflect/Type;Ljava/lang/Object;)Lcom/google/gson/GsonBuilder;

    move-result-object v0

    .line 65
    invoke-virtual {v0}, Lcom/google/gson/GsonBuilder;->create()Lcom/google/gson/Gson;

    move-result-object v0

    sput-object v0, Lcom/cuebiq/cuebiqsdk/CuebiqSDKImpl;->GSON:Lcom/google/gson/Gson;

    .line 67
    const/4 v0, 0x0

    sput-boolean v0, Lcom/cuebiq/cuebiqsdk/CuebiqSDKImpl;->mLogEnabled:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Landroid/content/Context;J)V
    .locals 1
    .param p0, "x0"    # Landroid/content/Context;
    .param p1, "x1"    # J

    .prologue
    .line 53
    invoke-static {p0, p1, p2}, Lcom/cuebiq/cuebiqsdk/CuebiqSDKImpl;->activate(Landroid/content/Context;J)V

    return-void
.end method

.method private static activate(Landroid/content/Context;J)V
    .locals 11
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "timeIntervalMills"    # J

    .prologue
    const/4 v10, 0x0

    .line 191
    :try_start_0
    invoke-static {p0}, Lcom/cuebiq/cuebiqsdk/CuebiqSDKImpl;->getBeAudienceConfiguration(Landroid/content/Context;)Lcom/cuebiq/cuebiqsdk/model/config/Settings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/cuebiq/cuebiqsdk/model/config/Settings;->getAmvs()I

    move-result v1

    invoke-static {v1}, Lcom/cuebiq/cuebiqsdk/utils/Utils;->isAndroidVersionNotSupported(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 214
    :goto_0
    return-void

    .line 195
    :cond_0
    invoke-static {p0}, Lcom/cuebiq/cuebiqsdk/utils/Utils;->isOptedOut(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 196
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CuebiqSDK -> SDK Opteduot DISABLE, continue tracking... Mills: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/cuebiq/cuebiqsdk/CuebiqSDKImpl;->log(Ljava/lang/String;)V

    .line 198
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v7

    .line 199
    .local v7, "cal":Ljava/util/Calendar;
    new-instance v9, Landroid/content/Intent;

    const-class v1, Lcom/cuebiq/cuebiqsdk/receiver/CoverageReceiver;

    invoke-direct {v9, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 200
    .local v9, "intent":Landroid/content/Intent;
    const-string v1, "requestCode"

    const/16 v2, 0x6f

    invoke-virtual {v9, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 201
    const/16 v1, 0x6f

    const/high16 v2, 0x8000000

    invoke-static {p0, v1, v9, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    .line 203
    .local v6, "pi":Landroid/app/PendingIntent;
    const-string v1, "alarm"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 205
    .local v0, "alarm":Landroid/app/AlarmManager;
    invoke-virtual {v0, v6}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 206
    const/4 v1, 0x0

    invoke-virtual {v7}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    add-long/2addr v2, p1

    move-wide v4, p1

    invoke-virtual/range {v0 .. v6}, Landroid/app/AlarmManager;->setRepeating(IJJLandroid/app/PendingIntent;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 211
    .end local v0    # "alarm":Landroid/app/AlarmManager;
    .end local v6    # "pi":Landroid/app/PendingIntent;
    .end local v7    # "cal":Ljava/util/Calendar;
    .end local v9    # "intent":Landroid/content/Intent;
    :catch_0
    move-exception v8

    .line 212
    .local v8, "e":Ljava/lang/Throwable;
    new-instance v1, Lcom/cuebiq/cuebiqsdk/task/LogTask;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error during BeAudience Activation: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v8}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, p0, v2, v8}, Lcom/cuebiq/cuebiqsdk/task/LogTask;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Throwable;)V

    new-array v2, v10, [Ljava/lang/Void;

    invoke-virtual {v1, v2}, Lcom/cuebiq/cuebiqsdk/task/LogTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 208
    .end local v8    # "e":Ljava/lang/Throwable;
    :cond_1
    :try_start_1
    const-string v1, "CuebiqSDK -> SDK Opteduot ENABLE, shutdown tracking..."

    invoke-static {v1}, Lcom/cuebiq/cuebiqsdk/CuebiqSDKImpl;->log(Ljava/lang/String;)V

    .line 209
    invoke-static {p0}, Lcom/cuebiq/cuebiqsdk/CuebiqSDKImpl;->disableTracking(Landroid/content/Context;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public static activateImmediately(Landroid/content/Context;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 311
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/cuebiq/cuebiqsdk/receiver/CoverageReceiver;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 312
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "requestCode"

    const/16 v2, 0x6f

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 313
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 314
    return-void
.end method

.method public static activateLocationTracking(Landroid/content/Context;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 236
    invoke-static {p0}, Lcom/cuebiq/cuebiqsdk/CuebiqSDKImpl;->getBeAudienceConfiguration(Landroid/content/Context;)Lcom/cuebiq/cuebiqsdk/model/config/Settings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/cuebiq/cuebiqsdk/model/config/Settings;->getMina()J

    move-result-wide v0

    .line 237
    .local v0, "mills":J
    invoke-static {p0, v0, v1}, Lcom/cuebiq/cuebiqsdk/CuebiqSDKImpl;->activateLocationTracking(Landroid/content/Context;J)V

    .line 238
    return-void
.end method

.method public static activateLocationTracking(Landroid/content/Context;J)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "millis"    # J

    .prologue
    .line 241
    invoke-static {p0}, Lcom/cuebiq/cuebiqsdk/CuebiqSDKImpl;->getBeAudienceConfiguration(Landroid/content/Context;)Lcom/cuebiq/cuebiqsdk/model/config/Settings;

    move-result-object v0

    .line 243
    .local v0, "configuration":Lcom/cuebiq/cuebiqsdk/model/config/Settings;
    invoke-virtual {v0}, Lcom/cuebiq/cuebiqsdk/model/config/Settings;->getMina()J

    move-result-wide v2

    cmp-long v1, p1, v2

    if-gtz v1, :cond_0

    .line 244
    invoke-static {}, Lcom/cuebiq/cuebiqsdk/model/persistence/PersistenceManagerFactory;->get()Lcom/cuebiq/cuebiqsdk/model/persistence/PersistenceManager;

    move-result-object v1

    invoke-virtual {v0}, Lcom/cuebiq/cuebiqsdk/model/config/Settings;->getMina()J

    move-result-wide v2

    invoke-interface {v1, p0, v2, v3}, Lcom/cuebiq/cuebiqsdk/model/persistence/PersistenceManager;->setCurrentAcquisitionMills(Landroid/content/Context;J)V

    .line 245
    invoke-virtual {v0}, Lcom/cuebiq/cuebiqsdk/model/config/Settings;->getMina()J

    move-result-wide v2

    invoke-static {p0, v2, v3}, Lcom/cuebiq/cuebiqsdk/CuebiqSDKImpl;->activate(Landroid/content/Context;J)V

    .line 252
    :goto_0
    return-void

    .line 246
    :cond_0
    invoke-virtual {v0}, Lcom/cuebiq/cuebiqsdk/model/config/Settings;->getMaxa()J

    move-result-wide v2

    cmp-long v1, p1, v2

    if-ltz v1, :cond_1

    .line 247
    invoke-static {}, Lcom/cuebiq/cuebiqsdk/model/persistence/PersistenceManagerFactory;->get()Lcom/cuebiq/cuebiqsdk/model/persistence/PersistenceManager;

    move-result-object v1

    invoke-virtual {v0}, Lcom/cuebiq/cuebiqsdk/model/config/Settings;->getMaxa()J

    move-result-wide v2

    invoke-interface {v1, p0, v2, v3}, Lcom/cuebiq/cuebiqsdk/model/persistence/PersistenceManager;->setCurrentAcquisitionMills(Landroid/content/Context;J)V

    .line 248
    invoke-virtual {v0}, Lcom/cuebiq/cuebiqsdk/model/config/Settings;->getMaxa()J

    move-result-wide v2

    invoke-static {p0, v2, v3}, Lcom/cuebiq/cuebiqsdk/CuebiqSDKImpl;->activate(Landroid/content/Context;J)V

    goto :goto_0

    .line 250
    :cond_1
    invoke-static {p0, p1, p2}, Lcom/cuebiq/cuebiqsdk/CuebiqSDKImpl;->activate(Landroid/content/Context;J)V

    goto :goto_0
.end method

.method public static checkCoverageAndActivateIfOpened(Landroid/content/Context;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 124
    invoke-static {}, Lcom/cuebiq/cuebiqsdk/model/CoverageManager;->get()Lcom/cuebiq/cuebiqsdk/model/CoverageManager;

    move-result-object v0

    const/4 v1, 0x0

    new-instance v2, Lcom/cuebiq/cuebiqsdk/CuebiqSDKImpl$2;

    invoke-direct {v2, p0}, Lcom/cuebiq/cuebiqsdk/CuebiqSDKImpl$2;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p0, v1, v2}, Lcom/cuebiq/cuebiqsdk/model/CoverageManager;->checkCoverage(Landroid/content/Context;ZLcom/cuebiq/cuebiqsdk/model/CoverageManager$CoverageListener;)V

    .line 159
    return-void
.end method

.method public static collectCustomEvents(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "eventName"    # Ljava/lang/String;
    .param p2, "eventInfo1"    # Ljava/lang/String;
    .param p3, "eventInfo2"    # Ljava/lang/String;
    .param p4, "eventInfo3"    # Ljava/lang/String;
    .param p5, "eventInfo4"    # Ljava/lang/String;

    .prologue
    .line 267
    :try_start_0
    invoke-static {p0}, Lcom/cuebiq/cuebiqsdk/CuebiqSDKImpl;->getBeAudienceConfiguration(Landroid/content/Context;)Lcom/cuebiq/cuebiqsdk/model/config/Settings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cuebiq/cuebiqsdk/model/config/Settings;->getAmvs()I

    move-result v0

    invoke-static {v0}, Lcom/cuebiq/cuebiqsdk/utils/Utils;->isAndroidVersionNotSupported(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 304
    :goto_0
    return-void

    .line 271
    :cond_0
    if-nez p0, :cond_1

    .line 272
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "You must provide a description for your custom event."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 300
    :catch_0
    move-exception v7

    .line 301
    .local v7, "e":Ljava/lang/Throwable;
    invoke-virtual {v7}, Ljava/lang/Throwable;->printStackTrace()V

    .line 302
    new-instance v0, Lcom/cuebiq/cuebiqsdk/task/LogTask;

    invoke-virtual {v7}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1, v7}, Lcom/cuebiq/cuebiqsdk/task/LogTask;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/cuebiq/cuebiqsdk/task/LogTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 275
    .end local v7    # "e":Ljava/lang/Throwable;
    :cond_1
    :try_start_1
    invoke-static {p0}, Lcom/cuebiq/cuebiqsdk/utils/Utils;->isOptedOut(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 276
    const-string v0, "CuebiqSDK -> SDK is opted-out, events will not be tracked."

    invoke-static {v0}, Lcom/cuebiq/cuebiqsdk/CuebiqSDKImpl;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 280
    :cond_2
    const-string v0, "Custom Event -> Track custom event..."

    invoke-static {v0}, Lcom/cuebiq/cuebiqsdk/CuebiqSDKImpl;->log(Ljava/lang/String;)V

    .line 282
    new-instance v8, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v8, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v0, Lcom/cuebiq/cuebiqsdk/CuebiqSDKImpl$3;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/cuebiq/cuebiqsdk/CuebiqSDKImpl$3;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v8, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public static collectCustomPublisherID(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "publisherID"    # Ljava/lang/String;

    .prologue
    .line 307
    invoke-static {}, Lcom/cuebiq/cuebiqsdk/model/persistence/PersistenceManagerFactory;->get()Lcom/cuebiq/cuebiqsdk/model/persistence/PersistenceManager;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lcom/cuebiq/cuebiqsdk/model/persistence/PersistenceManager;->saveCustomPublisherID(Landroid/content/Context;Ljava/lang/String;)V

    .line 308
    return-void
.end method

.method public static disableTracking(Landroid/content/Context;)V
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 223
    :try_start_0
    new-instance v2, Landroid/content/Intent;

    const-class v4, Lcom/cuebiq/cuebiqsdk/receiver/CoverageReceiver;

    invoke-direct {v2, p0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 224
    .local v2, "intent":Landroid/content/Intent;
    const-string v4, "requestCode"

    const/16 v5, 0x6f

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 225
    const/16 v4, 0x6f

    const/high16 v5, 0x8000000

    invoke-static {p0, v4, v2, v5}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    .line 227
    .local v3, "pi":Landroid/app/PendingIntent;
    const-string v4, "alarm"

    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 228
    .local v0, "alarm":Landroid/app/AlarmManager;
    invoke-virtual {v0, v3}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 233
    .end local v0    # "alarm":Landroid/app/AlarmManager;
    .end local v2    # "intent":Landroid/content/Intent;
    .end local v3    # "pi":Landroid/app/PendingIntent;
    :goto_0
    return-void

    .line 229
    :catch_0
    move-exception v1

    .line 230
    .local v1, "e":Ljava/lang/Throwable;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 231
    new-instance v4, Lcom/cuebiq/cuebiqsdk/task/LogTask;

    const-string v5, "Error during CuebiqSDK Shutdown"

    invoke-direct {v4, p0, v5, v1}, Lcom/cuebiq/cuebiqsdk/task/LogTask;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Void;

    invoke-virtual {v4, v5}, Lcom/cuebiq/cuebiqsdk/task/LogTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method public static enableLogging()V
    .locals 1

    .prologue
    .line 171
    const/4 v0, 0x1

    sput-boolean v0, Lcom/cuebiq/cuebiqsdk/CuebiqSDKImpl;->mLogEnabled:Z

    .line 172
    return-void
.end method

.method public static getBeAudienceConfiguration(Landroid/content/Context;)Lcom/cuebiq/cuebiqsdk/model/config/Settings;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 180
    invoke-static {}, Lcom/cuebiq/cuebiqsdk/model/persistence/PersistenceManagerFactory;->get()Lcom/cuebiq/cuebiqsdk/model/persistence/PersistenceManager;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/cuebiq/cuebiqsdk/model/persistence/PersistenceManager;->retrieveBeAudienceConfiguration(Landroid/content/Context;)Lcom/cuebiq/cuebiqsdk/model/config/Settings;

    move-result-object v0

    return-object v0
.end method

.method public static getWorkerThread()Landroid/os/HandlerThread;
    .locals 1

    .prologue
    .line 317
    sget-object v0, Lcom/cuebiq/cuebiqsdk/CuebiqSDKImpl;->mHandlerThread:Landroid/os/HandlerThread;

    return-object v0
.end method

.method public static initialize(Landroid/content/Context;Ljava/lang/String;Lcom/cuebiq/cuebiqsdk/api/Environment;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "appKey"    # Ljava/lang/String;
    .param p2, "environment"    # Lcom/cuebiq/cuebiqsdk/api/Environment;

    .prologue
    .line 72
    invoke-static {p0}, Lcom/cuebiq/cuebiqsdk/CuebiqSDKImpl;->getBeAudienceConfiguration(Landroid/content/Context;)Lcom/cuebiq/cuebiqsdk/model/config/Settings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cuebiq/cuebiqsdk/model/config/Settings;->getAmvs()I

    move-result v0

    invoke-static {v0}, Lcom/cuebiq/cuebiqsdk/utils/Utils;->isAndroidVersionNotSupported(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 121
    :goto_0
    return-void

    .line 76
    :cond_0
    if-nez p0, :cond_1

    .line 77
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Initialize params mustn\'t be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 80
    :cond_1
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lcom/cuebiq/cuebiqsdk/task/GAIDRunnable;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    new-instance v3, Lcom/cuebiq/cuebiqsdk/CuebiqSDKImpl$1;

    invoke-direct {v3, p0}, Lcom/cuebiq/cuebiqsdk/CuebiqSDKImpl$1;-><init>(Landroid/content/Context;)V

    invoke-direct {v1, v2, v3}, Lcom/cuebiq/cuebiqsdk/task/GAIDRunnable;-><init>(Landroid/content/Context;Lcom/cuebiq/cuebiqsdk/task/GAIDRunnable$OnGAIDListener;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 96
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 97
    :cond_2
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "CuebiqSDK: AppKey must not be null or empty."

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 99
    :cond_3
    invoke-static {}, Lcom/cuebiq/cuebiqsdk/model/persistence/PersistenceManagerFactory;->get()Lcom/cuebiq/cuebiqsdk/model/persistence/PersistenceManager;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lcom/cuebiq/cuebiqsdk/model/persistence/PersistenceManager;->saveAppKey(Landroid/content/Context;Ljava/lang/String;)V

    .line 101
    invoke-static {p2}, Lcom/cuebiq/cuebiqsdk/api/ApiConfiguration;->setEnvironment(Lcom/cuebiq/cuebiqsdk/api/Environment;)V

    .line 103
    invoke-static {}, Lcom/cuebiq/cuebiqsdk/model/CoverageManager;->get()Lcom/cuebiq/cuebiqsdk/model/CoverageManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/cuebiq/cuebiqsdk/model/CoverageManager;->isCoverageOpened(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 104
    invoke-static {p0}, Lcom/cuebiq/cuebiqsdk/CuebiqSDKImpl;->checkCoverageAndActivateIfOpened(Landroid/content/Context;)V

    .line 107
    :cond_4
    invoke-static {p0}, Lcom/cuebiq/cuebiqsdk/utils/Utils;->isOptedOut(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_5

    invoke-static {}, Lcom/cuebiq/cuebiqsdk/model/CoverageManager;->get()Lcom/cuebiq/cuebiqsdk/model/CoverageManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/cuebiq/cuebiqsdk/model/CoverageManager;->isCoverageOpened(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 108
    invoke-static {}, Lcom/cuebiq/cuebiqsdk/model/persistence/PersistenceManagerFactory;->get()Lcom/cuebiq/cuebiqsdk/model/persistence/PersistenceManager;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/cuebiq/cuebiqsdk/model/persistence/PersistenceManager;->getCurrentAcquisitionMills(Landroid/content/Context;)J

    move-result-wide v0

    invoke-static {p0, v0, v1}, Lcom/cuebiq/cuebiqsdk/CuebiqSDKImpl;->activate(Landroid/content/Context;J)V

    .line 109
    invoke-static {p0}, Lcom/cuebiq/cuebiqsdk/CuebiqSDKImpl;->activateImmediately(Landroid/content/Context;)V

    .line 112
    :cond_5
    sget-object v0, Lcom/cuebiq/cuebiqsdk/CuebiqSDKImpl;->mHandlerThread:Landroid/os/HandlerThread;

    if-nez v0, :cond_6

    .line 113
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "CuebiqWorkerThread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/cuebiq/cuebiqsdk/CuebiqSDKImpl;->mHandlerThread:Landroid/os/HandlerThread;

    .line 116
    :cond_6
    sget-object v0, Lcom/cuebiq/cuebiqsdk/CuebiqSDKImpl;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->isAlive()Z

    move-result v0

    if-nez v0, :cond_7

    .line 117
    sget-object v0, Lcom/cuebiq/cuebiqsdk/CuebiqSDKImpl;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 120
    :cond_7
    const-string v0, "CuebiqSDK"

    const-string v1, "CuebiqSDK -> CuebiqSDK v3.0.4 initialized successfully!"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method public static log(Ljava/lang/String;)V
    .locals 1
    .param p0, "message"    # Ljava/lang/String;

    .prologue
    .line 162
    sget-boolean v0, Lcom/cuebiq/cuebiqsdk/CuebiqSDKImpl;->mLogEnabled:Z

    if-eqz v0, :cond_0

    .line 163
    invoke-static {p0}, Lcom/cuebiq/cuebiqsdk/utils/Logger;->log(Ljava/lang/String;)V

    .line 165
    :cond_0
    return-void
.end method

.method public static onRequestPermissionsResult(Landroid/content/Context;I[Ljava/lang/String;[I)V
    .locals 0
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "requestCode"    # I
    .param p2, "permissions"    # [Ljava/lang/String;
    .param p3, "grantResults"    # [I

    .prologue
    .line 321
    invoke-static {p0}, Lcom/cuebiq/cuebiqsdk/CuebiqSDKImpl;->checkCoverageAndActivateIfOpened(Landroid/content/Context;)V

    .line 322
    return-void
.end method

.method public static testIntegration(Landroid/content/Context;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 325
    const-string v0, "Cuebiq Integration"

    const-string v1, "==========================================================="

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 326
    const-string v0, "Cuebiq Integration"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Environment: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/cuebiq/cuebiqsdk/api/ApiConfiguration;->workingEnvironment:Lcom/cuebiq/cuebiqsdk/api/Environment;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 327
    const-string v0, "Cuebiq Integration"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AppKey: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/cuebiq/cuebiqsdk/model/persistence/PersistenceManagerFactory;->get()Lcom/cuebiq/cuebiqsdk/model/persistence/PersistenceManager;

    move-result-object v2

    invoke-interface {v2, p0}, Lcom/cuebiq/cuebiqsdk/model/persistence/PersistenceManager;->retrieveAppKey(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 328
    const-string v0, "Cuebiq Integration"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Location enabled: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p0}, Lcom/cuebiq/cuebiqsdk/utils/Utils;->isLocationEnabled(Landroid/content/Context;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 330
    invoke-static {p0}, Lcom/cuebiq/cuebiqsdk/utils/Utils;->isLocationEnabled(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 331
    const-string v0, "Cuebiq Integration"

    const-string v1, "Location disabled. Please enable it and retry the integration test."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 386
    :goto_0
    return-void

    .line 335
    :cond_0
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lcom/cuebiq/cuebiqsdk/task/GAIDRunnable;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    new-instance v3, Lcom/cuebiq/cuebiqsdk/CuebiqSDKImpl$4;

    invoke-direct {v3, p0}, Lcom/cuebiq/cuebiqsdk/CuebiqSDKImpl$4;-><init>(Landroid/content/Context;)V

    invoke-direct {v1, v2, v3}, Lcom/cuebiq/cuebiqsdk/task/GAIDRunnable;-><init>(Landroid/content/Context;Lcom/cuebiq/cuebiqsdk/task/GAIDRunnable$OnGAIDListener;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    goto :goto_0
.end method
