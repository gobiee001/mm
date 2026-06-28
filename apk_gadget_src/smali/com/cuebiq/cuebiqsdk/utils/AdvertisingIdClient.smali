.class public Lcom/cuebiq/cuebiqsdk/utils/AdvertisingIdClient;
.super Ljava/lang/Object;
.source "AdvertisingIdClient.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cuebiq/cuebiqsdk/utils/AdvertisingIdClient$AdvertisingInterface;,
        Lcom/cuebiq/cuebiqsdk/utils/AdvertisingIdClient$AdvertisingConnection;,
        Lcom/cuebiq/cuebiqsdk/utils/AdvertisingIdClient$AdInfo;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    return-void
.end method

.method public static getAdvertisingIdInfo(Landroid/content/Context;)Lcom/cuebiq/cuebiqsdk/utils/AdvertisingIdClient$AdInfo;
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 42
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v5

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v6

    if-ne v5, v6, :cond_0

    .line 43
    new-instance v5, Ljava/lang/IllegalStateException;

    const-string v6, "Cannot be called from the main thread"

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 46
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 47
    .local v4, "pm":Landroid/content/pm/PackageManager;
    const-string v5, "com.android.vending"

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 52
    new-instance v1, Lcom/cuebiq/cuebiqsdk/utils/AdvertisingIdClient$AdvertisingConnection;

    const/4 v5, 0x0

    invoke-direct {v1, v5}, Lcom/cuebiq/cuebiqsdk/utils/AdvertisingIdClient$AdvertisingConnection;-><init>(Lcom/cuebiq/cuebiqsdk/utils/AdvertisingIdClient$1;)V

    .line 53
    .local v1, "connection":Lcom/cuebiq/cuebiqsdk/utils/AdvertisingIdClient$AdvertisingConnection;
    new-instance v3, Landroid/content/Intent;

    const-string v5, "com.google.android.gms.ads.identifier.service.START"

    invoke-direct {v3, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 54
    .local v3, "intent":Landroid/content/Intent;
    const-string v5, "com.google.android.gms"

    invoke-virtual {v3, v5}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 56
    const/4 v5, 0x1

    :try_start_1
    invoke-virtual {p0, v3, v1, v5}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 57
    new-instance v0, Lcom/cuebiq/cuebiqsdk/utils/AdvertisingIdClient$AdvertisingInterface;

    invoke-virtual {v1}, Lcom/cuebiq/cuebiqsdk/utils/AdvertisingIdClient$AdvertisingConnection;->getBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-direct {v0, v5}, Lcom/cuebiq/cuebiqsdk/utils/AdvertisingIdClient$AdvertisingInterface;-><init>(Landroid/os/IBinder;)V

    .line 58
    .local v0, "adInterface":Lcom/cuebiq/cuebiqsdk/utils/AdvertisingIdClient$AdvertisingInterface;
    new-instance v5, Lcom/cuebiq/cuebiqsdk/utils/AdvertisingIdClient$AdInfo;

    invoke-virtual {v0}, Lcom/cuebiq/cuebiqsdk/utils/AdvertisingIdClient$AdvertisingInterface;->getId()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    invoke-virtual {v0, v7}, Lcom/cuebiq/cuebiqsdk/utils/AdvertisingIdClient$AdvertisingInterface;->isLimitAdTrackingEnabled(Z)Z

    move-result v7

    invoke-direct {v5, v6, v7}, Lcom/cuebiq/cuebiqsdk/utils/AdvertisingIdClient$AdInfo;-><init>(Ljava/lang/String;Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 61
    invoke-virtual {p0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    return-object v5

    .line 48
    .end local v0    # "adInterface":Lcom/cuebiq/cuebiqsdk/utils/AdvertisingIdClient$AdvertisingInterface;
    .end local v1    # "connection":Lcom/cuebiq/cuebiqsdk/utils/AdvertisingIdClient$AdvertisingConnection;
    .end local v3    # "intent":Landroid/content/Intent;
    .end local v4    # "pm":Landroid/content/pm/PackageManager;
    :catch_0
    move-exception v2

    .line 49
    .local v2, "e":Ljava/lang/Exception;
    throw v2

    .line 61
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v1    # "connection":Lcom/cuebiq/cuebiqsdk/utils/AdvertisingIdClient$AdvertisingConnection;
    .restart local v3    # "intent":Landroid/content/Intent;
    .restart local v4    # "pm":Landroid/content/pm/PackageManager;
    :cond_1
    invoke-virtual {p0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 63
    new-instance v5, Ljava/io/IOException;

    const-string v6, "Google Play connection failed"

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 61
    :catchall_0
    move-exception v5

    invoke-virtual {p0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    throw v5
.end method
