.class public Lcom/integralads/avid/library/mopub/AvidLoader$TaskRepeater;
.super Ljava/lang/Object;
.source "AvidLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/integralads/avid/library/mopub/AvidLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TaskRepeater"
.end annotation


# instance fields
.field private handler:Landroid/os/Handler;

.field final synthetic this$0:Lcom/integralads/avid/library/mopub/AvidLoader;


# direct methods
.method public constructor <init>(Lcom/integralads/avid/library/mopub/AvidLoader;)V
    .locals 1
    .param p1, "this$0"    # Lcom/integralads/avid/library/mopub/AvidLoader;

    .prologue
    .line 124
    iput-object p1, p0, Lcom/integralads/avid/library/mopub/AvidLoader$TaskRepeater;->this$0:Lcom/integralads/avid/library/mopub/AvidLoader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 126
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/integralads/avid/library/mopub/AvidLoader$TaskRepeater;->handler:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public cleanup()V
    .locals 2

    .prologue
    .line 133
    iget-object v0, p0, Lcom/integralads/avid/library/mopub/AvidLoader$TaskRepeater;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/integralads/avid/library/mopub/AvidLoader$TaskRepeater;->this$0:Lcom/integralads/avid/library/mopub/AvidLoader;

    invoke-static {v1}, Lcom/integralads/avid/library/mopub/AvidLoader;->access$100(Lcom/integralads/avid/library/mopub/AvidLoader;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 134
    return-void
.end method

.method public repeatLoading()V
    .locals 4

    .prologue
    .line 129
    iget-object v0, p0, Lcom/integralads/avid/library/mopub/AvidLoader$TaskRepeater;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/integralads/avid/library/mopub/AvidLoader$TaskRepeater;->this$0:Lcom/integralads/avid/library/mopub/AvidLoader;

    invoke-static {v1}, Lcom/integralads/avid/library/mopub/AvidLoader;->access$100(Lcom/integralads/avid/library/mopub/AvidLoader;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 130
    return-void
.end method
