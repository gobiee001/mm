.class final Lcom/inmobi/signals/activityrecognition/b$a;
.super Landroid/os/Handler;
.source "ActivityRecognitionSampler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/inmobi/signals/activityrecognition/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# direct methods
.method constructor <init>(Landroid/os/Looper;)V
    .locals 0

    .prologue
    .line 89
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 90
    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 6

    .prologue
    .line 94
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 110
    :cond_0
    :goto_0
    return-void

    .line 96
    :pswitch_0
    invoke-static {}, Lcom/inmobi/signals/activityrecognition/ActivityRecognitionManager;->c()I

    move-result v0

    .line 98
    invoke-static {}, Lcom/inmobi/signals/activityrecognition/b;->g()Ljava/lang/String;

    .line 100
    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    .line 101
    invoke-static {}, Lcom/inmobi/signals/activityrecognition/b;->h()Ljava/util/List;

    move-result-object v1

    new-instance v2, Lcom/inmobi/signals/activityrecognition/a;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-direct {v2, v0, v4, v5}, Lcom/inmobi/signals/activityrecognition/a;-><init>(IJ)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 104
    :cond_1
    invoke-static {}, Lcom/inmobi/signals/activityrecognition/b;->h()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-static {}, Lcom/inmobi/signals/o;->a()Lcom/inmobi/signals/o;

    move-result-object v1

    .line 1081
    iget-object v1, v1, Lcom/inmobi/signals/o;->a:Lcom/inmobi/signals/p;

    .line 1167
    iget-object v1, v1, Lcom/inmobi/signals/p;->a:Lcom/inmobi/signals/p$b;

    .line 1268
    iget v1, v1, Lcom/inmobi/signals/p$b;->s:I

    .line 104
    if-ge v0, v1, :cond_0

    .line 105
    const/4 v0, 0x0

    invoke-static {}, Lcom/inmobi/signals/o;->a()Lcom/inmobi/signals/o;

    move-result-object v1

    .line 2081
    iget-object v1, v1, Lcom/inmobi/signals/o;->a:Lcom/inmobi/signals/p;

    .line 2167
    iget-object v1, v1, Lcom/inmobi/signals/p;->a:Lcom/inmobi/signals/p$b;

    .line 2264
    iget v1, v1, Lcom/inmobi/signals/p$b;->r:I

    .line 105
    mul-int/lit16 v1, v1, 0x3e8

    int-to-long v2, v1

    invoke-virtual {p0, v0, v2, v3}, Lcom/inmobi/signals/activityrecognition/b$a;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 94
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
