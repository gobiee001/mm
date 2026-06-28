.class Lcom/appsomniacs/da2/DA2Activity$17$1;
.super Ljava/lang/Object;
.source "DA2Activity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appsomniacs/da2/DA2Activity$17;->onRewardedVideoLoadFailure(Ljava/lang/String;Lcom/mopub/mobileads/MoPubErrorCode;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/appsomniacs/da2/DA2Activity$17;


# direct methods
.method constructor <init>(Lcom/appsomniacs/da2/DA2Activity$17;)V
    .locals 0
    .param p1, "this$1"    # Lcom/appsomniacs/da2/DA2Activity$17;

    .prologue
    .line 2444
    iput-object p1, p0, Lcom/appsomniacs/da2/DA2Activity$17$1;->this$1:Lcom/appsomniacs/da2/DA2Activity$17;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 2447
    invoke-static {}, Lcom/appsomniacs/da2/DA2Activity;->access$2300()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Lcom/mopub/common/MediationSettings;

    invoke-static {v0, v1}, Lcom/mopub/mobileads/MoPubRewardedVideos;->loadRewardedVideo(Ljava/lang/String;[Lcom/mopub/common/MediationSettings;)V

    .line 2448
    return-void
.end method
