.class Lcom/appsomniacs/da2/DA2Activity$25;
.super Ljava/lang/Object;
.source "DA2Activity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appsomniacs/da2/DA2Activity;->onBannerFailed(Lcom/mopub/mobileads/MoPubView;Lcom/mopub/mobileads/MoPubErrorCode;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/appsomniacs/da2/DA2Activity;


# direct methods
.method constructor <init>(Lcom/appsomniacs/da2/DA2Activity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/appsomniacs/da2/DA2Activity;

    .prologue
    .line 3733
    iput-object p1, p0, Lcom/appsomniacs/da2/DA2Activity$25;->this$0:Lcom/appsomniacs/da2/DA2Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 3736
    iget-object v1, p0, Lcom/appsomniacs/da2/DA2Activity$25;->this$0:Lcom/appsomniacs/da2/DA2Activity;

    invoke-static {v1}, Lcom/appsomniacs/da2/DA2Activity;->access$2500(Lcom/appsomniacs/da2/DA2Activity;)Lcom/mopub/mobileads/MoPubView;

    move-result-object v1

    if-nez v1, :cond_0

    .line 3737
    const-string v1, "DA2"

    const-string v2, "MoPub BannerAdListener: onBannerFailed() callback retry entered. view is null; skipping, try again later."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3738
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 3739
    .local v0, "handleTimer":Landroid/os/Handler;
    const-wide/16 v2, 0x3a98

    invoke-virtual {v0, p0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 3740
    const/4 v1, 0x1

    invoke-static {v1}, Lcom/appsomniacs/da2/DA2Activity;->access$2602(Z)Z

    .line 3746
    .end local v0    # "handleTimer":Landroid/os/Handler;
    :goto_0
    return-void

    .line 3742
    :cond_0
    const-string v1, "DA2"

    const-string v2, "MoPub BannerAdListener: onBannerFailed() callback retry entered. Attempting to load new ad."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3743
    iget-object v1, p0, Lcom/appsomniacs/da2/DA2Activity$25;->this$0:Lcom/appsomniacs/da2/DA2Activity;

    invoke-static {v1}, Lcom/appsomniacs/da2/DA2Activity;->access$2500(Lcom/appsomniacs/da2/DA2Activity;)Lcom/mopub/mobileads/MoPubView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mopub/mobileads/MoPubView;->loadAd()V

    .line 3744
    const/4 v1, 0x0

    invoke-static {v1}, Lcom/appsomniacs/da2/DA2Activity;->access$2602(Z)Z

    goto :goto_0
.end method
