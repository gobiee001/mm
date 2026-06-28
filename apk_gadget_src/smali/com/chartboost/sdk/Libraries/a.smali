.class public Lcom/chartboost/sdk/Libraries/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:I

.field public b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 6

    .prologue
    const/4 v5, -0x1

    const/4 v2, 0x0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput v5, p0, Lcom/chartboost/sdk/Libraries/a;->a:I

    .line 20
    iput-object v2, p0, Lcom/chartboost/sdk/Libraries/a;->b:Ljava/lang/String;

    .line 25
    :try_start_0
    invoke-static {}, Lcom/chartboost/sdk/impl/m;->a()Lcom/chartboost/sdk/impl/m;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/chartboost/sdk/impl/m;->a(Landroid/content/Context;)Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/google/android/gms/common/GooglePlayServicesRepairableException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/google/android/gms/common/GooglePlayServicesNotAvailableException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_4

    move-result-object v0

    move-object v1, v0

    .line 40
    :goto_0
    if-nez v1, :cond_0

    .line 41
    iput v5, p0, Lcom/chartboost/sdk/Libraries/a;->a:I

    .line 42
    iput-object v2, p0, Lcom/chartboost/sdk/Libraries/a;->b:Ljava/lang/String;

    .line 49
    :goto_1
    return-void

    .line 26
    :catch_0
    move-exception v0

    move-object v1, v2

    .line 39
    goto :goto_0

    .line 29
    :catch_1
    move-exception v0

    move-object v1, v2

    .line 39
    goto :goto_0

    .line 31
    :catch_2
    move-exception v0

    move-object v1, v2

    .line 39
    goto :goto_0

    .line 33
    :catch_3
    move-exception v0

    .line 34
    const-string v1, "ContentValues"

    const-string v3, "Security Exception when retrieving AD id"

    invoke-static {v1, v3, v0}, Lcom/chartboost/sdk/Libraries/CBLogging;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v1, v2

    .line 39
    goto :goto_0

    .line 35
    :catch_4
    move-exception v0

    .line 37
    const-string v1, "ContentValues"

    const-string v3, "General Exception when retrieving AD id"

    invoke-static {v1, v3, v0}, Lcom/chartboost/sdk/Libraries/CBLogging;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 38
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v3, "getAdvertisingIdClientInfo"

    new-instance v4, Ljava/lang/Exception;

    invoke-direct {v4, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    invoke-static {v1, v3, v4}, Lcom/chartboost/sdk/Tracking/a;->a(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Exception;)V

    move-object v1, v2

    goto :goto_0

    .line 44
    :cond_0
    invoke-virtual {v1}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;->isLimitAdTrackingEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_2
    iput v0, p0, Lcom/chartboost/sdk/Libraries/a;->a:I

    .line 47
    invoke-virtual {v1}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;->getId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/chartboost/sdk/Libraries/a;->b:Ljava/lang/String;

    goto :goto_1

    .line 44
    :cond_1
    const/4 v0, 0x0

    goto :goto_2
.end method
