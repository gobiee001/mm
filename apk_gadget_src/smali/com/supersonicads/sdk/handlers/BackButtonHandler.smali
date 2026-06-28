.class public Lcom/supersonicads/sdk/handlers/BackButtonHandler;
.super Ljava/lang/Object;
.source "BackButtonHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/supersonicads/sdk/handlers/BackButtonHandler$1;
    }
.end annotation


# static fields
.field public static mInstance:Lcom/supersonicads/sdk/handlers/BackButtonHandler;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    return-void
.end method

.method public static getInstance()Lcom/supersonicads/sdk/handlers/BackButtonHandler;
    .locals 1

    .prologue
    .line 16
    sget-object v0, Lcom/supersonicads/sdk/handlers/BackButtonHandler;->mInstance:Lcom/supersonicads/sdk/handlers/BackButtonHandler;

    if-nez v0, :cond_0

    .line 17
    new-instance v0, Lcom/supersonicads/sdk/handlers/BackButtonHandler;

    invoke-direct {v0}, Lcom/supersonicads/sdk/handlers/BackButtonHandler;-><init>()V

    .line 19
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/supersonicads/sdk/handlers/BackButtonHandler;->mInstance:Lcom/supersonicads/sdk/handlers/BackButtonHandler;

    goto :goto_0
.end method


# virtual methods
.method public handleBackButton(Landroid/app/Activity;)Z
    .locals 6
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    const/4 v3, 0x0

    .line 27
    invoke-static {}, Lcom/supersonicads/sdk/utils/SupersonicSharedPrefHelper;->getSupersonicPrefHelper()Lcom/supersonicads/sdk/utils/SupersonicSharedPrefHelper;

    move-result-object v4

    invoke-virtual {v4}, Lcom/supersonicads/sdk/utils/SupersonicSharedPrefHelper;->getBackButtonState()Lcom/supersonicads/sdk/data/SSAEnums$BackButtonState;

    move-result-object v1

    .line 29
    .local v1, "state":Lcom/supersonicads/sdk/data/SSAEnums$BackButtonState;
    sget-object v4, Lcom/supersonicads/sdk/handlers/BackButtonHandler$1;->$SwitchMap$com$supersonicads$sdk$data$SSAEnums$BackButtonState:[I

    invoke-virtual {v1}, Lcom/supersonicads/sdk/data/SSAEnums$BackButtonState;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_0

    .line 46
    :goto_0
    :pswitch_0
    return v3

    .line 37
    :pswitch_1
    invoke-static {p1}, Lcom/supersonicads/sdk/agent/SupersonicAdsPublisherAgent;->getInstance(Landroid/app/Activity;)Lcom/supersonicads/sdk/agent/SupersonicAdsPublisherAgent;

    move-result-object v0

    .line 38
    .local v0, "ssaPubAgt":Lcom/supersonicads/sdk/agent/SupersonicAdsPublisherAgent;
    invoke-virtual {v0}, Lcom/supersonicads/sdk/agent/SupersonicAdsPublisherAgent;->getWebViewController()Lcom/supersonicads/sdk/controller/SupersonicWebView;

    move-result-object v2

    .line 39
    .local v2, "webViewController":Lcom/supersonicads/sdk/controller/SupersonicWebView;
    if-eqz v2, :cond_0

    .line 41
    const-string v3, "back"

    invoke-virtual {v2, v3}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->nativeNavigationPressed(Ljava/lang/String;)V

    .line 43
    :cond_0
    const/4 v3, 0x1

    goto :goto_0

    .line 29
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
