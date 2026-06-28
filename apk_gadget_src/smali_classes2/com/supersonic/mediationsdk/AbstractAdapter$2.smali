.class Lcom/supersonic/mediationsdk/AbstractAdapter$2;
.super Ljava/util/TimerTask;
.source "AbstractAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/supersonic/mediationsdk/AbstractAdapter;->startISLoadTimer(Lcom/supersonic/mediationsdk/sdk/InterstitialManagerListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/supersonic/mediationsdk/AbstractAdapter;

.field final synthetic val$listener:Lcom/supersonic/mediationsdk/sdk/InterstitialManagerListener;


# direct methods
.method constructor <init>(Lcom/supersonic/mediationsdk/AbstractAdapter;Lcom/supersonic/mediationsdk/sdk/InterstitialManagerListener;)V
    .locals 0

    .prologue
    .line 229
    iput-object p1, p0, Lcom/supersonic/mediationsdk/AbstractAdapter$2;->this$0:Lcom/supersonic/mediationsdk/AbstractAdapter;

    iput-object p2, p0, Lcom/supersonic/mediationsdk/AbstractAdapter$2;->val$listener:Lcom/supersonic/mediationsdk/sdk/InterstitialManagerListener;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 232
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Interstitial Load Fail, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/supersonic/mediationsdk/AbstractAdapter$2;->this$0:Lcom/supersonic/mediationsdk/AbstractAdapter;

    invoke-virtual {v3}, Lcom/supersonic/mediationsdk/AbstractAdapter;->getProviderName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "Timeout"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 234
    .local v1, "errorString":Ljava/lang/String;
    invoke-static {v1}, Lcom/supersonic/mediationsdk/utils/ErrorBuilder;->buildLoadFailedError(Ljava/lang/String;)Lcom/supersonic/mediationsdk/logger/SupersonicError;

    move-result-object v0

    .line 235
    .local v0, "error":Lcom/supersonic/mediationsdk/logger/SupersonicError;
    iget-object v2, p0, Lcom/supersonic/mediationsdk/AbstractAdapter$2;->val$listener:Lcom/supersonic/mediationsdk/sdk/InterstitialManagerListener;

    iget-object v3, p0, Lcom/supersonic/mediationsdk/AbstractAdapter$2;->this$0:Lcom/supersonic/mediationsdk/AbstractAdapter;

    invoke-interface {v2, v0, v3}, Lcom/supersonic/mediationsdk/sdk/InterstitialManagerListener;->onInterstitialLoadFailed(Lcom/supersonic/mediationsdk/logger/SupersonicError;Lcom/supersonic/mediationsdk/AbstractAdapter;)V

    .line 236
    return-void
.end method
