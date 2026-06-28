.class Lcom/supersonicads/sdk/controller/SupersonicWebView$2;
.super Landroid/os/CountDownTimer;
.source "SupersonicWebView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/supersonicads/sdk/controller/SupersonicWebView;->load(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

.field final synthetic val$loadAttemp:I


# direct methods
.method constructor <init>(Lcom/supersonicads/sdk/controller/SupersonicWebView;JJI)V
    .locals 0
    .param p2, "x0"    # J
    .param p4, "x1"    # J

    .prologue
    .line 2248
    iput-object p1, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$2;->this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    iput p6, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$2;->val$loadAttemp:I

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 7

    .prologue
    const/4 v5, 0x2

    const/4 v6, 0x0

    .line 2257
    iget-object v3, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$2;->this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    invoke-static {v3}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->access$300(Lcom/supersonicads/sdk/controller/SupersonicWebView;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "Loading Controller Timer Finish"

    invoke-static {v3, v4}, Lcom/supersonicads/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2259
    iget v3, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$2;->val$loadAttemp:I

    if-ne v3, v5, :cond_5

    .line 2261
    iget-object v3, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$2;->this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    invoke-static {v3}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->access$1600(Lcom/supersonicads/sdk/controller/SupersonicWebView;)Landroid/os/CountDownTimer;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/CountDownTimer;->cancel()V

    .line 2265
    iget-object v3, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$2;->this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    invoke-virtual {v3}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->getCurrentActivityContext()Landroid/content/Context;

    move-result-object v3

    check-cast v3, Landroid/app/Activity;

    invoke-static {v3}, Lcom/supersonicads/sdk/agent/SupersonicAdsPublisherAgent;->getInstance(Landroid/app/Activity;)Lcom/supersonicads/sdk/agent/SupersonicAdsPublisherAgent;

    move-result-object v3

    invoke-virtual {v3}, Lcom/supersonicads/sdk/agent/SupersonicAdsPublisherAgent;->getDemandSources()Ljava/util/Collection;

    move-result-object v1

    .line 2266
    .local v1, "demandSources":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/supersonicads/sdk/data/DemandSource;>;"
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/supersonicads/sdk/data/DemandSource;

    .line 2267
    .local v0, "demandSource":Lcom/supersonicads/sdk/data/DemandSource;
    invoke-virtual {v0}, Lcom/supersonicads/sdk/data/DemandSource;->getDemandSourceInitState()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 2268
    iget-object v3, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$2;->this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    sget-object v4, Lcom/supersonicads/sdk/data/SSAEnums$ProductType;->RewardedVideo:Lcom/supersonicads/sdk/data/SSAEnums$ProductType;

    invoke-virtual {v0}, Lcom/supersonicads/sdk/data/DemandSource;->getDemandSourceName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->access$3500(Lcom/supersonicads/sdk/controller/SupersonicWebView;Lcom/supersonicads/sdk/data/SSAEnums$ProductType;Ljava/lang/String;)V

    goto :goto_0

    .line 2272
    .end local v0    # "demandSource":Lcom/supersonicads/sdk/data/DemandSource;
    :cond_1
    iget-object v3, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$2;->this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    invoke-static {v3}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->access$2100(Lcom/supersonicads/sdk/controller/SupersonicWebView;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 2273
    iget-object v3, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$2;->this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    sget-object v4, Lcom/supersonicads/sdk/data/SSAEnums$ProductType;->Interstitial:Lcom/supersonicads/sdk/data/SSAEnums$ProductType;

    invoke-static {v3, v4, v6}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->access$3500(Lcom/supersonicads/sdk/controller/SupersonicWebView;Lcom/supersonicads/sdk/data/SSAEnums$ProductType;Ljava/lang/String;)V

    .line 2276
    :cond_2
    iget-object v3, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$2;->this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    invoke-static {v3}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->access$2600(Lcom/supersonicads/sdk/controller/SupersonicWebView;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 2277
    iget-object v3, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$2;->this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    sget-object v4, Lcom/supersonicads/sdk/data/SSAEnums$ProductType;->OfferWall:Lcom/supersonicads/sdk/data/SSAEnums$ProductType;

    invoke-static {v3, v4, v6}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->access$3500(Lcom/supersonicads/sdk/controller/SupersonicWebView;Lcom/supersonicads/sdk/data/SSAEnums$ProductType;Ljava/lang/String;)V

    .line 2280
    :cond_3
    iget-object v3, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$2;->this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    invoke-static {v3}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->access$3100(Lcom/supersonicads/sdk/controller/SupersonicWebView;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 2281
    iget-object v3, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$2;->this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    sget-object v4, Lcom/supersonicads/sdk/data/SSAEnums$ProductType;->OfferWallCredits:Lcom/supersonicads/sdk/data/SSAEnums$ProductType;

    invoke-static {v3, v4, v6}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->access$3500(Lcom/supersonicads/sdk/controller/SupersonicWebView;Lcom/supersonicads/sdk/data/SSAEnums$ProductType;Ljava/lang/String;)V

    .line 2289
    .end local v1    # "demandSources":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/supersonicads/sdk/data/DemandSource;>;"
    .end local v2    # "i$":Ljava/util/Iterator;
    :cond_4
    :goto_1
    return-void

    .line 2287
    :cond_5
    iget-object v3, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$2;->this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    invoke-virtual {v3, v5}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->load(I)V

    goto :goto_1
.end method

.method public onTick(J)V
    .locals 3
    .param p1, "millisUntilFinished"    # J

    .prologue
    .line 2252
    iget-object v0, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$2;->this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    invoke-static {v0}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->access$300(Lcom/supersonicads/sdk/controller/SupersonicWebView;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Loading Controller Timer Tick "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/supersonicads/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2253
    return-void
.end method
