.class public Lcom/mopub/mobileads/ChartboostShared;
.super Ljava/lang/Object;
.source "ChartboostShared.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mopub/mobileads/ChartboostShared$ChartboostSingletonDelegate;
    }
.end annotation


# static fields
.field public static final APP_ID_KEY:Ljava/lang/String; = "appId"

.field public static final APP_SIGNATURE_KEY:Ljava/lang/String; = "appSignature"

.field public static final LOCATION_DEFAULT:Ljava/lang/String; = "Default"

.field public static final LOCATION_KEY:Ljava/lang/String; = "location"

.field private static mAppId:Ljava/lang/String;

.field private static mAppSignature:Ljava/lang/String;

.field private static volatile sDelegate:Lcom/mopub/mobileads/ChartboostShared$ChartboostSingletonDelegate;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    new-instance v0, Lcom/mopub/mobileads/ChartboostShared$ChartboostSingletonDelegate;

    invoke-direct {v0}, Lcom/mopub/mobileads/ChartboostShared$ChartboostSingletonDelegate;-><init>()V

    sput-object v0, Lcom/mopub/mobileads/ChartboostShared;->sDelegate:Lcom/mopub/mobileads/ChartboostShared$ChartboostSingletonDelegate;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 97
    return-void
.end method

.method public static getDelegate()Lcom/mopub/mobileads/ChartboostShared$ChartboostSingletonDelegate;
    .locals 1

    .prologue
    .line 90
    sget-object v0, Lcom/mopub/mobileads/ChartboostShared;->sDelegate:Lcom/mopub/mobileads/ChartboostShared$ChartboostSingletonDelegate;

    return-object v0
.end method

.method public static declared-synchronized initializeSdk(Landroid/app/Activity;Ljava/util/Map;)Z
    .locals 6
    .param p0, "launcherActivity"    # Landroid/app/Activity;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p1, "serverExtras":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 51
    const-class v4, Lcom/mopub/mobileads/ChartboostShared;

    monitor-enter v4

    :try_start_0
    invoke-static {p0}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 52
    invoke-static {p1}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 55
    const-string v5, "appId"

    invoke-interface {p1, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 56
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Chartboost rewarded video initialization failed due to missing application ID."

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 51
    :catchall_0
    move-exception v2

    monitor-exit v4

    throw v2

    .line 60
    :cond_0
    :try_start_1
    const-string v5, "appSignature"

    invoke-interface {p1, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 61
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Chartboost rewarded video initialization failed due to missing application signature."

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 65
    :cond_1
    const-string v5, "appId"

    invoke-interface {p1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 66
    .local v0, "appId":Ljava/lang/String;
    const-string v5, "appSignature"

    invoke-interface {p1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 68
    .local v1, "appSignature":Ljava/lang/String;
    sget-object v5, Lcom/mopub/mobileads/ChartboostShared;->mAppId:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    sget-object v5, Lcom/mopub/mobileads/ChartboostShared;->mAppSignature:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v5

    if-eqz v5, :cond_2

    .line 85
    :goto_0
    monitor-exit v4

    return v2

    .line 73
    :cond_2
    :try_start_2
    sput-object v0, Lcom/mopub/mobileads/ChartboostShared;->mAppId:Ljava/lang/String;

    .line 74
    sput-object v1, Lcom/mopub/mobileads/ChartboostShared;->mAppSignature:Ljava/lang/String;

    .line 77
    sget-object v2, Lcom/mopub/mobileads/ChartboostShared;->mAppId:Ljava/lang/String;

    sget-object v5, Lcom/mopub/mobileads/ChartboostShared;->mAppSignature:Ljava/lang/String;

    invoke-static {p0, v2, v5}, Lcom/chartboost/sdk/Chartboost;->startWithAppId(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    sget-object v2, Lcom/chartboost/sdk/Chartboost$CBMediation;->CBMediationMoPub:Lcom/chartboost/sdk/Chartboost$CBMediation;

    const-string v5, "4.19.0"

    invoke-static {v2, v5}, Lcom/chartboost/sdk/Chartboost;->setMediation(Lcom/chartboost/sdk/Chartboost$CBMediation;Ljava/lang/String;)V

    .line 79
    sget-object v2, Lcom/mopub/mobileads/ChartboostShared;->sDelegate:Lcom/mopub/mobileads/ChartboostShared$ChartboostSingletonDelegate;

    invoke-static {v2}, Lcom/chartboost/sdk/Chartboost;->setDelegate(Lcom/chartboost/sdk/ChartboostDelegate;)V

    .line 80
    const/4 v2, 0x1

    invoke-static {v2}, Lcom/chartboost/sdk/Chartboost;->setShouldRequestInterstitialsInFirstSession(Z)V

    .line 81
    const/4 v2, 0x0

    invoke-static {v2}, Lcom/chartboost/sdk/Chartboost;->setAutoCacheAds(Z)V

    .line 82
    const/4 v2, 0x0

    invoke-static {v2}, Lcom/chartboost/sdk/Chartboost;->setShouldDisplayLoadingViewForMoreApps(Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move v2, v3

    .line 85
    goto :goto_0
.end method
