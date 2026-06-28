.class Lcom/supersonic/mediationsdk/RewardedVideoManager$1;
.super Ljava/lang/Object;
.source "RewardedVideoManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/supersonic/mediationsdk/RewardedVideoManager;->initRewardedVideo(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/supersonic/mediationsdk/RewardedVideoManager;


# direct methods
.method constructor <init>(Lcom/supersonic/mediationsdk/RewardedVideoManager;)V
    .locals 0

    .prologue
    .line 170
    iput-object p1, p0, Lcom/supersonic/mediationsdk/RewardedVideoManager$1;->this$0:Lcom/supersonic/mediationsdk/RewardedVideoManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    const-wide/32 v2, 0xea60

    .line 173
    iget-object v6, p0, Lcom/supersonic/mediationsdk/RewardedVideoManager$1;->this$0:Lcom/supersonic/mediationsdk/RewardedVideoManager;

    new-instance v0, Lcom/supersonic/mediationsdk/RewardedVideoManager$1$1;

    move-object v1, p0

    move-wide v4, v2

    invoke-direct/range {v0 .. v5}, Lcom/supersonic/mediationsdk/RewardedVideoManager$1$1;-><init>(Lcom/supersonic/mediationsdk/RewardedVideoManager$1;JJ)V

    invoke-virtual {v0}, Lcom/supersonic/mediationsdk/RewardedVideoManager$1$1;->start()Landroid/os/CountDownTimer;

    move-result-object v0

    invoke-static {v6, v0}, Lcom/supersonic/mediationsdk/RewardedVideoManager;->access$002(Lcom/supersonic/mediationsdk/RewardedVideoManager;Landroid/os/CountDownTimer;)Landroid/os/CountDownTimer;

    .line 185
    return-void
.end method
