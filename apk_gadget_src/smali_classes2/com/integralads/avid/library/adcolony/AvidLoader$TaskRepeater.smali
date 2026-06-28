.class public Lcom/integralads/avid/library/adcolony/AvidLoader$TaskRepeater;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/integralads/avid/library/adcolony/AvidLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TaskRepeater"
.end annotation


# instance fields
.field final synthetic a:Lcom/integralads/avid/library/adcolony/AvidLoader;

.field private b:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Lcom/integralads/avid/library/adcolony/AvidLoader;)V
    .locals 1
    .param p1, "this$0"    # Lcom/integralads/avid/library/adcolony/AvidLoader;

    .prologue
    .line 124
    iput-object p1, p0, Lcom/integralads/avid/library/adcolony/AvidLoader$TaskRepeater;->a:Lcom/integralads/avid/library/adcolony/AvidLoader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 126
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/integralads/avid/library/adcolony/AvidLoader$TaskRepeater;->b:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public cleanup()V
    .locals 2

    .prologue
    .line 133
    iget-object v0, p0, Lcom/integralads/avid/library/adcolony/AvidLoader$TaskRepeater;->b:Landroid/os/Handler;

    iget-object v1, p0, Lcom/integralads/avid/library/adcolony/AvidLoader$TaskRepeater;->a:Lcom/integralads/avid/library/adcolony/AvidLoader;

    invoke-static {v1}, Lcom/integralads/avid/library/adcolony/AvidLoader;->c(Lcom/integralads/avid/library/adcolony/AvidLoader;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 134
    return-void
.end method

.method public repeatLoading()V
    .locals 4

    .prologue
    .line 129
    iget-object v0, p0, Lcom/integralads/avid/library/adcolony/AvidLoader$TaskRepeater;->b:Landroid/os/Handler;

    iget-object v1, p0, Lcom/integralads/avid/library/adcolony/AvidLoader$TaskRepeater;->a:Lcom/integralads/avid/library/adcolony/AvidLoader;

    invoke-static {v1}, Lcom/integralads/avid/library/adcolony/AvidLoader;->c(Lcom/integralads/avid/library/adcolony/AvidLoader;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 130
    return-void
.end method
