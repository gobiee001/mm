.class public Lcom/supersonic/environment/NetworkStateReceiver;
.super Landroid/content/BroadcastReceiver;
.source "NetworkStateReceiver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/supersonic/environment/NetworkStateReceiver$NetworkStateReceiverListener;
    }
.end annotation


# instance fields
.field private mConnected:Z

.field private mListener:Lcom/supersonic/environment/NetworkStateReceiver$NetworkStateReceiverListener;

.field private mManager:Landroid/net/ConnectivityManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/supersonic/environment/NetworkStateReceiver$NetworkStateReceiverListener;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "listener"    # Lcom/supersonic/environment/NetworkStateReceiver$NetworkStateReceiverListener;

    .prologue
    .line 19
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 20
    iput-object p2, p0, Lcom/supersonic/environment/NetworkStateReceiver;->mListener:Lcom/supersonic/environment/NetworkStateReceiver$NetworkStateReceiverListener;

    .line 21
    const-string v0, "connectivity"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Lcom/supersonic/environment/NetworkStateReceiver;->mManager:Landroid/net/ConnectivityManager;

    .line 22
    invoke-direct {p0}, Lcom/supersonic/environment/NetworkStateReceiver;->checkAndSetState()Z

    .line 23
    return-void
.end method

.method private checkAndSetState()Z
    .locals 5

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 35
    iget-boolean v1, p0, Lcom/supersonic/environment/NetworkStateReceiver;->mConnected:Z

    .line 36
    .local v1, "prev":Z
    iget-object v2, p0, Lcom/supersonic/environment/NetworkStateReceiver;->mManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v2}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 37
    .local v0, "activeNetwork":Landroid/net/NetworkInfo;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result v2

    if-eqz v2, :cond_0

    move v2, v3

    :goto_0
    iput-boolean v2, p0, Lcom/supersonic/environment/NetworkStateReceiver;->mConnected:Z

    .line 38
    iget-boolean v2, p0, Lcom/supersonic/environment/NetworkStateReceiver;->mConnected:Z

    if-eq v1, v2, :cond_1

    :goto_1
    return v3

    :cond_0
    move v2, v4

    .line 37
    goto :goto_0

    :cond_1
    move v3, v4

    .line 38
    goto :goto_1
.end method

.method private notifyState()V
    .locals 2

    .prologue
    .line 42
    iget-object v0, p0, Lcom/supersonic/environment/NetworkStateReceiver;->mListener:Lcom/supersonic/environment/NetworkStateReceiver$NetworkStateReceiverListener;

    if-eqz v0, :cond_0

    .line 43
    iget-boolean v0, p0, Lcom/supersonic/environment/NetworkStateReceiver;->mConnected:Z

    if-eqz v0, :cond_1

    .line 44
    iget-object v0, p0, Lcom/supersonic/environment/NetworkStateReceiver;->mListener:Lcom/supersonic/environment/NetworkStateReceiver$NetworkStateReceiverListener;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/supersonic/environment/NetworkStateReceiver$NetworkStateReceiverListener;->onNetworkAvailabilityChanged(Z)V

    .line 48
    :cond_0
    :goto_0
    return-void

    .line 46
    :cond_1
    iget-object v0, p0, Lcom/supersonic/environment/NetworkStateReceiver;->mListener:Lcom/supersonic/environment/NetworkStateReceiver$NetworkStateReceiverListener;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/supersonic/environment/NetworkStateReceiver$NetworkStateReceiverListener;->onNetworkAvailabilityChanged(Z)V

    goto :goto_0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 27
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_1

    .line 32
    :cond_0
    :goto_0
    return-void

    .line 30
    :cond_1
    invoke-direct {p0}, Lcom/supersonic/environment/NetworkStateReceiver;->checkAndSetState()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 31
    invoke-direct {p0}, Lcom/supersonic/environment/NetworkStateReceiver;->notifyState()V

    goto :goto_0
.end method
