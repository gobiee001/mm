.class public Lcom/cuebiq/cuebiqsdk/task/GAIDRunnable;
.super Ljava/lang/Object;
.source "GAIDRunnable.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cuebiq/cuebiqsdk/task/GAIDRunnable$GAIDHandler;,
        Lcom/cuebiq/cuebiqsdk/task/GAIDRunnable$OnGAIDListener;
    }
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mHandler:Lcom/cuebiq/cuebiqsdk/task/GAIDRunnable$GAIDHandler;

.field private final mOnGAIDListener:Lcom/cuebiq/cuebiqsdk/task/GAIDRunnable$OnGAIDListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/cuebiq/cuebiqsdk/task/GAIDRunnable$OnGAIDListener;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "listener"    # Lcom/cuebiq/cuebiqsdk/task/GAIDRunnable$OnGAIDListener;

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/cuebiq/cuebiqsdk/task/GAIDRunnable;->mContext:Landroid/content/Context;

    .line 33
    iput-object p2, p0, Lcom/cuebiq/cuebiqsdk/task/GAIDRunnable;->mOnGAIDListener:Lcom/cuebiq/cuebiqsdk/task/GAIDRunnable$OnGAIDListener;

    .line 34
    new-instance v0, Lcom/cuebiq/cuebiqsdk/task/GAIDRunnable$GAIDHandler;

    invoke-direct {v0, p0}, Lcom/cuebiq/cuebiqsdk/task/GAIDRunnable$GAIDHandler;-><init>(Lcom/cuebiq/cuebiqsdk/task/GAIDRunnable;)V

    iput-object v0, p0, Lcom/cuebiq/cuebiqsdk/task/GAIDRunnable;->mHandler:Lcom/cuebiq/cuebiqsdk/task/GAIDRunnable$GAIDHandler;

    .line 35
    return-void
.end method

.method static synthetic access$000(Lcom/cuebiq/cuebiqsdk/task/GAIDRunnable;Landroid/os/Message;)V
    .locals 0
    .param p0, "x0"    # Lcom/cuebiq/cuebiqsdk/task/GAIDRunnable;
    .param p1, "x1"    # Landroid/os/Message;

    .prologue
    .line 20
    invoke-direct {p0, p1}, Lcom/cuebiq/cuebiqsdk/task/GAIDRunnable;->handleSuccess(Landroid/os/Message;)V

    return-void
.end method

.method private handleSuccess(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 38
    iget v1, p1, Landroid/os/Message;->what:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 39
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/cuebiq/cuebiqsdk/utils/AdvertisingIdClient$AdInfo;

    .line 40
    .local v0, "adInfo":Lcom/cuebiq/cuebiqsdk/utils/AdvertisingIdClient$AdInfo;
    iget-object v1, p0, Lcom/cuebiq/cuebiqsdk/task/GAIDRunnable;->mOnGAIDListener:Lcom/cuebiq/cuebiqsdk/task/GAIDRunnable$OnGAIDListener;

    invoke-virtual {v0}, Lcom/cuebiq/cuebiqsdk/utils/AdvertisingIdClient$AdInfo;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/cuebiq/cuebiqsdk/utils/AdvertisingIdClient$AdInfo;->isLimitAdTrackingEnabled()Z

    move-result v3

    invoke-interface {v1, v2, v3}, Lcom/cuebiq/cuebiqsdk/task/GAIDRunnable$OnGAIDListener;->onGoogleAdvID(Ljava/lang/String;Z)V

    .line 44
    .end local v0    # "adInfo":Lcom/cuebiq/cuebiqsdk/utils/AdvertisingIdClient$AdInfo;
    :goto_0
    return-void

    .line 42
    :cond_0
    iget-object v1, p0, Lcom/cuebiq/cuebiqsdk/task/GAIDRunnable;->mOnGAIDListener:Lcom/cuebiq/cuebiqsdk/task/GAIDRunnable$OnGAIDListener;

    invoke-interface {v1}, Lcom/cuebiq/cuebiqsdk/task/GAIDRunnable$OnGAIDListener;->onError()V

    goto :goto_0
.end method


# virtual methods
.method public run()V
    .locals 15

    .prologue
    .line 48
    const/16 v11, 0xa

    invoke-static {v11}, Landroid/os/Process;->setThreadPriority(I)V

    .line 54
    :try_start_0
    const-string v11, "com.google.android.gms.ads.identifier.AdvertisingIdClient"

    invoke-static {v11}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 55
    .local v0, "adIdClientClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v11, "getAdvertisingIdInfo"

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Class;

    const/4 v13, 0x0

    const-class v14, Landroid/content/Context;

    aput-object v14, v12, v13

    invoke-virtual {v0, v11, v12}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    .line 56
    .local v5, "getAdvertisingIdInfoMethod":Ljava/lang/reflect/Method;
    const/4 v11, 0x0

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    iget-object v14, p0, Lcom/cuebiq/cuebiqsdk/task/GAIDRunnable;->mContext:Landroid/content/Context;

    aput-object v14, v12, v13

    invoke-virtual {v5, v11, v12}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    .line 58
    .local v10, "o":Ljava/lang/Object;
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v11

    const-string v12, "isLimitAdTrackingEnabled"

    const/4 v13, 0x0

    new-array v13, v13, [Ljava/lang/Class;

    invoke-virtual {v11, v12, v13}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v9

    .line 59
    .local v9, "isLimitAdTrackingEnabledMethod":Ljava/lang/reflect/Method;
    const/4 v11, 0x0

    new-array v11, v11, [Ljava/lang/Object;

    invoke-virtual {v9, v10, v11}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Boolean;

    .line 60
    .local v8, "isGoogleAdvDisabled":Ljava/lang/Boolean;
    invoke-static {}, Lcom/cuebiq/cuebiqsdk/model/persistence/PersistenceManagerFactory;->get()Lcom/cuebiq/cuebiqsdk/model/persistence/PersistenceManager;

    move-result-object v11

    iget-object v12, p0, Lcom/cuebiq/cuebiqsdk/task/GAIDRunnable;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v13

    invoke-interface {v11, v12, v13}, Lcom/cuebiq/cuebiqsdk/model/persistence/PersistenceManager;->setIsGAIDDisabled(Landroid/content/Context;Z)V

    .line 61
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "GAI Checker -> GAID Disabled: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/cuebiq/cuebiqsdk/CuebiqSDKImpl;->log(Ljava/lang/String;)V

    .line 63
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v11

    const-string v12, "getId"

    const/4 v13, 0x0

    new-array v13, v13, [Ljava/lang/Class;

    invoke-virtual {v11, v12, v13}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    .line 64
    .local v6, "getIdMethod":Ljava/lang/reflect/Method;
    const/4 v11, 0x0

    new-array v11, v11, [Ljava/lang/Object;

    invoke-virtual {v6, v10, v11}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 65
    .local v7, "googleAdvID":Ljava/lang/String;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "GAI Checker -> GAID: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/cuebiq/cuebiqsdk/CuebiqSDKImpl;->log(Ljava/lang/String;)V

    .line 67
    iget-object v11, p0, Lcom/cuebiq/cuebiqsdk/task/GAIDRunnable;->mOnGAIDListener:Lcom/cuebiq/cuebiqsdk/task/GAIDRunnable$OnGAIDListener;

    if-eqz v11, :cond_1

    .line 68
    iget-object v11, p0, Lcom/cuebiq/cuebiqsdk/task/GAIDRunnable;->mHandler:Lcom/cuebiq/cuebiqsdk/task/GAIDRunnable$GAIDHandler;

    if-eqz v11, :cond_0

    .line 69
    iget-object v11, p0, Lcom/cuebiq/cuebiqsdk/task/GAIDRunnable;->mHandler:Lcom/cuebiq/cuebiqsdk/task/GAIDRunnable$GAIDHandler;

    const/4 v12, 0x1

    new-instance v13, Lcom/cuebiq/cuebiqsdk/utils/AdvertisingIdClient$AdInfo;

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v14

    invoke-direct {v13, v7, v14}, Lcom/cuebiq/cuebiqsdk/utils/AdvertisingIdClient$AdInfo;-><init>(Ljava/lang/String;Z)V

    invoke-virtual {v11, v12, v13}, Lcom/cuebiq/cuebiqsdk/task/GAIDRunnable$GAIDHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 70
    .local v2, "completeMessage":Landroid/os/Message;
    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 104
    .end local v0    # "adIdClientClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v2    # "completeMessage":Landroid/os/Message;
    .end local v5    # "getAdvertisingIdInfoMethod":Ljava/lang/reflect/Method;
    .end local v6    # "getIdMethod":Ljava/lang/reflect/Method;
    .end local v7    # "googleAdvID":Ljava/lang/String;
    .end local v8    # "isGoogleAdvDisabled":Ljava/lang/Boolean;
    .end local v9    # "isLimitAdTrackingEnabledMethod":Ljava/lang/reflect/Method;
    .end local v10    # "o":Ljava/lang/Object;
    :cond_0
    :goto_0
    return-void

    .line 74
    :catch_0
    move-exception v3

    .line 75
    .local v3, "e":Ljava/lang/Throwable;
    const-string v11, "GAI Checker -> Google Play Services not available"

    invoke-static {v11}, Lcom/cuebiq/cuebiqsdk/CuebiqSDKImpl;->log(Ljava/lang/String;)V

    .line 76
    const-string v11, "GAI Checker -> Retrieve GAI from Google Play Store App"

    invoke-static {v11}, Lcom/cuebiq/cuebiqsdk/CuebiqSDKImpl;->log(Ljava/lang/String;)V

    .line 79
    :try_start_1
    iget-object v11, p0, Lcom/cuebiq/cuebiqsdk/task/GAIDRunnable;->mContext:Landroid/content/Context;

    invoke-static {v11}, Lcom/cuebiq/cuebiqsdk/utils/AdvertisingIdClient;->getAdvertisingIdInfo(Landroid/content/Context;)Lcom/cuebiq/cuebiqsdk/utils/AdvertisingIdClient$AdInfo;

    move-result-object v1

    .line 80
    .local v1, "adInfo":Lcom/cuebiq/cuebiqsdk/utils/AdvertisingIdClient$AdInfo;
    invoke-virtual {v1}, Lcom/cuebiq/cuebiqsdk/utils/AdvertisingIdClient$AdInfo;->isLimitAdTrackingEnabled()Z

    move-result v8

    .line 82
    .local v8, "isGoogleAdvDisabled":Z
    invoke-static {}, Lcom/cuebiq/cuebiqsdk/model/persistence/PersistenceManagerFactory;->get()Lcom/cuebiq/cuebiqsdk/model/persistence/PersistenceManager;

    move-result-object v11

    iget-object v12, p0, Lcom/cuebiq/cuebiqsdk/task/GAIDRunnable;->mContext:Landroid/content/Context;

    invoke-interface {v11, v12, v8}, Lcom/cuebiq/cuebiqsdk/model/persistence/PersistenceManager;->setIsGAIDDisabled(Landroid/content/Context;Z)V

    .line 83
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "GAI Checker -> GAI Disabled: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/cuebiq/cuebiqsdk/CuebiqSDKImpl;->log(Ljava/lang/String;)V

    .line 85
    iget-object v11, p0, Lcom/cuebiq/cuebiqsdk/task/GAIDRunnable;->mOnGAIDListener:Lcom/cuebiq/cuebiqsdk/task/GAIDRunnable$OnGAIDListener;

    if-eqz v11, :cond_1

    .line 86
    iget-object v11, p0, Lcom/cuebiq/cuebiqsdk/task/GAIDRunnable;->mHandler:Lcom/cuebiq/cuebiqsdk/task/GAIDRunnable$GAIDHandler;

    if-eqz v11, :cond_0

    .line 87
    iget-object v11, p0, Lcom/cuebiq/cuebiqsdk/task/GAIDRunnable;->mHandler:Lcom/cuebiq/cuebiqsdk/task/GAIDRunnable$GAIDHandler;

    const/4 v12, 0x1

    invoke-virtual {v11, v12, v1}, Lcom/cuebiq/cuebiqsdk/task/GAIDRunnable$GAIDHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 88
    .restart local v2    # "completeMessage":Landroid/os/Message;
    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 92
    .end local v1    # "adInfo":Lcom/cuebiq/cuebiqsdk/utils/AdvertisingIdClient$AdInfo;
    .end local v2    # "completeMessage":Landroid/os/Message;
    .end local v8    # "isGoogleAdvDisabled":Z
    :catch_1
    move-exception v4

    .line 93
    .local v4, "ex":Ljava/lang/Throwable;
    const-string v11, "GAI Checker -> Google Play Store App not available"

    invoke-static {v11}, Lcom/cuebiq/cuebiqsdk/CuebiqSDKImpl;->log(Ljava/lang/String;)V

    .line 94
    invoke-static {}, Lcom/cuebiq/cuebiqsdk/model/persistence/PersistenceManagerFactory;->get()Lcom/cuebiq/cuebiqsdk/model/persistence/PersistenceManager;

    move-result-object v11

    iget-object v12, p0, Lcom/cuebiq/cuebiqsdk/task/GAIDRunnable;->mContext:Landroid/content/Context;

    const/4 v13, 0x0

    invoke-interface {v11, v12, v13}, Lcom/cuebiq/cuebiqsdk/model/persistence/PersistenceManager;->setIsGAIDDisabled(Landroid/content/Context;Z)V

    .line 98
    .end local v3    # "e":Ljava/lang/Throwable;
    .end local v4    # "ex":Ljava/lang/Throwable;
    :cond_1
    iget-object v11, p0, Lcom/cuebiq/cuebiqsdk/task/GAIDRunnable;->mOnGAIDListener:Lcom/cuebiq/cuebiqsdk/task/GAIDRunnable$OnGAIDListener;

    if-eqz v11, :cond_0

    .line 99
    iget-object v11, p0, Lcom/cuebiq/cuebiqsdk/task/GAIDRunnable;->mHandler:Lcom/cuebiq/cuebiqsdk/task/GAIDRunnable$GAIDHandler;

    if-eqz v11, :cond_0

    .line 100
    iget-object v11, p0, Lcom/cuebiq/cuebiqsdk/task/GAIDRunnable;->mHandler:Lcom/cuebiq/cuebiqsdk/task/GAIDRunnable$GAIDHandler;

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-virtual {v11, v12, v13}, Lcom/cuebiq/cuebiqsdk/task/GAIDRunnable$GAIDHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 101
    .restart local v2    # "completeMessage":Landroid/os/Message;
    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method
