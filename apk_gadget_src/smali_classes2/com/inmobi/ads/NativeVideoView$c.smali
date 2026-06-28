.class final Lcom/inmobi/ads/NativeVideoView$c;
.super Landroid/os/Handler;
.source "NativeVideoView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/inmobi/ads/NativeVideoView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "c"
.end annotation


# instance fields
.field private final a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/inmobi/ads/NativeVideoView;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/inmobi/ads/NativeVideoView;)V
    .locals 1

    .prologue
    .line 136
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 137
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/inmobi/ads/NativeVideoView$c;->a:Ljava/lang/ref/WeakReference;

    .line 138
    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 8

    .prologue
    const/4 v7, 0x1

    .line 142
    iget-object v0, p0, Lcom/inmobi/ads/NativeVideoView$c;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inmobi/ads/NativeVideoView;

    .line 143
    if-eqz v0, :cond_0

    .line 144
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 186
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 187
    return-void

    .line 148
    :pswitch_0
    invoke-virtual {v0}, Lcom/inmobi/ads/NativeVideoView;->getDuration()I

    move-result v3

    .line 149
    invoke-virtual {v0}, Lcom/inmobi/ads/NativeVideoView;->getCurrentPosition()I

    move-result v4

    .line 151
    const/4 v1, -0x1

    if-eq v3, v1, :cond_4

    .line 152
    if-eqz v4, :cond_4

    .line 153
    invoke-virtual {v0}, Lcom/inmobi/ads/NativeVideoView;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/inmobi/ads/az;

    .line 154
    invoke-virtual {v1}, Lcom/inmobi/ads/az;->v()Ljava/util/Map;

    move-result-object v2

    const-string v5, "didCompleteQ1"

    invoke-interface {v2, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_1

    .line 155
    mul-int/lit8 v2, v4, 0x4

    sub-int/2addr v2, v3

    if-ltz v2, :cond_1

    .line 156
    invoke-virtual {v1}, Lcom/inmobi/ads/az;->v()Ljava/util/Map;

    move-result-object v2

    const-string v5, "didCompleteQ1"

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-interface {v2, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 157
    invoke-virtual {v0}, Lcom/inmobi/ads/NativeVideoView;->getQuartileCompletedListener()Lcom/inmobi/ads/NativeVideoView$b;

    move-result-object v2

    const/4 v5, 0x0

    invoke-interface {v2, v5}, Lcom/inmobi/ads/NativeVideoView$b;->a(I)V

    .line 160
    :cond_1
    invoke-virtual {v1}, Lcom/inmobi/ads/az;->v()Ljava/util/Map;

    move-result-object v2

    const-string v5, "didCompleteQ2"

    invoke-interface {v2, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_2

    .line 161
    mul-int/lit8 v2, v4, 0x2

    sub-int/2addr v2, v3

    if-ltz v2, :cond_2

    .line 162
    invoke-virtual {v1}, Lcom/inmobi/ads/az;->v()Ljava/util/Map;

    move-result-object v2

    const-string v5, "didCompleteQ2"

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-interface {v2, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 163
    invoke-virtual {v0}, Lcom/inmobi/ads/NativeVideoView;->getQuartileCompletedListener()Lcom/inmobi/ads/NativeVideoView$b;

    move-result-object v2

    invoke-interface {v2, v7}, Lcom/inmobi/ads/NativeVideoView$b;->a(I)V

    .line 166
    :cond_2
    invoke-virtual {v1}, Lcom/inmobi/ads/az;->v()Ljava/util/Map;

    move-result-object v2

    const-string v5, "didCompleteQ3"

    invoke-interface {v2, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_3

    .line 167
    mul-int/lit8 v2, v4, 0x4

    mul-int/lit8 v5, v3, 0x3

    sub-int/2addr v2, v5

    if-ltz v2, :cond_3

    .line 168
    invoke-virtual {v1}, Lcom/inmobi/ads/az;->v()Ljava/util/Map;

    move-result-object v2

    const-string v5, "didCompleteQ3"

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-interface {v2, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 169
    invoke-virtual {v0}, Lcom/inmobi/ads/NativeVideoView;->getQuartileCompletedListener()Lcom/inmobi/ads/NativeVideoView$b;

    move-result-object v2

    const/4 v5, 0x2

    invoke-interface {v2, v5}, Lcom/inmobi/ads/NativeVideoView$b;->a(I)V

    .line 173
    :cond_3
    invoke-virtual {v1}, Lcom/inmobi/ads/az;->v()Ljava/util/Map;

    move-result-object v2

    const-string v5, "didQ4Fire"

    invoke-interface {v2, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 174
    int-to-float v4, v4

    int-to-float v3, v3

    div-float v3, v4, v3

    const/high16 v4, 0x42c80000    # 100.0f

    mul-float/2addr v3, v4

    .line 1210
    iget v1, v1, Lcom/inmobi/ads/az;->E:I

    .line 174
    int-to-float v1, v1

    cmpl-float v1, v3, v1

    if-lez v1, :cond_4

    if-nez v2, :cond_4

    .line 176
    invoke-virtual {v0}, Lcom/inmobi/ads/NativeVideoView;->getPlaybackEventListener()Lcom/inmobi/ads/NativeVideoView$OnPlaybackEventListener;

    move-result-object v0

    sget-object v1, Lcom/inmobi/ads/NativeVideoView$OnPlaybackEventListener$PlaybackEvent;->PLAYBACK_EVENT_FIRE_Q4:Lcom/inmobi/ads/NativeVideoView$OnPlaybackEventListener$PlaybackEvent;

    invoke-interface {v0, v1}, Lcom/inmobi/ads/NativeVideoView$OnPlaybackEventListener;->a(Lcom/inmobi/ads/NativeVideoView$OnPlaybackEventListener$PlaybackEvent;)V

    .line 180
    :cond_4
    const-wide/16 v0, 0x3e8

    invoke-virtual {p0, v7, v0, v1}, Lcom/inmobi/ads/NativeVideoView$c;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    .line 144
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
