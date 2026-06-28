.class Lcom/supersonic/mediationsdk/AbstractAdUnitManager$InitRunnable$1;
.super Ljava/lang/Object;
.source "AbstractAdUnitManager.java"

# interfaces
.implements Lcom/supersonic/mediationsdk/SupersonicObject$IResponseListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/supersonic/mediationsdk/AbstractAdUnitManager$InitRunnable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/supersonic/mediationsdk/AbstractAdUnitManager$InitRunnable;


# direct methods
.method constructor <init>(Lcom/supersonic/mediationsdk/AbstractAdUnitManager$InitRunnable;)V
    .locals 0

    .prologue
    .line 58
    iput-object p1, p0, Lcom/supersonic/mediationsdk/AbstractAdUnitManager$InitRunnable$1;->this$1:Lcom/supersonic/mediationsdk/AbstractAdUnitManager$InitRunnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onUnrecoverableError(Ljava/lang/String;)V
    .locals 2
    .param p1, "errorMessage"    # Ljava/lang/String;

    .prologue
    .line 62
    iget-object v0, p0, Lcom/supersonic/mediationsdk/AbstractAdUnitManager$InitRunnable$1;->this$1:Lcom/supersonic/mediationsdk/AbstractAdUnitManager$InitRunnable;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/supersonic/mediationsdk/AbstractAdUnitManager$InitRunnable;->isRecoverable:Z

    .line 63
    iget-object v0, p0, Lcom/supersonic/mediationsdk/AbstractAdUnitManager$InitRunnable$1;->this$1:Lcom/supersonic/mediationsdk/AbstractAdUnitManager$InitRunnable;

    iput-object p1, v0, Lcom/supersonic/mediationsdk/AbstractAdUnitManager$InitRunnable;->reason:Ljava/lang/String;

    .line 64
    return-void
.end method
