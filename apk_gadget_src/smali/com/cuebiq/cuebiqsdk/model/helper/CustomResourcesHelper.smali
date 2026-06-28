.class public Lcom/cuebiq/cuebiqsdk/model/helper/CustomResourcesHelper;
.super Ljava/lang/Object;
.source "CustomResourcesHelper.java"


# static fields
.field private static instance:Lcom/cuebiq/cuebiqsdk/model/helper/CustomResourcesHelper;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static get()Lcom/cuebiq/cuebiqsdk/model/helper/CustomResourcesHelper;
    .locals 1

    .prologue
    .line 59
    sget-object v0, Lcom/cuebiq/cuebiqsdk/model/helper/CustomResourcesHelper;->instance:Lcom/cuebiq/cuebiqsdk/model/helper/CustomResourcesHelper;

    if-nez v0, :cond_0

    .line 60
    new-instance v0, Lcom/cuebiq/cuebiqsdk/model/helper/CustomResourcesHelper;

    invoke-direct {v0}, Lcom/cuebiq/cuebiqsdk/model/helper/CustomResourcesHelper;-><init>()V

    sput-object v0, Lcom/cuebiq/cuebiqsdk/model/helper/CustomResourcesHelper;->instance:Lcom/cuebiq/cuebiqsdk/model/helper/CustomResourcesHelper;

    .line 62
    :cond_0
    sget-object v0, Lcom/cuebiq/cuebiqsdk/model/helper/CustomResourcesHelper;->instance:Lcom/cuebiq/cuebiqsdk/model/helper/CustomResourcesHelper;

    return-object v0
.end method


# virtual methods
.method public trackGeoStats(Landroid/content/Context;Z)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "isAfterCoverage"    # Z

    .prologue
    .line 26
    invoke-static {p1, p2}, Lcom/cuebiq/cuebiqsdk/model/wrapper/GeoLocationStats;->build(Landroid/content/Context;Z)Lcom/cuebiq/cuebiqsdk/model/wrapper/GeoLocationStats;

    move-result-object v0

    .line 28
    .local v0, "stats":Lcom/cuebiq/cuebiqsdk/model/wrapper/GeoLocationStats;
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    new-instance v2, Lcom/cuebiq/cuebiqsdk/task/GAIDRunnable;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    new-instance v4, Lcom/cuebiq/cuebiqsdk/model/helper/CustomResourcesHelper$1;

    invoke-direct {v4, p0, v0}, Lcom/cuebiq/cuebiqsdk/model/helper/CustomResourcesHelper$1;-><init>(Lcom/cuebiq/cuebiqsdk/model/helper/CustomResourcesHelper;Lcom/cuebiq/cuebiqsdk/model/wrapper/GeoLocationStats;)V

    invoke-direct {v2, v3, v4}, Lcom/cuebiq/cuebiqsdk/task/GAIDRunnable;-><init>(Landroid/content/Context;Lcom/cuebiq/cuebiqsdk/task/GAIDRunnable$OnGAIDListener;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 56
    return-void
.end method
