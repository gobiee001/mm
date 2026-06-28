.class Lcom/supersonic/mediationsdk/InterstitialManager$1;
.super Ljava/lang/Object;
.source "InterstitialManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/supersonic/mediationsdk/InterstitialManager;->initInterstitial(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/supersonic/mediationsdk/InterstitialManager;


# direct methods
.method constructor <init>(Lcom/supersonic/mediationsdk/InterstitialManager;)V
    .locals 0

    .prologue
    .line 100
    iput-object p1, p0, Lcom/supersonic/mediationsdk/InterstitialManager$1;->this$0:Lcom/supersonic/mediationsdk/InterstitialManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    .line 103
    invoke-static {}, Lcom/supersonic/mediationsdk/sdk/SupersonicFactory;->getInstance()Lcom/supersonic/mediationsdk/sdk/Supersonic;

    move-result-object v5

    check-cast v5, Lcom/supersonic/mediationsdk/SupersonicObject;

    .line 105
    .local v5, "sso":Lcom/supersonic/mediationsdk/SupersonicObject;
    iget-object v6, p0, Lcom/supersonic/mediationsdk/InterstitialManager$1;->this$0:Lcom/supersonic/mediationsdk/InterstitialManager;

    iget-object v7, p0, Lcom/supersonic/mediationsdk/InterstitialManager$1;->this$0:Lcom/supersonic/mediationsdk/InterstitialManager;

    iget-object v7, v7, Lcom/supersonic/mediationsdk/InterstitialManager;->mActivity:Landroid/app/Activity;

    iget-object v8, p0, Lcom/supersonic/mediationsdk/InterstitialManager$1;->this$0:Lcom/supersonic/mediationsdk/InterstitialManager;

    iget-object v8, v8, Lcom/supersonic/mediationsdk/InterstitialManager;->mUserId:Ljava/lang/String;

    invoke-virtual {v5, v7, v8}, Lcom/supersonic/mediationsdk/SupersonicObject;->getServerResponse(Landroid/content/Context;Ljava/lang/String;)Lcom/supersonic/mediationsdk/utils/ServerResponseWrapper;

    move-result-object v7

    iput-object v7, v6, Lcom/supersonic/mediationsdk/InterstitialManager;->mServerResponseWrapper:Lcom/supersonic/mediationsdk/utils/ServerResponseWrapper;

    .line 107
    new-instance v1, Lcom/supersonic/eventsmodule/EventData;

    const/16 v6, 0x15

    invoke-static {}, Lcom/supersonic/mediationsdk/utils/SupersonicUtils;->getMediationAdditionalData()Lorg/json/JSONObject;

    move-result-object v7

    invoke-direct {v1, v6, v7}, Lcom/supersonic/eventsmodule/EventData;-><init>(ILorg/json/JSONObject;)V

    .line 108
    .local v1, "event":Lcom/supersonic/eventsmodule/EventData;
    invoke-static {}, Lcom/supersonic/mediationsdk/events/InterstitialEventsManager;->getInstance()Lcom/supersonic/mediationsdk/events/InterstitialEventsManager;

    move-result-object v6

    invoke-virtual {v6, v1}, Lcom/supersonic/mediationsdk/events/InterstitialEventsManager;->log(Lcom/supersonic/eventsmodule/EventData;)V

    .line 110
    iget-object v6, p0, Lcom/supersonic/mediationsdk/InterstitialManager$1;->this$0:Lcom/supersonic/mediationsdk/InterstitialManager;

    iget-object v6, v6, Lcom/supersonic/mediationsdk/InterstitialManager;->mServerResponseWrapper:Lcom/supersonic/mediationsdk/utils/ServerResponseWrapper;

    if-eqz v6, :cond_4

    .line 111
    iget-object v6, p0, Lcom/supersonic/mediationsdk/InterstitialManager$1;->this$0:Lcom/supersonic/mediationsdk/InterstitialManager;

    iget-object v6, v6, Lcom/supersonic/mediationsdk/InterstitialManager;->mServerResponseWrapper:Lcom/supersonic/mediationsdk/utils/ServerResponseWrapper;

    const-string v7, "IS"

    invoke-virtual {v6, v7}, Lcom/supersonic/mediationsdk/utils/ServerResponseWrapper;->isValidResponse(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 114
    iget-object v6, p0, Lcom/supersonic/mediationsdk/InterstitialManager$1;->this$0:Lcom/supersonic/mediationsdk/InterstitialManager;

    iget-object v6, v6, Lcom/supersonic/mediationsdk/InterstitialManager;->mActivity:Landroid/app/Activity;

    invoke-static {v6}, Lcom/supersonic/mediationsdk/utils/SupersonicUtils;->isNetworkConnected(Landroid/content/Context;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 115
    const-string v6, "Interstitial"

    invoke-static {v6}, Lcom/supersonic/mediationsdk/utils/ErrorBuilder;->buildNoInternetConnectionInitFailError(Ljava/lang/String;)Lcom/supersonic/mediationsdk/logger/SupersonicError;

    move-result-object v0

    .line 116
    .local v0, "error":Lcom/supersonic/mediationsdk/logger/SupersonicError;
    iget-object v6, p0, Lcom/supersonic/mediationsdk/InterstitialManager$1;->this$0:Lcom/supersonic/mediationsdk/InterstitialManager;

    invoke-static {v6, v0}, Lcom/supersonic/mediationsdk/InterstitialManager;->access$000(Lcom/supersonic/mediationsdk/InterstitialManager;Lcom/supersonic/mediationsdk/logger/SupersonicError;)V

    .line 139
    .end local v0    # "error":Lcom/supersonic/mediationsdk/logger/SupersonicError;
    :cond_0
    :goto_0
    return-void

    .line 120
    :cond_1
    iget-object v6, p0, Lcom/supersonic/mediationsdk/InterstitialManager$1;->this$0:Lcom/supersonic/mediationsdk/InterstitialManager;

    iget-object v6, v6, Lcom/supersonic/mediationsdk/InterstitialManager;->mServerResponseWrapper:Lcom/supersonic/mediationsdk/utils/ServerResponseWrapper;

    invoke-virtual {v6}, Lcom/supersonic/mediationsdk/utils/ServerResponseWrapper;->getConfigurations()Lcom/supersonic/mediationsdk/model/Configurations;

    move-result-object v6

    invoke-virtual {v6}, Lcom/supersonic/mediationsdk/model/Configurations;->getInterstitialConfigurations()Lcom/supersonic/mediationsdk/model/InterstitialConfigurations;

    move-result-object v6

    invoke-virtual {v6}, Lcom/supersonic/mediationsdk/model/InterstitialConfigurations;->getInterstitialAdaptersSmartLoadAmount()I

    move-result v4

    .line 121
    .local v4, "numOfAdaptersToLoad":I
    iget-object v6, p0, Lcom/supersonic/mediationsdk/InterstitialManager$1;->this$0:Lcom/supersonic/mediationsdk/InterstitialManager;

    invoke-static {v6, v4}, Lcom/supersonic/mediationsdk/InterstitialManager;->access$102(Lcom/supersonic/mediationsdk/InterstitialManager;I)I

    .line 123
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v4, :cond_0

    .line 124
    iget-object v6, p0, Lcom/supersonic/mediationsdk/InterstitialManager$1;->this$0:Lcom/supersonic/mediationsdk/InterstitialManager;

    invoke-static {v6}, Lcom/supersonic/mediationsdk/InterstitialManager;->access$200(Lcom/supersonic/mediationsdk/InterstitialManager;)Lcom/supersonic/mediationsdk/AbstractAdapter;

    move-result-object v3

    .line 125
    .local v3, "lastLoadedAdapter":Lcom/supersonic/mediationsdk/AbstractAdapter;
    if-eqz v3, :cond_0

    .line 123
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 129
    .end local v2    # "i":I
    .end local v3    # "lastLoadedAdapter":Lcom/supersonic/mediationsdk/AbstractAdapter;
    .end local v4    # "numOfAdaptersToLoad":I
    :cond_2
    iget-object v6, p0, Lcom/supersonic/mediationsdk/InterstitialManager$1;->this$0:Lcom/supersonic/mediationsdk/InterstitialManager;

    iget-object v6, v6, Lcom/supersonic/mediationsdk/InterstitialManager;->mServerResponseWrapper:Lcom/supersonic/mediationsdk/utils/ServerResponseWrapper;

    invoke-virtual {v6}, Lcom/supersonic/mediationsdk/utils/ServerResponseWrapper;->getReponseError()Lcom/supersonic/mediationsdk/logger/SupersonicError;

    move-result-object v0

    .line 130
    .restart local v0    # "error":Lcom/supersonic/mediationsdk/logger/SupersonicError;
    if-nez v0, :cond_3

    .line 131
    const-string v6, "Interstitial"

    invoke-static {v6}, Lcom/supersonic/mediationsdk/utils/ErrorBuilder;->buildInvalidConfigurationError(Ljava/lang/String;)Lcom/supersonic/mediationsdk/logger/SupersonicError;

    move-result-object v0

    .line 133
    :cond_3
    iget-object v6, p0, Lcom/supersonic/mediationsdk/InterstitialManager$1;->this$0:Lcom/supersonic/mediationsdk/InterstitialManager;

    invoke-static {v6, v0}, Lcom/supersonic/mediationsdk/InterstitialManager;->access$000(Lcom/supersonic/mediationsdk/InterstitialManager;Lcom/supersonic/mediationsdk/logger/SupersonicError;)V

    goto :goto_0

    .line 136
    .end local v0    # "error":Lcom/supersonic/mediationsdk/logger/SupersonicError;
    :cond_4
    const-string v6, "Interstitial"

    invoke-static {v6}, Lcom/supersonic/mediationsdk/utils/ErrorBuilder;->buildNoConfigurationAvailableError(Ljava/lang/String;)Lcom/supersonic/mediationsdk/logger/SupersonicError;

    move-result-object v0

    .line 137
    .restart local v0    # "error":Lcom/supersonic/mediationsdk/logger/SupersonicError;
    iget-object v6, p0, Lcom/supersonic/mediationsdk/InterstitialManager$1;->this$0:Lcom/supersonic/mediationsdk/InterstitialManager;

    invoke-static {v6, v0}, Lcom/supersonic/mediationsdk/InterstitialManager;->access$000(Lcom/supersonic/mediationsdk/InterstitialManager;Lcom/supersonic/mediationsdk/logger/SupersonicError;)V

    goto :goto_0
.end method
