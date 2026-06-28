.class final Lcom/inmobi/ads/ay$3;
.super Ljava/lang/Object;
.source "NativeVideoAdContainer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/inmobi/ads/ay;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/inmobi/ads/az;

.field final synthetic b:Z

.field final synthetic c:Lcom/inmobi/ads/NativeVideoView;

.field final synthetic d:Lcom/inmobi/ads/ay;


# direct methods
.method constructor <init>(Lcom/inmobi/ads/ay;Lcom/inmobi/ads/az;ZLcom/inmobi/ads/NativeVideoView;)V
    .locals 0

    .prologue
    .line 189
    iput-object p1, p0, Lcom/inmobi/ads/ay$3;->d:Lcom/inmobi/ads/ay;

    iput-object p2, p0, Lcom/inmobi/ads/ay$3;->a:Lcom/inmobi/ads/az;

    iput-boolean p3, p0, Lcom/inmobi/ads/ay$3;->b:Z

    iput-object p4, p0, Lcom/inmobi/ads/ay$3;->c:Lcom/inmobi/ads/NativeVideoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 192
    iget-object v0, p0, Lcom/inmobi/ads/ay$3;->a:Lcom/inmobi/ads/az;

    invoke-virtual {v0}, Lcom/inmobi/ads/az;->v()Ljava/util/Map;

    move-result-object v0

    const-string v1, "visible"

    iget-boolean v2, p0, Lcom/inmobi/ads/ay$3;->b:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 193
    iget-boolean v0, p0, Lcom/inmobi/ads/ay$3;->b:Z

    if-eqz v0, :cond_6

    .line 194
    iget-object v0, p0, Lcom/inmobi/ads/ay$3;->a:Lcom/inmobi/ads/az;

    invoke-virtual {v0}, Lcom/inmobi/ads/az;->v()Ljava/util/Map;

    move-result-object v0

    const-string v1, "lastVisibleTimestamp"

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 196
    iget-object v0, p0, Lcom/inmobi/ads/ay$3;->c:Lcom/inmobi/ads/NativeVideoView;

    .line 1673
    iget-boolean v0, v0, Lcom/inmobi/ads/NativeVideoView;->i:Z

    .line 196
    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/inmobi/ads/ay$3;->c:Lcom/inmobi/ads/NativeVideoView;

    invoke-virtual {v0}, Lcom/inmobi/ads/NativeVideoView;->getMediaPlayer()Lcom/inmobi/ads/ap;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 197
    iget-object v0, p0, Lcom/inmobi/ads/ay$3;->a:Lcom/inmobi/ads/az;

    .line 2194
    iget-boolean v0, v0, Lcom/inmobi/ads/az;->A:Z

    .line 197
    if-eqz v0, :cond_3

    .line 198
    iget-object v0, p0, Lcom/inmobi/ads/ay$3;->c:Lcom/inmobi/ads/NativeVideoView;

    invoke-virtual {v0}, Lcom/inmobi/ads/NativeVideoView;->e()V

    .line 203
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/inmobi/ads/ay$3;->c:Lcom/inmobi/ads/NativeVideoView;

    .line 2698
    iget-object v1, v0, Lcom/inmobi/ads/NativeVideoView;->h:Landroid/os/Handler;

    if-eqz v1, :cond_1

    iget-object v1, v0, Lcom/inmobi/ads/NativeVideoView;->h:Landroid/os/Handler;

    invoke-virtual {v1, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 2699
    :cond_1
    iput-boolean v4, v0, Lcom/inmobi/ads/NativeVideoView;->i:Z

    .line 205
    iget-object v0, p0, Lcom/inmobi/ads/ay$3;->c:Lcom/inmobi/ads/NativeVideoView;

    invoke-virtual {v0}, Lcom/inmobi/ads/NativeVideoView;->getState()I

    move-result v0

    if-ne v5, v0, :cond_4

    .line 206
    iget-object v0, p0, Lcom/inmobi/ads/ay$3;->c:Lcom/inmobi/ads/NativeVideoView;

    invoke-virtual {v0}, Lcom/inmobi/ads/NativeVideoView;->getMediaPlayer()Lcom/inmobi/ads/ap;

    move-result-object v0

    .line 3054
    const/4 v1, 0x3

    iput v1, v0, Lcom/inmobi/ads/ap;->b:I

    .line 3686
    :cond_2
    :goto_1
    return-void

    .line 200
    :cond_3
    iget-object v0, p0, Lcom/inmobi/ads/ay$3;->c:Lcom/inmobi/ads/NativeVideoView;

    invoke-virtual {v0}, Lcom/inmobi/ads/NativeVideoView;->d()V

    goto :goto_0

    .line 207
    :cond_4
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/inmobi/ads/ay$3;->c:Lcom/inmobi/ads/NativeVideoView;

    invoke-virtual {v1}, Lcom/inmobi/ads/NativeVideoView;->getState()I

    move-result v1

    if-eq v0, v1, :cond_5

    iget-object v0, p0, Lcom/inmobi/ads/ay$3;->c:Lcom/inmobi/ads/NativeVideoView;

    .line 208
    invoke-virtual {v0}, Lcom/inmobi/ads/NativeVideoView;->getState()I

    move-result v0

    if-eq v6, v0, :cond_5

    const/4 v0, 0x5

    iget-object v1, p0, Lcom/inmobi/ads/ay$3;->c:Lcom/inmobi/ads/NativeVideoView;

    .line 211
    invoke-virtual {v1}, Lcom/inmobi/ads/NativeVideoView;->getState()I

    move-result v1

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/inmobi/ads/ay$3;->a:Lcom/inmobi/ads/az;

    .line 3202
    iget-boolean v0, v0, Lcom/inmobi/ads/az;->C:Z

    .line 211
    if-eqz v0, :cond_2

    .line 212
    :cond_5
    iget-object v0, p0, Lcom/inmobi/ads/ay$3;->c:Lcom/inmobi/ads/NativeVideoView;

    invoke-virtual {v0}, Lcom/inmobi/ads/NativeVideoView;->start()V

    goto :goto_1

    .line 215
    :cond_6
    iget-object v0, p0, Lcom/inmobi/ads/ay$3;->c:Lcom/inmobi/ads/NativeVideoView;

    iget-object v1, p0, Lcom/inmobi/ads/ay$3;->a:Lcom/inmobi/ads/az;

    .line 3222
    iget v1, v1, Lcom/inmobi/ads/az;->F:I

    .line 3677
    iget-boolean v2, v0, Lcom/inmobi/ads/NativeVideoView;->i:Z

    if-nez v2, :cond_2

    invoke-virtual {v0}, Lcom/inmobi/ads/NativeVideoView;->getState()I

    move-result v2

    if-eq v6, v2, :cond_2

    .line 3679
    iget-object v2, v0, Lcom/inmobi/ads/NativeVideoView;->h:Landroid/os/Handler;

    if-nez v2, :cond_7

    .line 3680
    new-instance v2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v2, v0, Lcom/inmobi/ads/NativeVideoView;->h:Landroid/os/Handler;

    .line 3683
    :cond_7
    if-lez v1, :cond_8

    .line 3684
    iput-boolean v5, v0, Lcom/inmobi/ads/NativeVideoView;->i:Z

    .line 3685
    invoke-virtual {v0}, Lcom/inmobi/ads/NativeVideoView;->d()V

    .line 3686
    iget-object v2, v0, Lcom/inmobi/ads/NativeVideoView;->h:Landroid/os/Handler;

    new-instance v3, Lcom/inmobi/ads/NativeVideoView$8;

    invoke-direct {v3, v0}, Lcom/inmobi/ads/NativeVideoView$8;-><init>(Lcom/inmobi/ads/NativeVideoView;)V

    mul-int/lit16 v0, v1, 0x3e8

    int-to-long v0, v0

    invoke-virtual {v2, v3, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1

    .line 3693
    :cond_8
    invoke-virtual {v0}, Lcom/inmobi/ads/NativeVideoView;->pause()V

    goto :goto_1
.end method
