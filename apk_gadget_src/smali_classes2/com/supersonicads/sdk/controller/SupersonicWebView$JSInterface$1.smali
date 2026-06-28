.class Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface$1;
.super Ljava/lang/Object;
.source "SupersonicWebView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface;->adUnitsReady(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface;

.field final synthetic val$adUnitsReady:Lcom/supersonicads/sdk/data/AdUnitsReady;

.field final synthetic val$demandSourceName:Ljava/lang/String;

.field final synthetic val$product:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface;Lcom/supersonicads/sdk/data/AdUnitsReady;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 930
    iput-object p1, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface$1;->this$1:Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface;

    iput-object p2, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface$1;->val$adUnitsReady:Lcom/supersonicads/sdk/data/AdUnitsReady;

    iput-object p3, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface$1;->val$product:Ljava/lang/String;

    iput-object p4, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface$1;->val$demandSourceName:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 935
    iget-object v2, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface$1;->val$adUnitsReady:Lcom/supersonicads/sdk/data/AdUnitsReady;

    invoke-virtual {v2}, Lcom/supersonicads/sdk/data/AdUnitsReady;->getNumOfAdUnits()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 937
    .local v0, "adUnits":I
    if-lez v0, :cond_1

    .line 938
    const/4 v1, 0x1

    .line 944
    .local v1, "fireSuccess":Z
    :goto_0
    iget-object v2, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface$1;->val$product:Ljava/lang/String;

    sget-object v3, Lcom/supersonicads/sdk/data/SSAEnums$ProductType;->RewardedVideo:Lcom/supersonicads/sdk/data/SSAEnums$ProductType;

    invoke-virtual {v3}, Lcom/supersonicads/sdk/data/SSAEnums$ProductType;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 946
    if-eqz v1, :cond_2

    .line 948
    iget-object v2, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface$1;->this$1:Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface;

    iget-object v2, v2, Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface;->this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    invoke-static {v2}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->access$300(Lcom/supersonicads/sdk/controller/SupersonicWebView;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "onRVInitSuccess()"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 949
    iget-object v2, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface$1;->this$1:Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface;

    iget-object v2, v2, Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface;->this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    invoke-static {v2}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->access$2000(Lcom/supersonicads/sdk/controller/SupersonicWebView;)Lcom/supersonicads/sdk/listeners/DSRewardedVideoListener;

    move-result-object v2

    iget-object v3, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface$1;->val$adUnitsReady:Lcom/supersonicads/sdk/data/AdUnitsReady;

    iget-object v4, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface$1;->val$demandSourceName:Ljava/lang/String;

    invoke-interface {v2, v3, v4}, Lcom/supersonicads/sdk/listeners/DSRewardedVideoListener;->onRVInitSuccess(Lcom/supersonicads/sdk/data/AdUnitsReady;Ljava/lang/String;)V

    .line 957
    :cond_0
    :goto_1
    return-void

    .line 940
    .end local v1    # "fireSuccess":Z
    :cond_1
    const/4 v1, 0x0

    .restart local v1    # "fireSuccess":Z
    goto :goto_0

    .line 952
    :cond_2
    iget-object v2, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface$1;->this$1:Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface;

    iget-object v2, v2, Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface;->this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    invoke-static {v2}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->access$2000(Lcom/supersonicads/sdk/controller/SupersonicWebView;)Lcom/supersonicads/sdk/listeners/DSRewardedVideoListener;

    move-result-object v2

    iget-object v3, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface$1;->val$demandSourceName:Ljava/lang/String;

    invoke-interface {v2, v3}, Lcom/supersonicads/sdk/listeners/DSRewardedVideoListener;->onRVNoMoreOffers(Ljava/lang/String;)V

    goto :goto_1
.end method
