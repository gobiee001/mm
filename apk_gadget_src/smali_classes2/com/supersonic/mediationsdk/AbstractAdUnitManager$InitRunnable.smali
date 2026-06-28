.class public abstract Lcom/supersonic/mediationsdk/AbstractAdUnitManager$InitRunnable;
.super Ljava/lang/Object;
.source "AbstractAdUnitManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/supersonic/mediationsdk/AbstractAdUnitManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401
    name = "InitRunnable"
.end annotation


# instance fields
.field protected isRecoverable:Z

.field protected listener:Lcom/supersonic/mediationsdk/SupersonicObject$IResponseListener;

.field protected reason:Ljava/lang/String;

.field final synthetic this$0:Lcom/supersonic/mediationsdk/AbstractAdUnitManager;


# direct methods
.method public constructor <init>(Lcom/supersonic/mediationsdk/AbstractAdUnitManager;)V
    .locals 1

    .prologue
    .line 54
    iput-object p1, p0, Lcom/supersonic/mediationsdk/AbstractAdUnitManager$InitRunnable;->this$0:Lcom/supersonic/mediationsdk/AbstractAdUnitManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/supersonic/mediationsdk/AbstractAdUnitManager$InitRunnable;->isRecoverable:Z

    .line 58
    new-instance v0, Lcom/supersonic/mediationsdk/AbstractAdUnitManager$InitRunnable$1;

    invoke-direct {v0, p0}, Lcom/supersonic/mediationsdk/AbstractAdUnitManager$InitRunnable$1;-><init>(Lcom/supersonic/mediationsdk/AbstractAdUnitManager$InitRunnable;)V

    iput-object v0, p0, Lcom/supersonic/mediationsdk/AbstractAdUnitManager$InitRunnable;->listener:Lcom/supersonic/mediationsdk/SupersonicObject$IResponseListener;

    return-void
.end method
