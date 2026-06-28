.class final Lcom/inmobi/commons/core/utilities/a$a;
.super Landroid/os/Handler;
.source "ApplicationFocusChangeObserver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/inmobi/commons/core/utilities/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field a:Z


# direct methods
.method constructor <init>(Landroid/os/Looper;)V
    .locals 1

    .prologue
    .line 241
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 238
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/inmobi/commons/core/utilities/a$a;->a:Z

    .line 242
    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 246
    invoke-static {}, Lcom/inmobi/commons/core/utilities/a;->g()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 259
    :cond_0
    :goto_0
    return-void

    .line 250
    :cond_1
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x3e9

    if-ne v0, v1, :cond_2

    iget-boolean v0, p0, Lcom/inmobi/commons/core/utilities/a$a;->a:Z

    if-eqz v0, :cond_2

    .line 251
    iput-boolean v2, p0, Lcom/inmobi/commons/core/utilities/a$a;->a:Z

    .line 252
    invoke-static {v2}, Lcom/inmobi/commons/core/utilities/a;->a(Z)V

    .line 253
    invoke-static {}, Lcom/inmobi/commons/core/utilities/a;->f()Ljava/lang/String;

    goto :goto_0

    .line 254
    :cond_2
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x3ea

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/inmobi/commons/core/utilities/a$a;->a:Z

    if-nez v0, :cond_0

    .line 255
    iput-boolean v3, p0, Lcom/inmobi/commons/core/utilities/a$a;->a:Z

    .line 256
    invoke-static {v3}, Lcom/inmobi/commons/core/utilities/a;->a(Z)V

    .line 257
    invoke-static {}, Lcom/inmobi/commons/core/utilities/a;->f()Ljava/lang/String;

    goto :goto_0
.end method
