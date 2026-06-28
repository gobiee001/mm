.class Lcom/supersonicads/sdk/controller/SupersonicWebView$7;
.super Landroid/content/BroadcastReceiver;
.source "SupersonicWebView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/supersonicads/sdk/controller/SupersonicWebView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;


# direct methods
.method constructor <init>(Lcom/supersonicads/sdk/controller/SupersonicWebView;)V
    .locals 0

    .prologue
    .line 3382
    iput-object p1, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$7;->this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 3387
    iget-object v1, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$7;->this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    invoke-static {v1}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->access$1500(Lcom/supersonicads/sdk/controller/SupersonicWebView;)Lcom/supersonicads/sdk/data/SSAEnums$ControllerState;

    move-result-object v1

    sget-object v2, Lcom/supersonicads/sdk/data/SSAEnums$ControllerState;->Ready:Lcom/supersonicads/sdk/data/SSAEnums$ControllerState;

    if-ne v1, v2, :cond_1

    .line 3388
    const-string v0, "none"

    .line 3389
    .local v0, "networkType":Ljava/lang/String;
    invoke-static {p1}, Lcom/supersonic/environment/ConnectivityService;->isConnectedWifi(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 3390
    const-string v0, "wifi"

    .line 3395
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$7;->this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    invoke-virtual {v1, v0}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->deviceStatusChanged(Ljava/lang/String;)V

    .line 3397
    .end local v0    # "networkType":Ljava/lang/String;
    :cond_1
    return-void

    .line 3391
    .restart local v0    # "networkType":Ljava/lang/String;
    :cond_2
    invoke-static {p1}, Lcom/supersonic/environment/ConnectivityService;->isConnectedMobile(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3392
    const-string v0, "3g"

    goto :goto_0
.end method
