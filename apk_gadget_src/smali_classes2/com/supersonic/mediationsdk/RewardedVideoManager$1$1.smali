.class Lcom/supersonic/mediationsdk/RewardedVideoManager$1$1;
.super Landroid/os/CountDownTimer;
.source "RewardedVideoManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/supersonic/mediationsdk/RewardedVideoManager$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/supersonic/mediationsdk/RewardedVideoManager$1;


# direct methods
.method constructor <init>(Lcom/supersonic/mediationsdk/RewardedVideoManager$1;JJ)V
    .locals 0
    .param p2, "x0"    # J
    .param p4, "x1"    # J

    .prologue
    .line 173
    iput-object p1, p0, Lcom/supersonic/mediationsdk/RewardedVideoManager$1$1;->this$1:Lcom/supersonic/mediationsdk/RewardedVideoManager$1;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 178
    iget-object v0, p0, Lcom/supersonic/mediationsdk/RewardedVideoManager$1$1;->this$1:Lcom/supersonic/mediationsdk/RewardedVideoManager$1;

    iget-object v0, v0, Lcom/supersonic/mediationsdk/RewardedVideoManager$1;->this$0:Lcom/supersonic/mediationsdk/RewardedVideoManager;

    invoke-static {v0}, Lcom/supersonic/mediationsdk/RewardedVideoManager;->access$100(Lcom/supersonic/mediationsdk/RewardedVideoManager;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 179
    iget-object v0, p0, Lcom/supersonic/mediationsdk/RewardedVideoManager$1$1;->this$1:Lcom/supersonic/mediationsdk/RewardedVideoManager$1;

    iget-object v0, v0, Lcom/supersonic/mediationsdk/RewardedVideoManager$1;->this$0:Lcom/supersonic/mediationsdk/RewardedVideoManager;

    invoke-static {v0, v3}, Lcom/supersonic/mediationsdk/RewardedVideoManager;->access$102(Lcom/supersonic/mediationsdk/RewardedVideoManager;Z)Z

    .line 180
    iget-object v0, p0, Lcom/supersonic/mediationsdk/RewardedVideoManager$1$1;->this$1:Lcom/supersonic/mediationsdk/RewardedVideoManager$1;

    iget-object v0, v0, Lcom/supersonic/mediationsdk/RewardedVideoManager$1;->this$0:Lcom/supersonic/mediationsdk/RewardedVideoManager;

    invoke-static {v0}, Lcom/supersonic/mediationsdk/RewardedVideoManager;->access$200(Lcom/supersonic/mediationsdk/RewardedVideoManager;)Lcom/supersonic/mediationsdk/InternalRewardedVideoListener;

    move-result-object v0

    const-string v1, "noInternetConnection"

    invoke-interface {v0, v1}, Lcom/supersonic/mediationsdk/InternalRewardedVideoListener;->onVideoIsNotAvailable(Ljava/lang/String;)V

    .line 181
    iget-object v0, p0, Lcom/supersonic/mediationsdk/RewardedVideoManager$1$1;->this$1:Lcom/supersonic/mediationsdk/RewardedVideoManager$1;

    iget-object v0, v0, Lcom/supersonic/mediationsdk/RewardedVideoManager$1;->this$0:Lcom/supersonic/mediationsdk/RewardedVideoManager;

    iget-object v0, v0, Lcom/supersonic/mediationsdk/RewardedVideoManager;->mLoggerManager:Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;

    sget-object v1, Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;->API:Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;

    const-string v2, "Mediation availability false reason: No internet connection"

    invoke-virtual {v0, v1, v2, v3}, Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;->log(Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;Ljava/lang/String;I)V

    .line 183
    :cond_0
    return-void
.end method

.method public onTick(J)V
    .locals 0
    .param p1, "millisUntilFinished"    # J

    .prologue
    .line 175
    return-void
.end method
