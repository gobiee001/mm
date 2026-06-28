.class Lcom/cuebiq/cuebiqsdk/model/helper/CustomResourcesHelper$1;
.super Ljava/lang/Object;
.source "CustomResourcesHelper.java"

# interfaces
.implements Lcom/cuebiq/cuebiqsdk/task/GAIDRunnable$OnGAIDListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cuebiq/cuebiqsdk/model/helper/CustomResourcesHelper;->trackGeoStats(Landroid/content/Context;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cuebiq/cuebiqsdk/model/helper/CustomResourcesHelper;

.field final synthetic val$stats:Lcom/cuebiq/cuebiqsdk/model/wrapper/GeoLocationStats;


# direct methods
.method constructor <init>(Lcom/cuebiq/cuebiqsdk/model/helper/CustomResourcesHelper;Lcom/cuebiq/cuebiqsdk/model/wrapper/GeoLocationStats;)V
    .locals 0
    .param p1, "this$0"    # Lcom/cuebiq/cuebiqsdk/model/helper/CustomResourcesHelper;

    .prologue
    .line 28
    iput-object p1, p0, Lcom/cuebiq/cuebiqsdk/model/helper/CustomResourcesHelper$1;->this$0:Lcom/cuebiq/cuebiqsdk/model/helper/CustomResourcesHelper;

    iput-object p2, p0, Lcom/cuebiq/cuebiqsdk/model/helper/CustomResourcesHelper$1;->val$stats:Lcom/cuebiq/cuebiqsdk/model/wrapper/GeoLocationStats;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError()V
    .locals 1

    .prologue
    .line 53
    const-string v0, "CustomResourcesHelper -> Failed to retrieve GoogleAdvertisingID"

    invoke-static {v0}, Lcom/cuebiq/cuebiqsdk/CuebiqSDKImpl;->log(Ljava/lang/String;)V

    .line 54
    return-void
.end method

.method public onGoogleAdvID(Ljava/lang/String;Z)V
    .locals 3
    .param p1, "googleAdvertisingID"    # Ljava/lang/String;
    .param p2, "isLimitedADTracking"    # Z

    .prologue
    .line 31
    if-eqz p1, :cond_0

    const-string v1, ""

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 32
    iget-object v1, p0, Lcom/cuebiq/cuebiqsdk/model/helper/CustomResourcesHelper$1;->val$stats:Lcom/cuebiq/cuebiqsdk/model/wrapper/GeoLocationStats;

    invoke-virtual {v1, p1}, Lcom/cuebiq/cuebiqsdk/model/wrapper/GeoLocationStats;->setGoogleAid(Ljava/lang/String;)V

    .line 33
    iget-object v1, p0, Lcom/cuebiq/cuebiqsdk/model/helper/CustomResourcesHelper$1;->val$stats:Lcom/cuebiq/cuebiqsdk/model/wrapper/GeoLocationStats;

    invoke-virtual {v1, p2}, Lcom/cuebiq/cuebiqsdk/model/wrapper/GeoLocationStats;->setIsGAIDOptout(Z)V

    .line 34
    invoke-static {}, Lcom/cuebiq/cuebiqsdk/injection/Injection;->provideNetworkLayer()Lcom/cuebiq/cuebiqsdk/model/manager/NetworkLayer;

    move-result-object v0

    .line 35
    .local v0, "networkLayer":Lcom/cuebiq/cuebiqsdk/model/manager/NetworkLayer;
    new-instance v1, Lcom/cuebiq/cuebiqsdk/api/GeoLocationRequest;

    iget-object v2, p0, Lcom/cuebiq/cuebiqsdk/model/helper/CustomResourcesHelper$1;->val$stats:Lcom/cuebiq/cuebiqsdk/model/wrapper/GeoLocationStats;

    invoke-direct {v1, v2}, Lcom/cuebiq/cuebiqsdk/api/GeoLocationRequest;-><init>(Lcom/cuebiq/cuebiqsdk/model/wrapper/GeoLocationStats;)V

    new-instance v2, Lcom/cuebiq/cuebiqsdk/model/helper/CustomResourcesHelper$1$1;

    invoke-direct {v2, p0}, Lcom/cuebiq/cuebiqsdk/model/helper/CustomResourcesHelper$1$1;-><init>(Lcom/cuebiq/cuebiqsdk/model/helper/CustomResourcesHelper$1;)V

    invoke-virtual {v0, v1, v2}, Lcom/cuebiq/cuebiqsdk/model/manager/NetworkLayer;->callAsync(Lcom/cuebiq/cuebiqsdk/api/CuebiqRequest;Lokhttp3/Callback;)V

    .line 49
    .end local v0    # "networkLayer":Lcom/cuebiq/cuebiqsdk/model/manager/NetworkLayer;
    :cond_0
    return-void
.end method
