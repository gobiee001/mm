.class Lcom/adcolony/sdk/b;
.super Landroid/app/Activity;
.source "SourceFile"

# interfaces
.implements Lcom/newrelic/agent/android/api/v2/TraceFieldInterface;


# annotations
.annotation build Lcom/newrelic/agent/android/instrumentation/Instrumented;
.end annotation


# instance fields
.field final a:I

.field final b:I

.field c:Lcom/adcolony/sdk/c;

.field d:I

.field e:Ljava/lang/String;

.field f:I

.field g:Z

.field h:Z

.field i:Z

.field j:Z

.field k:Z

.field l:Z

.field m:Lcom/adcolony/sdk/f;


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 27
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 28
    const/4 v0, 0x0

    iput v0, p0, Lcom/adcolony/sdk/b;->a:I

    .line 29
    const/4 v0, 0x1

    iput v0, p0, Lcom/adcolony/sdk/b;->b:I

    .line 33
    const/4 v0, -0x1

    iput v0, p0, Lcom/adcolony/sdk/b;->d:I

    return-void
.end method


# virtual methods
.method a()V
    .locals 5

    .prologue
    .line 280
    invoke-static {}, Lcom/adcolony/sdk/a;->a()Lcom/adcolony/sdk/l;

    move-result-object v0

    .line 281
    iget-object v1, p0, Lcom/adcolony/sdk/b;->c:Lcom/adcolony/sdk/c;

    if-nez v1, :cond_0

    .line 282
    invoke-virtual {v0}, Lcom/adcolony/sdk/l;->s()Lcom/adcolony/sdk/c;

    move-result-object v1

    iput-object v1, p0, Lcom/adcolony/sdk/b;->c:Lcom/adcolony/sdk/c;

    .line 285
    :cond_0
    iget-object v1, p0, Lcom/adcolony/sdk/b;->c:Lcom/adcolony/sdk/c;

    if-nez v1, :cond_2

    .line 310
    :cond_1
    :goto_0
    return-void

    .line 292
    :cond_2
    iget-object v1, p0, Lcom/adcolony/sdk/b;->c:Lcom/adcolony/sdk/c;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/adcolony/sdk/c;->b(Z)V

    .line 293
    invoke-static {}, Lcom/adcolony/sdk/az;->g()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 294
    iget-object v1, p0, Lcom/adcolony/sdk/b;->c:Lcom/adcolony/sdk/c;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/adcolony/sdk/c;->b(Z)V

    .line 296
    :cond_3
    iget-object v1, v0, Lcom/adcolony/sdk/l;->c:Lcom/adcolony/sdk/n;

    invoke-virtual {v1}, Lcom/adcolony/sdk/n;->q()I

    move-result v1

    .line 297
    iget-boolean v2, p0, Lcom/adcolony/sdk/b;->j:Z

    if-eqz v2, :cond_4

    iget-object v0, v0, Lcom/adcolony/sdk/l;->c:Lcom/adcolony/sdk/n;

    invoke-virtual {v0}, Lcom/adcolony/sdk/n;->r()I

    move-result v0

    invoke-static {}, Lcom/adcolony/sdk/a;->c()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/adcolony/sdk/az;->b(Landroid/app/Activity;)I

    move-result v2

    sub-int/2addr v0, v2

    .line 298
    :goto_1
    if-lez v1, :cond_1

    if-lez v0, :cond_1

    .line 300
    invoke-static {}, Lcom/adcolony/sdk/y;->a()Lorg/json/JSONObject;

    move-result-object v2

    .line 301
    const-string v3, "screen_width"

    invoke-static {v2, v3, v1}, Lcom/adcolony/sdk/y;->b(Lorg/json/JSONObject;Ljava/lang/String;I)Z

    .line 302
    const-string v3, "screen_height"

    invoke-static {v2, v3, v0}, Lcom/adcolony/sdk/y;->b(Lorg/json/JSONObject;Ljava/lang/String;I)Z

    .line 303
    const-string v3, "ad_session_id"

    iget-object v4, p0, Lcom/adcolony/sdk/b;->c:Lcom/adcolony/sdk/c;

    invoke-virtual {v4}, Lcom/adcolony/sdk/c;->b()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/adcolony/sdk/y;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Z

    .line 304
    const-string v3, "id"

    iget-object v4, p0, Lcom/adcolony/sdk/b;->c:Lcom/adcolony/sdk/c;

    invoke-virtual {v4}, Lcom/adcolony/sdk/c;->d()I

    move-result v4

    invoke-static {v2, v3, v4}, Lcom/adcolony/sdk/y;->b(Lorg/json/JSONObject;Ljava/lang/String;I)Z

    .line 305
    iget-object v3, p0, Lcom/adcolony/sdk/b;->c:Lcom/adcolony/sdk/c;

    new-instance v4, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v4, v1, v0}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v4}, Lcom/adcolony/sdk/c;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 306
    iget-object v3, p0, Lcom/adcolony/sdk/b;->c:Lcom/adcolony/sdk/c;

    invoke-virtual {v3, v1}, Lcom/adcolony/sdk/c;->b(I)V

    .line 307
    iget-object v1, p0, Lcom/adcolony/sdk/b;->c:Lcom/adcolony/sdk/c;

    invoke-virtual {v1, v0}, Lcom/adcolony/sdk/c;->a(I)V

    .line 308
    new-instance v0, Lcom/adcolony/sdk/af;

    const-string v1, "AdContainer.on_orientation_change"

    iget-object v3, p0, Lcom/adcolony/sdk/b;->c:Lcom/adcolony/sdk/c;

    invoke-virtual {v3}, Lcom/adcolony/sdk/c;->c()I

    move-result v3

    invoke-direct {v0, v1, v3, v2}, Lcom/adcolony/sdk/af;-><init>(Ljava/lang/String;ILorg/json/JSONObject;)V

    invoke-virtual {v0}, Lcom/adcolony/sdk/af;->b()V

    goto :goto_0

    .line 297
    :cond_4
    iget-object v0, v0, Lcom/adcolony/sdk/l;->c:Lcom/adcolony/sdk/n;

    invoke-virtual {v0}, Lcom/adcolony/sdk/n;->r()I

    move-result v0

    goto :goto_1
.end method

.method a(I)V
    .locals 1

    .prologue
    .line 356
    packed-switch p1, :pswitch_data_0

    .line 364
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/adcolony/sdk/b;->setRequestedOrientation(I)V

    .line 366
    :goto_0
    iput p1, p0, Lcom/adcolony/sdk/b;->d:I

    .line 367
    return-void

    .line 358
    :pswitch_0
    const/4 v0, 0x7

    invoke-virtual {p0, v0}, Lcom/adcolony/sdk/b;->setRequestedOrientation(I)V

    goto :goto_0

    .line 361
    :pswitch_1
    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Lcom/adcolony/sdk/b;->setRequestedOrientation(I)V

    goto :goto_0

    .line 356
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method a(Lcom/adcolony/sdk/af;)V
    .locals 6

    .prologue
    const/4 v3, 0x1

    const/4 v5, 0x0

    .line 320
    invoke-virtual {p1}, Lcom/adcolony/sdk/af;->c()Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "status"

    invoke-static {v0, v1}, Lcom/adcolony/sdk/y;->c(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v0

    .line 321
    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    if-eqz v0, :cond_0

    const/4 v1, 0x6

    if-eq v0, v1, :cond_0

    if-ne v0, v3, :cond_1

    :cond_0
    iget-boolean v0, p0, Lcom/adcolony/sdk/b;->g:Z

    if-eqz v0, :cond_2

    .line 349
    :cond_1
    :goto_0
    return-void

    .line 324
    :cond_2
    invoke-static {}, Lcom/adcolony/sdk/a;->a()Lcom/adcolony/sdk/l;

    move-result-object v1

    .line 325
    invoke-virtual {v1}, Lcom/adcolony/sdk/l;->r()Lcom/adcolony/sdk/o;

    move-result-object v0

    .line 326
    invoke-virtual {v1, p1}, Lcom/adcolony/sdk/l;->b(Lcom/adcolony/sdk/af;)V

    .line 327
    invoke-virtual {v0}, Lcom/adcolony/sdk/o;->b()Landroid/app/AlertDialog;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 328
    invoke-virtual {v0}, Lcom/adcolony/sdk/o;->b()Landroid/app/AlertDialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog;->dismiss()V

    .line 329
    invoke-virtual {v0, v5}, Lcom/adcolony/sdk/o;->a(Landroid/app/AlertDialog;)V

    .line 331
    :cond_3
    iget-boolean v0, p0, Lcom/adcolony/sdk/b;->i:Z

    if-nez v0, :cond_4

    .line 332
    invoke-virtual {p0}, Lcom/adcolony/sdk/b;->finish()V

    .line 334
    :cond_4
    iput-boolean v3, p0, Lcom/adcolony/sdk/b;->g:Z

    .line 335
    invoke-virtual {p0}, Lcom/adcolony/sdk/b;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 336
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 337
    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lcom/adcolony/sdk/l;->c(Z)V

    .line 340
    invoke-static {}, Lcom/adcolony/sdk/y;->a()Lorg/json/JSONObject;

    move-result-object v0

    .line 341
    const-string v2, "id"

    iget-object v3, p0, Lcom/adcolony/sdk/b;->c:Lcom/adcolony/sdk/c;

    invoke-virtual {v3}, Lcom/adcolony/sdk/c;->b()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/adcolony/sdk/y;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Z

    .line 342
    new-instance v2, Lcom/adcolony/sdk/af;

    const-string v3, "AdSession.on_close"

    iget-object v4, p0, Lcom/adcolony/sdk/b;->c:Lcom/adcolony/sdk/c;

    invoke-virtual {v4}, Lcom/adcolony/sdk/c;->c()I

    move-result v4

    invoke-direct {v2, v3, v4, v0}, Lcom/adcolony/sdk/af;-><init>(Ljava/lang/String;ILorg/json/JSONObject;)V

    invoke-virtual {v2}, Lcom/adcolony/sdk/af;->b()V

    .line 345
    invoke-virtual {v1, v5}, Lcom/adcolony/sdk/l;->a(Lcom/adcolony/sdk/c;)V

    .line 346
    invoke-virtual {v1, v5}, Lcom/adcolony/sdk/l;->a(Lcom/adcolony/sdk/AdColonyInterstitial;)V

    .line 347
    invoke-virtual {v1, v5}, Lcom/adcolony/sdk/l;->a(Lcom/adcolony/sdk/bc;)V

    .line 348
    invoke-static {}, Lcom/adcolony/sdk/a;->a()Lcom/adcolony/sdk/l;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adcolony/sdk/l;->m()Lcom/adcolony/sdk/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adcolony/sdk/d;->c()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    iget-object v1, p0, Lcom/adcolony/sdk/b;->c:Lcom/adcolony/sdk/c;

    invoke-virtual {v1}, Lcom/adcolony/sdk/c;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method a(Z)V
    .locals 3

    .prologue
    .line 148
    invoke-static {}, Lcom/adcolony/sdk/a;->a()Lcom/adcolony/sdk/l;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adcolony/sdk/l;->m()Lcom/adcolony/sdk/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adcolony/sdk/d;->g()Ljava/util/HashMap;

    move-result-object v0

    iget-object v1, p0, Lcom/adcolony/sdk/b;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adcolony/sdk/f;

    iput-object v0, p0, Lcom/adcolony/sdk/b;->m:Lcom/adcolony/sdk/f;

    .line 151
    iget-object v0, p0, Lcom/adcolony/sdk/b;->c:Lcom/adcolony/sdk/c;

    invoke-virtual {v0}, Lcom/adcolony/sdk/c;->e()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 152
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/adcolony/sdk/b;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_1

    .line 153
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 154
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adcolony/sdk/ba;

    .line 155
    invoke-virtual {v0}, Lcom/adcolony/sdk/ba;->j()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v0}, Lcom/adcolony/sdk/ba;->i()Landroid/media/MediaPlayer;

    move-result-object v2

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 156
    invoke-virtual {v0}, Lcom/adcolony/sdk/ba;->f()Z

    goto :goto_0

    .line 159
    :cond_1
    iget-object v0, p0, Lcom/adcolony/sdk/b;->m:Lcom/adcolony/sdk/f;

    if-eqz v0, :cond_2

    .line 160
    iget-object v0, p0, Lcom/adcolony/sdk/b;->m:Lcom/adcolony/sdk/f;

    invoke-virtual {v0}, Lcom/adcolony/sdk/f;->a()V

    .line 164
    :cond_2
    invoke-static {}, Lcom/adcolony/sdk/a;->a()Lcom/adcolony/sdk/l;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adcolony/sdk/l;->u()Lcom/adcolony/sdk/AdColonyInterstitial;

    move-result-object v0

    .line 165
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/adcolony/sdk/AdColonyInterstitial;->g()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Lcom/adcolony/sdk/AdColonyInterstitial;->h()Lcom/adcolony/sdk/g;

    move-result-object v1

    invoke-virtual {v1}, Lcom/adcolony/sdk/g;->e()Lcom/integralads/avid/library/adcolony/session/AvidManagedVideoAdSession;

    move-result-object v1

    if-eqz v1, :cond_3

    if-eqz p1, :cond_3

    iget-boolean v1, p0, Lcom/adcolony/sdk/b;->k:Z

    if-eqz v1, :cond_3

    .line 166
    invoke-virtual {v0}, Lcom/adcolony/sdk/AdColonyInterstitial;->h()Lcom/adcolony/sdk/g;

    move-result-object v0

    const-string v1, "pause"

    invoke-virtual {v0, v1}, Lcom/adcolony/sdk/g;->b(Ljava/lang/String;)V

    .line 169
    :cond_3
    return-void
.end method

.method b(Z)V
    .locals 3

    .prologue
    .line 190
    iget-object v0, p0, Lcom/adcolony/sdk/b;->c:Lcom/adcolony/sdk/c;

    invoke-virtual {v0}, Lcom/adcolony/sdk/c;->e()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 191
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 192
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 193
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adcolony/sdk/ba;

    .line 194
    invoke-virtual {v0}, Lcom/adcolony/sdk/ba;->j()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v0}, Lcom/adcolony/sdk/ba;->i()Landroid/media/MediaPlayer;

    move-result-object v2

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {}, Lcom/adcolony/sdk/a;->a()Lcom/adcolony/sdk/l;

    move-result-object v2

    invoke-virtual {v2}, Lcom/adcolony/sdk/l;->r()Lcom/adcolony/sdk/o;

    move-result-object v2

    invoke-virtual {v2}, Lcom/adcolony/sdk/o;->c()Z

    move-result v2

    if-nez v2, :cond_0

    .line 195
    invoke-virtual {v0}, Lcom/adcolony/sdk/ba;->e()Z

    goto :goto_0

    .line 198
    :cond_1
    iget-object v0, p0, Lcom/adcolony/sdk/b;->m:Lcom/adcolony/sdk/f;

    if-eqz v0, :cond_2

    .line 199
    iget-object v0, p0, Lcom/adcolony/sdk/b;->m:Lcom/adcolony/sdk/f;

    invoke-virtual {v0}, Lcom/adcolony/sdk/f;->b()V

    .line 203
    :cond_2
    invoke-static {}, Lcom/adcolony/sdk/a;->a()Lcom/adcolony/sdk/l;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adcolony/sdk/l;->u()Lcom/adcolony/sdk/AdColonyInterstitial;

    move-result-object v0

    .line 204
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/adcolony/sdk/AdColonyInterstitial;->g()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {v0}, Lcom/adcolony/sdk/AdColonyInterstitial;->h()Lcom/adcolony/sdk/g;

    move-result-object v1

    invoke-virtual {v1}, Lcom/adcolony/sdk/g;->e()Lcom/integralads/avid/library/adcolony/session/AvidManagedVideoAdSession;

    move-result-object v1

    if-eqz v1, :cond_4

    if-eqz p1, :cond_3

    if-eqz p1, :cond_4

    iget-boolean v1, p0, Lcom/adcolony/sdk/b;->k:Z

    if-nez v1, :cond_4

    :cond_3
    iget-boolean v1, p0, Lcom/adcolony/sdk/b;->l:Z

    if-eqz v1, :cond_4

    .line 205
    invoke-virtual {v0}, Lcom/adcolony/sdk/AdColonyInterstitial;->h()Lcom/adcolony/sdk/g;

    move-result-object v0

    const-string v1, "resume"

    invoke-virtual {v0, v1}, Lcom/adcolony/sdk/g;->b(Ljava/lang/String;)V

    .line 207
    :cond_4
    return-void
.end method

.method public onBackPressed()V
    .locals 4

    .prologue
    .line 271
    invoke-static {}, Lcom/adcolony/sdk/y;->a()Lorg/json/JSONObject;

    move-result-object v0

    .line 272
    const-string v1, "id"

    iget-object v2, p0, Lcom/adcolony/sdk/b;->c:Lcom/adcolony/sdk/c;

    invoke-virtual {v2}, Lcom/adcolony/sdk/c;->b()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/adcolony/sdk/y;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Z

    .line 273
    new-instance v1, Lcom/adcolony/sdk/af;

    const-string v2, "AdSession.on_back_button"

    iget-object v3, p0, Lcom/adcolony/sdk/b;->c:Lcom/adcolony/sdk/c;

    invoke-virtual {v3}, Lcom/adcolony/sdk/c;->c()I

    move-result v3

    invoke-direct {v1, v2, v3, v0}, Lcom/adcolony/sdk/af;-><init>(Ljava/lang/String;ILorg/json/JSONObject;)V

    invoke-virtual {v1}, Lcom/adcolony/sdk/af;->b()V

    .line 274
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .param p1, "new_config"    # Landroid/content/res/Configuration;

    .prologue
    .line 260
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 261
    invoke-virtual {p0}, Lcom/adcolony/sdk/b;->a()V

    .line 262
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 7

    .prologue
    const/16 v6, 0x800

    const/16 v5, 0x400

    const/4 v3, 0x0

    const/4 v4, 0x1

    const-string v0, "b"

    invoke-static {v0}, Lcom/newrelic/agent/android/tracing/TraceMachine;->startTracing(Ljava/lang/String;)V

    :try_start_0
    iget-object v0, p0, Lcom/adcolony/sdk/b;->_nr_trace:Lcom/newrelic/agent/android/tracing/Trace;

    const-string v1, "b#onCreate"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/newrelic/agent/android/tracing/TraceMachine;->enterMethod(Lcom/newrelic/agent/android/tracing/Trace;Ljava/lang/String;Ljava/util/ArrayList;)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    .line 51
    :goto_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 52
    invoke-static {}, Lcom/adcolony/sdk/a;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/adcolony/sdk/a;->a()Lcom/adcolony/sdk/l;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adcolony/sdk/l;->s()Lcom/adcolony/sdk/c;

    move-result-object v0

    if-nez v0, :cond_1

    .line 53
    :cond_0
    invoke-virtual {p0}, Lcom/adcolony/sdk/b;->finish()V

    .line 54
    invoke-static {}, Lcom/newrelic/agent/android/tracing/TraceMachine;->exitMethod()V

    .line 131
    :goto_1
    return-void

    .line 4294967295
    :catch_0
    move-exception v0

    const/4 v0, 0x0

    :try_start_1
    const-string v1, "b#onCreate"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/newrelic/agent/android/tracing/TraceMachine;->enterMethod(Lcom/newrelic/agent/android/tracing/Trace;Ljava/lang/String;Ljava/util/ArrayList;)V
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 56
    :cond_1
    invoke-static {}, Lcom/adcolony/sdk/a;->a()Lcom/adcolony/sdk/l;

    move-result-object v1

    .line 59
    iput-boolean v3, p0, Lcom/adcolony/sdk/b;->i:Z

    .line 62
    invoke-virtual {v1}, Lcom/adcolony/sdk/l;->s()Lcom/adcolony/sdk/c;

    move-result-object v0

    iput-object v0, p0, Lcom/adcolony/sdk/b;->c:Lcom/adcolony/sdk/c;

    .line 65
    iget-object v0, p0, Lcom/adcolony/sdk/b;->c:Lcom/adcolony/sdk/c;

    invoke-virtual {v0, v3}, Lcom/adcolony/sdk/c;->b(Z)V

    .line 66
    invoke-static {}, Lcom/adcolony/sdk/az;->g()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 67
    iget-object v0, p0, Lcom/adcolony/sdk/b;->c:Lcom/adcolony/sdk/c;

    invoke-virtual {v0, v4}, Lcom/adcolony/sdk/c;->b(Z)V

    .line 69
    :cond_2
    iget-object v0, p0, Lcom/adcolony/sdk/b;->c:Lcom/adcolony/sdk/c;

    invoke-virtual {v0}, Lcom/adcolony/sdk/c;->b()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/adcolony/sdk/b;->e:Ljava/lang/String;

    .line 70
    iget-object v0, p0, Lcom/adcolony/sdk/b;->c:Lcom/adcolony/sdk/c;

    invoke-virtual {v0}, Lcom/adcolony/sdk/c;->c()I

    move-result v0

    iput v0, p0, Lcom/adcolony/sdk/b;->f:I

    .line 71
    invoke-static {}, Lcom/adcolony/sdk/a;->a()Lcom/adcolony/sdk/l;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adcolony/sdk/l;->m()Lcom/adcolony/sdk/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adcolony/sdk/d;->g()Ljava/util/HashMap;

    move-result-object v0

    iget-object v2, p0, Lcom/adcolony/sdk/b;->e:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adcolony/sdk/f;

    iput-object v0, p0, Lcom/adcolony/sdk/b;->m:Lcom/adcolony/sdk/f;

    .line 74
    invoke-virtual {v1}, Lcom/adcolony/sdk/l;->d()Lcom/adcolony/sdk/AdColonyAppOptions;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adcolony/sdk/AdColonyAppOptions;->getMultiWindowEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lcom/adcolony/sdk/b;->j:Z

    .line 75
    iget-boolean v0, p0, Lcom/adcolony/sdk/b;->j:Z

    if-eqz v0, :cond_5

    .line 76
    invoke-virtual {p0}, Lcom/adcolony/sdk/b;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/view/Window;->addFlags(I)V

    .line 77
    invoke-virtual {p0}, Lcom/adcolony/sdk/b;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/Window;->clearFlags(I)V

    .line 82
    :goto_2
    invoke-virtual {p0, v4}, Lcom/adcolony/sdk/b;->requestWindowFeature(I)Z

    .line 83
    invoke-virtual {p0}, Lcom/adcolony/sdk/b;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const/high16 v2, -0x1000000

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 86
    invoke-virtual {v1}, Lcom/adcolony/sdk/l;->d()Lcom/adcolony/sdk/AdColonyAppOptions;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adcolony/sdk/AdColonyAppOptions;->getKeepScreenOn()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 87
    invoke-virtual {p0}, Lcom/adcolony/sdk/b;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 92
    :cond_3
    iget-object v0, p0, Lcom/adcolony/sdk/b;->c:Lcom/adcolony/sdk/c;

    invoke-virtual {v0}, Lcom/adcolony/sdk/c;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 93
    if-eqz v0, :cond_4

    .line 94
    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/adcolony/sdk/b;->c:Lcom/adcolony/sdk/c;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 96
    :cond_4
    iget-object v0, p0, Lcom/adcolony/sdk/b;->c:Lcom/adcolony/sdk/c;

    invoke-virtual {p0, v0}, Lcom/adcolony/sdk/b;->setContentView(Landroid/view/View;)V

    .line 98
    iget-object v0, p0, Lcom/adcolony/sdk/b;->c:Lcom/adcolony/sdk/c;

    invoke-virtual {v0}, Lcom/adcolony/sdk/c;->n()Ljava/util/ArrayList;

    move-result-object v0

    const-string v1, "AdSession.finish_fullscreen_ad"

    new-instance v2, Lcom/adcolony/sdk/b$1;

    invoke-direct {v2, p0}, Lcom/adcolony/sdk/b$1;-><init>(Lcom/adcolony/sdk/b;)V

    invoke-static {v1, v2, v4}, Lcom/adcolony/sdk/a;->a(Ljava/lang/String;Lcom/adcolony/sdk/ah;Z)Lcom/adcolony/sdk/ah;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 104
    iget-object v0, p0, Lcom/adcolony/sdk/b;->c:Lcom/adcolony/sdk/c;

    invoke-virtual {v0}, Lcom/adcolony/sdk/c;->n()Ljava/util/ArrayList;

    move-result-object v0

    const-string v1, "AdSession.change_orientation"

    new-instance v2, Lcom/adcolony/sdk/b$2;

    invoke-direct {v2, p0}, Lcom/adcolony/sdk/b$2;-><init>(Lcom/adcolony/sdk/b;)V

    invoke-static {v1, v2, v4}, Lcom/adcolony/sdk/a;->a(Ljava/lang/String;Lcom/adcolony/sdk/ah;Z)Lcom/adcolony/sdk/ah;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 113
    iget-object v0, p0, Lcom/adcolony/sdk/b;->c:Lcom/adcolony/sdk/c;

    invoke-virtual {v0}, Lcom/adcolony/sdk/c;->o()Ljava/util/ArrayList;

    move-result-object v0

    const-string v1, "AdSession.finish_fullscreen_ad"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 114
    iget-object v0, p0, Lcom/adcolony/sdk/b;->c:Lcom/adcolony/sdk/c;

    invoke-virtual {v0}, Lcom/adcolony/sdk/c;->o()Ljava/util/ArrayList;

    move-result-object v0

    const-string v1, "AdSession.change_orientation"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 116
    iget v0, p0, Lcom/adcolony/sdk/b;->d:I

    invoke-virtual {p0, v0}, Lcom/adcolony/sdk/b;->a(I)V

    .line 118
    iget-object v0, p0, Lcom/adcolony/sdk/b;->c:Lcom/adcolony/sdk/c;

    invoke-virtual {v0}, Lcom/adcolony/sdk/c;->t()Z

    move-result v0

    if-nez v0, :cond_6

    .line 120
    invoke-static {}, Lcom/adcolony/sdk/y;->a()Lorg/json/JSONObject;

    move-result-object v0

    .line 121
    const-string v1, "id"

    iget-object v2, p0, Lcom/adcolony/sdk/b;->c:Lcom/adcolony/sdk/c;

    invoke-virtual {v2}, Lcom/adcolony/sdk/c;->b()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/adcolony/sdk/y;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Z

    .line 122
    const-string v1, "screen_width"

    iget-object v2, p0, Lcom/adcolony/sdk/b;->c:Lcom/adcolony/sdk/c;

    invoke-virtual {v2}, Lcom/adcolony/sdk/c;->q()I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/adcolony/sdk/y;->b(Lorg/json/JSONObject;Ljava/lang/String;I)Z

    .line 123
    const-string v1, "screen_height"

    iget-object v2, p0, Lcom/adcolony/sdk/b;->c:Lcom/adcolony/sdk/c;

    invoke-virtual {v2}, Lcom/adcolony/sdk/c;->p()I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/adcolony/sdk/y;->b(Lorg/json/JSONObject;Ljava/lang/String;I)Z

    .line 124
    sget-object v1, Lcom/adcolony/sdk/aa;->b:Lcom/adcolony/sdk/aa;

    const-string v2, "AdSession.on_fullscreen_ad_started"

    invoke-virtual {v1, v2}, Lcom/adcolony/sdk/aa;->b(Ljava/lang/Object;)Lcom/adcolony/sdk/aa;

    .line 125
    new-instance v1, Lcom/adcolony/sdk/af;

    const-string v2, "AdSession.on_fullscreen_ad_started"

    iget-object v3, p0, Lcom/adcolony/sdk/b;->c:Lcom/adcolony/sdk/c;

    invoke-virtual {v3}, Lcom/adcolony/sdk/c;->c()I

    move-result v3

    invoke-direct {v1, v2, v3, v0}, Lcom/adcolony/sdk/af;-><init>(Ljava/lang/String;ILorg/json/JSONObject;)V

    invoke-virtual {v1}, Lcom/adcolony/sdk/af;->b()V

    .line 126
    iget-object v0, p0, Lcom/adcolony/sdk/b;->c:Lcom/adcolony/sdk/c;

    invoke-virtual {v0, v4}, Lcom/adcolony/sdk/c;->c(Z)V

    .line 131
    :goto_3
    invoke-static {}, Lcom/newrelic/agent/android/tracing/TraceMachine;->exitMethod()V

    goto/16 :goto_1

    .line 79
    :cond_5
    invoke-virtual {p0}, Lcom/adcolony/sdk/b;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/Window;->addFlags(I)V

    .line 80
    invoke-virtual {p0}, Lcom/adcolony/sdk/b;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/view/Window;->clearFlags(I)V

    goto/16 :goto_2

    .line 129
    :cond_6
    invoke-virtual {p0}, Lcom/adcolony/sdk/b;->a()V

    goto :goto_3
.end method

.method public onDestroy()V
    .locals 4

    .prologue
    .line 237
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 238
    invoke-static {}, Lcom/adcolony/sdk/a;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adcolony/sdk/b;->c:Lcom/adcolony/sdk/c;

    if-nez v0, :cond_1

    .line 252
    :cond_0
    :goto_0
    return-void

    .line 246
    :cond_1
    iget-boolean v0, p0, Lcom/adcolony/sdk/b;->g:Z

    if-nez v0, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_2

    invoke-static {}, Lcom/adcolony/sdk/az;->g()Z

    move-result v0

    if-nez v0, :cond_0

    :cond_2
    iget-object v0, p0, Lcom/adcolony/sdk/b;->c:Lcom/adcolony/sdk/c;

    invoke-virtual {v0}, Lcom/adcolony/sdk/c;->s()Z

    move-result v0

    if-nez v0, :cond_0

    .line 247
    invoke-static {}, Lcom/adcolony/sdk/y;->a()Lorg/json/JSONObject;

    move-result-object v0

    .line 248
    const-string v1, "id"

    iget-object v2, p0, Lcom/adcolony/sdk/b;->c:Lcom/adcolony/sdk/c;

    invoke-virtual {v2}, Lcom/adcolony/sdk/c;->b()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/adcolony/sdk/y;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Z

    .line 249
    new-instance v1, Lcom/adcolony/sdk/af;

    const-string v2, "AdSession.on_error"

    iget-object v3, p0, Lcom/adcolony/sdk/b;->c:Lcom/adcolony/sdk/c;

    invoke-virtual {v3}, Lcom/adcolony/sdk/c;->c()I

    move-result v3

    invoke-direct {v1, v2, v3, v0}, Lcom/adcolony/sdk/af;-><init>(Ljava/lang/String;ILorg/json/JSONObject;)V

    invoke-virtual {v1}, Lcom/adcolony/sdk/af;->b()V

    .line 250
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/adcolony/sdk/b;->i:Z

    goto :goto_0
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 138
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 139
    iget-boolean v0, p0, Lcom/adcolony/sdk/b;->h:Z

    invoke-virtual {p0, v0}, Lcom/adcolony/sdk/b;->a(Z)V

    .line 140
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/adcolony/sdk/b;->h:Z

    .line 141
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 176
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 179
    invoke-virtual {p0}, Lcom/adcolony/sdk/b;->a()V

    .line 180
    iget-boolean v0, p0, Lcom/adcolony/sdk/b;->h:Z

    invoke-virtual {p0, v0}, Lcom/adcolony/sdk/b;->b(Z)V

    .line 181
    iput-boolean v1, p0, Lcom/adcolony/sdk/b;->h:Z

    .line 182
    iput-boolean v1, p0, Lcom/adcolony/sdk/b;->l:Z

    .line 183
    return-void
.end method

.method protected onStart()V
    .locals 1

    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    invoke-static {}, Lcom/newrelic/agent/android/background/ApplicationStateMonitor;->getInstance()Lcom/newrelic/agent/android/background/ApplicationStateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/newrelic/agent/android/background/ApplicationStateMonitor;->activityStarted()V

    return-void
.end method

.method protected onStop()V
    .locals 1

    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    invoke-static {}, Lcom/newrelic/agent/android/background/ApplicationStateMonitor;->getInstance()Lcom/newrelic/agent/android/background/ApplicationStateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/newrelic/agent/android/background/ApplicationStateMonitor;->activityStopped()V

    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 3
    .param p1, "hasFocus"    # Z

    .prologue
    const/4 v2, 0x1

    .line 217
    if-eqz p1, :cond_1

    iget-boolean v0, p0, Lcom/adcolony/sdk/b;->h:Z

    if-eqz v0, :cond_1

    .line 219
    invoke-static {}, Lcom/adcolony/sdk/a;->a()Lcom/adcolony/sdk/l;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adcolony/sdk/l;->l()Lcom/adcolony/sdk/ao;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/adcolony/sdk/ao;->c(Z)V

    .line 220
    iget-boolean v0, p0, Lcom/adcolony/sdk/b;->h:Z

    invoke-virtual {p0, v0}, Lcom/adcolony/sdk/b;->b(Z)V

    .line 221
    iput-boolean v2, p0, Lcom/adcolony/sdk/b;->k:Z

    .line 230
    :cond_0
    :goto_0
    return-void

    .line 222
    :cond_1
    if-nez p1, :cond_0

    iget-boolean v0, p0, Lcom/adcolony/sdk/b;->h:Z

    if-eqz v0, :cond_0

    .line 223
    sget-object v0, Lcom/adcolony/sdk/aa;->d:Lcom/adcolony/sdk/aa;

    const-string v1, "Activity is active but window does not have focus, pausing."

    invoke-virtual {v0, v1}, Lcom/adcolony/sdk/aa;->b(Ljava/lang/Object;)Lcom/adcolony/sdk/aa;

    .line 226
    invoke-static {}, Lcom/adcolony/sdk/a;->a()Lcom/adcolony/sdk/l;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adcolony/sdk/l;->l()Lcom/adcolony/sdk/ao;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/adcolony/sdk/ao;->b(Z)V

    .line 227
    iget-boolean v0, p0, Lcom/adcolony/sdk/b;->h:Z

    invoke-virtual {p0, v0}, Lcom/adcolony/sdk/b;->a(Z)V

    .line 228
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/adcolony/sdk/b;->k:Z

    goto :goto_0
.end method
