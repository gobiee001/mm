.class public Lcom/chartboost/sdk/Chartboost;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/chartboost/sdk/Chartboost$CBMediation;,
        Lcom/chartboost/sdk/Chartboost$CBFramework;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static cacheInterstitial(Ljava/lang/String;)V
    .locals 7
    .param p0, "location"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    const/4 v5, 0x4

    .line 314
    const-string v0, "Chartboost.cacheInterstitial"

    invoke-static {v0, p0}, Lcom/chartboost/sdk/impl/ak;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 315
    invoke-static {}, Lcom/chartboost/sdk/h;->a()Lcom/chartboost/sdk/h;

    move-result-object v6

    .line 316
    if-eqz v6, :cond_0

    invoke-static {}, Lcom/chartboost/sdk/b;->a()Z

    move-result v0

    if-nez v0, :cond_1

    .line 344
    :cond_0
    :goto_0
    return-void

    .line 318
    :cond_1
    invoke-static {}, Lcom/chartboost/sdk/h;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 321
    invoke-static {}, Lcom/chartboost/sdk/impl/m;->a()Lcom/chartboost/sdk/impl/m;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/chartboost/sdk/impl/m;->a(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 322
    const-string v0, "Chartboost"

    const-string v1, "cacheInterstitial location cannot be empty"

    invoke-static {v0, v1}, Lcom/chartboost/sdk/Libraries/CBLogging;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 323
    iget-object v0, v6, Lcom/chartboost/sdk/h;->p:Landroid/os/Handler;

    new-instance v1, Lcom/chartboost/sdk/impl/a$a;

    iget-object v2, v6, Lcom/chartboost/sdk/h;->g:Lcom/chartboost/sdk/impl/a;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v3, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;->INVALID_LOCATION:Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

    invoke-direct {v1, v2, v5, p0, v3}, Lcom/chartboost/sdk/impl/a$a;-><init>(Lcom/chartboost/sdk/impl/a;ILjava/lang/String;Lcom/chartboost/sdk/Model/CBError$CBImpressionError;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 331
    :cond_2
    iget-object v0, v6, Lcom/chartboost/sdk/h;->m:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/chartboost/sdk/Model/e;

    .line 333
    iget-boolean v1, v0, Lcom/chartboost/sdk/Model/e;->y:Z

    if-eqz v1, :cond_3

    iget-boolean v1, v0, Lcom/chartboost/sdk/Model/e;->A:Z

    if-nez v1, :cond_4

    :cond_3
    iget-boolean v1, v0, Lcom/chartboost/sdk/Model/e;->e:Z

    if-eqz v1, :cond_5

    iget-boolean v0, v0, Lcom/chartboost/sdk/Model/e;->g:Z

    if-eqz v0, :cond_5

    .line 335
    :cond_4
    new-instance v0, Lcom/chartboost/sdk/impl/c$a;

    iget-object v1, v6, Lcom/chartboost/sdk/h;->f:Lcom/chartboost/sdk/impl/c;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v2, 0x3

    move-object v3, p0

    move-object v5, v4

    invoke-direct/range {v0 .. v5}, Lcom/chartboost/sdk/impl/c$a;-><init>(Lcom/chartboost/sdk/impl/c;ILjava/lang/String;Lcom/chartboost/sdk/impl/d;Lcom/chartboost/sdk/Model/CBError$CBImpressionError;)V

    .line 336
    iget-object v1, v6, Lcom/chartboost/sdk/h;->a:Ljava/util/concurrent/Executor;

    invoke-interface {v1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 338
    :cond_5
    iget-object v0, v6, Lcom/chartboost/sdk/h;->p:Landroid/os/Handler;

    new-instance v1, Lcom/chartboost/sdk/impl/a$a;

    iget-object v2, v6, Lcom/chartboost/sdk/h;->g:Lcom/chartboost/sdk/impl/a;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v3, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;->END_POINT_DISABLED:Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

    invoke-direct {v1, v2, v5, p0, v3}, Lcom/chartboost/sdk/impl/a$a;-><init>(Lcom/chartboost/sdk/impl/a;ILjava/lang/String;Lcom/chartboost/sdk/Model/CBError$CBImpressionError;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public static cacheRewardedVideo(Ljava/lang/String;)V
    .locals 7
    .param p0, "location"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    const/4 v5, 0x4

    .line 230
    const-string v0, "Chartboost.cacheRewardedVideo"

    invoke-static {v0, p0}, Lcom/chartboost/sdk/impl/ak;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 231
    invoke-static {}, Lcom/chartboost/sdk/h;->a()Lcom/chartboost/sdk/h;

    move-result-object v6

    .line 232
    if-eqz v6, :cond_0

    invoke-static {}, Lcom/chartboost/sdk/b;->a()Z

    move-result v0

    if-nez v0, :cond_1

    .line 258
    :cond_0
    :goto_0
    return-void

    .line 234
    :cond_1
    invoke-static {}, Lcom/chartboost/sdk/h;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 236
    invoke-static {}, Lcom/chartboost/sdk/impl/m;->a()Lcom/chartboost/sdk/impl/m;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/chartboost/sdk/impl/m;->a(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 237
    const-string v0, "Chartboost"

    const-string v1, "cacheRewardedVideo location cannot be empty"

    invoke-static {v0, v1}, Lcom/chartboost/sdk/Libraries/CBLogging;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 238
    iget-object v0, v6, Lcom/chartboost/sdk/h;->p:Landroid/os/Handler;

    new-instance v1, Lcom/chartboost/sdk/impl/a$a;

    iget-object v2, v6, Lcom/chartboost/sdk/h;->l:Lcom/chartboost/sdk/impl/a;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v3, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;->INVALID_LOCATION:Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

    invoke-direct {v1, v2, v5, p0, v3}, Lcom/chartboost/sdk/impl/a$a;-><init>(Lcom/chartboost/sdk/impl/a;ILjava/lang/String;Lcom/chartboost/sdk/Model/CBError$CBImpressionError;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 246
    :cond_2
    iget-object v0, v6, Lcom/chartboost/sdk/h;->m:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/chartboost/sdk/Model/e;

    .line 247
    iget-boolean v1, v0, Lcom/chartboost/sdk/Model/e;->y:Z

    if-eqz v1, :cond_3

    iget-boolean v1, v0, Lcom/chartboost/sdk/Model/e;->E:Z

    if-nez v1, :cond_4

    :cond_3
    iget-boolean v1, v0, Lcom/chartboost/sdk/Model/e;->e:Z

    if-eqz v1, :cond_5

    iget-boolean v0, v0, Lcom/chartboost/sdk/Model/e;->j:Z

    if-eqz v0, :cond_5

    .line 249
    :cond_4
    new-instance v0, Lcom/chartboost/sdk/impl/c$a;

    iget-object v1, v6, Lcom/chartboost/sdk/h;->k:Lcom/chartboost/sdk/impl/c;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v2, 0x3

    move-object v3, p0

    move-object v5, v4

    invoke-direct/range {v0 .. v5}, Lcom/chartboost/sdk/impl/c$a;-><init>(Lcom/chartboost/sdk/impl/c;ILjava/lang/String;Lcom/chartboost/sdk/impl/d;Lcom/chartboost/sdk/Model/CBError$CBImpressionError;)V

    .line 250
    iget-object v1, v6, Lcom/chartboost/sdk/h;->a:Ljava/util/concurrent/Executor;

    invoke-interface {v1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 252
    :cond_5
    iget-object v0, v6, Lcom/chartboost/sdk/h;->p:Landroid/os/Handler;

    new-instance v1, Lcom/chartboost/sdk/impl/a$a;

    iget-object v2, v6, Lcom/chartboost/sdk/h;->l:Lcom/chartboost/sdk/impl/a;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v3, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;->END_POINT_DISABLED:Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

    invoke-direct {v1, v2, v5, p0, v3}, Lcom/chartboost/sdk/impl/a$a;-><init>(Lcom/chartboost/sdk/impl/a;ILjava/lang/String;Lcom/chartboost/sdk/Model/CBError$CBImpressionError;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public static hasInterstitial(Ljava/lang/String;)Z
    .locals 3
    .param p0, "location"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 301
    const-string v1, "Chartboost.hasInterstitial"

    invoke-static {v1, p0}, Lcom/chartboost/sdk/impl/ak;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 302
    invoke-static {}, Lcom/chartboost/sdk/h;->a()Lcom/chartboost/sdk/h;

    move-result-object v1

    .line 303
    if-eqz v1, :cond_0

    invoke-static {}, Lcom/chartboost/sdk/b;->a()Z

    move-result v2

    if-nez v2, :cond_1

    .line 305
    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, v1, Lcom/chartboost/sdk/h;->f:Lcom/chartboost/sdk/impl/c;

    invoke-virtual {v1, p0}, Lcom/chartboost/sdk/impl/c;->a(Ljava/lang/String;)Lcom/chartboost/sdk/Model/a;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static hasRewardedVideo(Ljava/lang/String;)Z
    .locals 3
    .param p0, "location"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 218
    const-string v1, "Chartboost.hasRewardedVideo"

    invoke-static {v1, p0}, Lcom/chartboost/sdk/impl/ak;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 219
    invoke-static {}, Lcom/chartboost/sdk/h;->a()Lcom/chartboost/sdk/h;

    move-result-object v1

    .line 220
    if-eqz v1, :cond_0

    invoke-static {}, Lcom/chartboost/sdk/b;->a()Z

    move-result v2

    if-nez v2, :cond_1

    .line 222
    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, v1, Lcom/chartboost/sdk/h;->k:Lcom/chartboost/sdk/impl/c;

    invoke-virtual {v1, p0}, Lcom/chartboost/sdk/impl/c;->a(Ljava/lang/String;)Lcom/chartboost/sdk/Model/a;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static onBackPressed()Z
    .locals 1

    .prologue
    .line 191
    const-string v0, "Chartboost.onBackPressed"

    invoke-static {v0}, Lcom/chartboost/sdk/impl/ak;->a(Ljava/lang/String;)V

    .line 192
    invoke-static {}, Lcom/chartboost/sdk/h;->a()Lcom/chartboost/sdk/h;

    move-result-object v0

    .line 193
    if-nez v0, :cond_0

    .line 194
    const/4 v0, 0x0

    .line 196
    :goto_0
    return v0

    :cond_0
    iget-object v0, v0, Lcom/chartboost/sdk/h;->q:Lcom/chartboost/sdk/c;

    invoke-virtual {v0}, Lcom/chartboost/sdk/c;->i()Z

    move-result v0

    goto :goto_0
.end method

.method public static onCreate(Landroid/app/Activity;)V
    .locals 2
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    .line 122
    const-string v0, "Chartboost.onCreate"

    invoke-static {v0, p0}, Lcom/chartboost/sdk/impl/ak;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 123
    invoke-static {}, Lcom/chartboost/sdk/h;->a()Lcom/chartboost/sdk/h;

    move-result-object v0

    .line 124
    if-nez v0, :cond_1

    .line 129
    :cond_0
    :goto_0
    return-void

    .line 127
    :cond_1
    sget-boolean v1, Lcom/chartboost/sdk/i;->s:Z

    if-nez v1, :cond_0

    .line 128
    iget-object v0, v0, Lcom/chartboost/sdk/h;->q:Lcom/chartboost/sdk/c;

    invoke-virtual {v0, p0}, Lcom/chartboost/sdk/c;->b(Landroid/app/Activity;)V

    goto :goto_0
.end method

.method public static onDestroy(Landroid/app/Activity;)V
    .locals 2
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    .line 203
    const-string v0, "Chartboost.onDestroy"

    invoke-static {v0, p0}, Lcom/chartboost/sdk/impl/ak;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 204
    invoke-static {}, Lcom/chartboost/sdk/h;->a()Lcom/chartboost/sdk/h;

    move-result-object v0

    .line 205
    if-nez v0, :cond_1

    .line 210
    :cond_0
    :goto_0
    return-void

    .line 208
    :cond_1
    sget-boolean v1, Lcom/chartboost/sdk/i;->s:Z

    if-nez v1, :cond_0

    .line 209
    iget-object v0, v0, Lcom/chartboost/sdk/h;->q:Lcom/chartboost/sdk/c;

    invoke-virtual {v0, p0}, Lcom/chartboost/sdk/c;->j(Landroid/app/Activity;)V

    goto :goto_0
.end method

.method public static onPause(Landroid/app/Activity;)V
    .locals 2
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    .line 164
    const-string v0, "Chartboost.onPause"

    invoke-static {v0, p0}, Lcom/chartboost/sdk/impl/ak;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 165
    invoke-static {}, Lcom/chartboost/sdk/h;->a()Lcom/chartboost/sdk/h;

    move-result-object v0

    .line 166
    if-nez v0, :cond_1

    .line 171
    :cond_0
    :goto_0
    return-void

    .line 169
    :cond_1
    sget-boolean v1, Lcom/chartboost/sdk/i;->s:Z

    if-nez v1, :cond_0

    .line 170
    iget-object v0, v0, Lcom/chartboost/sdk/h;->q:Lcom/chartboost/sdk/c;

    invoke-virtual {v0, p0}, Lcom/chartboost/sdk/c;->g(Landroid/app/Activity;)V

    goto :goto_0
.end method

.method public static onResume(Landroid/app/Activity;)V
    .locals 2
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    .line 150
    const-string v0, "Chartboost.onResume"

    invoke-static {v0, p0}, Lcom/chartboost/sdk/impl/ak;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 151
    invoke-static {}, Lcom/chartboost/sdk/h;->a()Lcom/chartboost/sdk/h;

    move-result-object v0

    .line 152
    if-nez v0, :cond_1

    .line 157
    :cond_0
    :goto_0
    return-void

    .line 155
    :cond_1
    sget-boolean v1, Lcom/chartboost/sdk/i;->s:Z

    if-nez v1, :cond_0

    .line 156
    iget-object v0, v0, Lcom/chartboost/sdk/h;->q:Lcom/chartboost/sdk/c;

    invoke-virtual {v0, p0}, Lcom/chartboost/sdk/c;->f(Landroid/app/Activity;)V

    goto :goto_0
.end method

.method public static onStart(Landroid/app/Activity;)V
    .locals 2
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    .line 136
    const-string v0, "Chartboost.onStart"

    invoke-static {v0, p0}, Lcom/chartboost/sdk/impl/ak;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 137
    invoke-static {}, Lcom/chartboost/sdk/h;->a()Lcom/chartboost/sdk/h;

    move-result-object v0

    .line 138
    if-nez v0, :cond_1

    .line 143
    :cond_0
    :goto_0
    return-void

    .line 141
    :cond_1
    sget-boolean v1, Lcom/chartboost/sdk/i;->s:Z

    if-nez v1, :cond_0

    .line 142
    iget-object v0, v0, Lcom/chartboost/sdk/h;->q:Lcom/chartboost/sdk/c;

    invoke-virtual {v0, p0}, Lcom/chartboost/sdk/c;->d(Landroid/app/Activity;)V

    goto :goto_0
.end method

.method public static onStop(Landroid/app/Activity;)V
    .locals 2
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    .line 178
    const-string v0, "Chartboost.onStop"

    invoke-static {v0, p0}, Lcom/chartboost/sdk/impl/ak;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 179
    invoke-static {}, Lcom/chartboost/sdk/h;->a()Lcom/chartboost/sdk/h;

    move-result-object v0

    .line 180
    if-nez v0, :cond_1

    .line 185
    :cond_0
    :goto_0
    return-void

    .line 183
    :cond_1
    sget-boolean v1, Lcom/chartboost/sdk/i;->s:Z

    if-nez v1, :cond_0

    .line 184
    iget-object v0, v0, Lcom/chartboost/sdk/h;->q:Lcom/chartboost/sdk/c;

    invoke-virtual {v0, p0}, Lcom/chartboost/sdk/c;->h(Landroid/app/Activity;)V

    goto :goto_0
.end method

.method public static setAutoCacheAds(Z)V
    .locals 3
    .param p0, "autoCacheAds"    # Z

    .prologue
    .line 583
    const-string v0, "Chartboost.setAutoCacheAds"

    invoke-static {v0, p0}, Lcom/chartboost/sdk/impl/ak;->a(Ljava/lang/String;Z)V

    .line 584
    invoke-static {}, Lcom/chartboost/sdk/h;->a()Lcom/chartboost/sdk/h;

    move-result-object v0

    .line 585
    if-eqz v0, :cond_0

    .line 586
    new-instance v1, Lcom/chartboost/sdk/h$a;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v2, 0x1

    invoke-direct {v1, v0, v2}, Lcom/chartboost/sdk/h$a;-><init>(Lcom/chartboost/sdk/h;I)V

    .line 587
    iput-boolean p0, v1, Lcom/chartboost/sdk/h$a;->c:Z

    .line 588
    invoke-static {v1}, Lcom/chartboost/sdk/h;->b(Ljava/lang/Runnable;)V

    .line 590
    :cond_0
    return-void
.end method

.method public static setCustomId(Ljava/lang/String;)V
    .locals 2
    .param p0, "customID"    # Ljava/lang/String;

    .prologue
    .line 526
    const-string v0, "Chartboost.setCustomId"

    invoke-static {v0, p0}, Lcom/chartboost/sdk/impl/ak;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 527
    new-instance v0, Lcom/chartboost/sdk/f;

    const/4 v1, 0x6

    invoke-direct {v0, v1}, Lcom/chartboost/sdk/f;-><init>(I)V

    .line 528
    iput-object p0, v0, Lcom/chartboost/sdk/f;->e:Ljava/lang/String;

    .line 529
    invoke-static {v0}, Lcom/chartboost/sdk/h;->b(Ljava/lang/Runnable;)V

    .line 530
    return-void
.end method

.method public static setDelegate(Lcom/chartboost/sdk/ChartboostDelegate;)V
    .locals 2
    .param p0, "delegate"    # Lcom/chartboost/sdk/ChartboostDelegate;

    .prologue
    .line 561
    const-string v0, "Chartboost.setDelegate"

    invoke-static {v0, p0}, Lcom/chartboost/sdk/impl/ak;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 562
    new-instance v0, Lcom/chartboost/sdk/f;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Lcom/chartboost/sdk/f;-><init>(I)V

    .line 563
    iput-object p0, v0, Lcom/chartboost/sdk/f;->g:Lcom/chartboost/sdk/ChartboostDelegate;

    .line 564
    invoke-static {v0}, Lcom/chartboost/sdk/h;->b(Ljava/lang/Runnable;)V

    .line 565
    return-void
.end method

.method public static setMediation(Lcom/chartboost/sdk/Chartboost$CBMediation;Ljava/lang/String;)V
    .locals 2
    .param p0, "mediation"    # Lcom/chartboost/sdk/Chartboost$CBMediation;
    .param p1, "libraryVersion"    # Ljava/lang/String;

    .prologue
    .line 453
    const-string v0, "Chartboost.setMediation"

    invoke-static {v0}, Lcom/chartboost/sdk/impl/ak;->a(Ljava/lang/String;)V

    .line 454
    new-instance v0, Lcom/chartboost/sdk/f;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lcom/chartboost/sdk/f;-><init>(I)V

    .line 455
    iput-object p0, v0, Lcom/chartboost/sdk/f;->c:Lcom/chartboost/sdk/Chartboost$CBMediation;

    .line 456
    iput-object p1, v0, Lcom/chartboost/sdk/f;->d:Ljava/lang/String;

    .line 458
    invoke-static {v0}, Lcom/chartboost/sdk/h;->b(Ljava/lang/Runnable;)V

    .line 459
    return-void
.end method

.method public static setShouldDisplayLoadingViewForMoreApps(Z)V
    .locals 0
    .param p0, "shouldDisplay"    # Z

    .prologue
    .line 617
    return-void
.end method

.method public static setShouldRequestInterstitialsInFirstSession(Z)V
    .locals 2
    .param p0, "shouldRequest"    # Z

    .prologue
    .line 600
    const-string v0, "Chartboost.setShouldRequestInterstitialsInFirstSession"

    invoke-static {v0, p0}, Lcom/chartboost/sdk/impl/ak;->a(Ljava/lang/String;Z)V

    .line 601
    invoke-static {}, Lcom/chartboost/sdk/b;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 602
    new-instance v0, Lcom/chartboost/sdk/f;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/chartboost/sdk/f;-><init>(I)V

    .line 603
    iput-boolean p0, v0, Lcom/chartboost/sdk/f;->a:Z

    .line 604
    invoke-static {v0}, Lcom/chartboost/sdk/h;->b(Ljava/lang/Runnable;)V

    .line 606
    :cond_0
    return-void
.end method

.method public static showInterstitial(Ljava/lang/String;)V
    .locals 7
    .param p0, "location"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    const/4 v2, 0x4

    .line 353
    const-string v0, "Chartboost.showInterstitial"

    invoke-static {v0, p0}, Lcom/chartboost/sdk/impl/ak;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 354
    invoke-static {}, Lcom/chartboost/sdk/h;->a()Lcom/chartboost/sdk/h;

    move-result-object v6

    .line 355
    if-eqz v6, :cond_0

    invoke-static {}, Lcom/chartboost/sdk/b;->a()Z

    move-result v0

    if-nez v0, :cond_1

    .line 382
    :cond_0
    :goto_0
    return-void

    .line 357
    :cond_1
    invoke-static {}, Lcom/chartboost/sdk/h;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 360
    invoke-static {}, Lcom/chartboost/sdk/impl/m;->a()Lcom/chartboost/sdk/impl/m;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/chartboost/sdk/impl/m;->a(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 361
    const-string v0, "Chartboost"

    const-string v1, "showInterstitial location cannot be empty"

    invoke-static {v0, v1}, Lcom/chartboost/sdk/Libraries/CBLogging;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 362
    iget-object v0, v6, Lcom/chartboost/sdk/h;->p:Landroid/os/Handler;

    new-instance v1, Lcom/chartboost/sdk/impl/a$a;

    iget-object v3, v6, Lcom/chartboost/sdk/h;->g:Lcom/chartboost/sdk/impl/a;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v4, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;->INVALID_LOCATION:Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

    invoke-direct {v1, v3, v2, p0, v4}, Lcom/chartboost/sdk/impl/a$a;-><init>(Lcom/chartboost/sdk/impl/a;ILjava/lang/String;Lcom/chartboost/sdk/Model/CBError$CBImpressionError;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 370
    :cond_2
    iget-object v0, v6, Lcom/chartboost/sdk/h;->m:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/chartboost/sdk/Model/e;

    .line 371
    iget-boolean v1, v0, Lcom/chartboost/sdk/Model/e;->y:Z

    if-eqz v1, :cond_3

    iget-boolean v1, v0, Lcom/chartboost/sdk/Model/e;->A:Z

    if-nez v1, :cond_4

    :cond_3
    iget-boolean v1, v0, Lcom/chartboost/sdk/Model/e;->e:Z

    if-eqz v1, :cond_5

    iget-boolean v0, v0, Lcom/chartboost/sdk/Model/e;->g:Z

    if-eqz v0, :cond_5

    .line 373
    :cond_4
    new-instance v0, Lcom/chartboost/sdk/impl/c$a;

    iget-object v1, v6, Lcom/chartboost/sdk/h;->f:Lcom/chartboost/sdk/impl/c;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object v3, p0

    move-object v5, v4

    invoke-direct/range {v0 .. v5}, Lcom/chartboost/sdk/impl/c$a;-><init>(Lcom/chartboost/sdk/impl/c;ILjava/lang/String;Lcom/chartboost/sdk/impl/d;Lcom/chartboost/sdk/Model/CBError$CBImpressionError;)V

    .line 374
    iget-object v1, v6, Lcom/chartboost/sdk/h;->a:Ljava/util/concurrent/Executor;

    invoke-interface {v1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 376
    :cond_5
    iget-object v0, v6, Lcom/chartboost/sdk/h;->p:Landroid/os/Handler;

    new-instance v1, Lcom/chartboost/sdk/impl/a$a;

    iget-object v3, v6, Lcom/chartboost/sdk/h;->g:Lcom/chartboost/sdk/impl/a;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v4, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;->END_POINT_DISABLED:Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

    invoke-direct {v1, v3, v2, p0, v4}, Lcom/chartboost/sdk/impl/a$a;-><init>(Lcom/chartboost/sdk/impl/a;ILjava/lang/String;Lcom/chartboost/sdk/Model/CBError$CBImpressionError;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public static showRewardedVideo(Ljava/lang/String;)V
    .locals 7
    .param p0, "location"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    const/4 v2, 0x4

    .line 266
    const-string v0, "Chartboost.showRewardedVideo"

    invoke-static {v0, p0}, Lcom/chartboost/sdk/impl/ak;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 267
    invoke-static {}, Lcom/chartboost/sdk/h;->a()Lcom/chartboost/sdk/h;

    move-result-object v6

    .line 268
    if-eqz v6, :cond_0

    invoke-static {}, Lcom/chartboost/sdk/b;->a()Z

    move-result v0

    if-nez v0, :cond_1

    .line 293
    :cond_0
    :goto_0
    return-void

    .line 270
    :cond_1
    invoke-static {}, Lcom/chartboost/sdk/h;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 272
    invoke-static {}, Lcom/chartboost/sdk/impl/m;->a()Lcom/chartboost/sdk/impl/m;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/chartboost/sdk/impl/m;->a(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 273
    const-string v0, "Chartboost"

    const-string v1, "showRewardedVideo location cannot be empty"

    invoke-static {v0, v1}, Lcom/chartboost/sdk/Libraries/CBLogging;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 274
    iget-object v0, v6, Lcom/chartboost/sdk/h;->p:Landroid/os/Handler;

    new-instance v1, Lcom/chartboost/sdk/impl/a$a;

    iget-object v3, v6, Lcom/chartboost/sdk/h;->l:Lcom/chartboost/sdk/impl/a;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v4, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;->INVALID_LOCATION:Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

    invoke-direct {v1, v3, v2, p0, v4}, Lcom/chartboost/sdk/impl/a$a;-><init>(Lcom/chartboost/sdk/impl/a;ILjava/lang/String;Lcom/chartboost/sdk/Model/CBError$CBImpressionError;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 281
    :cond_2
    iget-object v0, v6, Lcom/chartboost/sdk/h;->m:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/chartboost/sdk/Model/e;

    .line 282
    iget-boolean v1, v0, Lcom/chartboost/sdk/Model/e;->y:Z

    if-eqz v1, :cond_3

    iget-boolean v1, v0, Lcom/chartboost/sdk/Model/e;->E:Z

    if-nez v1, :cond_4

    :cond_3
    iget-boolean v1, v0, Lcom/chartboost/sdk/Model/e;->e:Z

    if-eqz v1, :cond_5

    iget-boolean v0, v0, Lcom/chartboost/sdk/Model/e;->j:Z

    if-eqz v0, :cond_5

    .line 284
    :cond_4
    new-instance v0, Lcom/chartboost/sdk/impl/c$a;

    iget-object v1, v6, Lcom/chartboost/sdk/h;->k:Lcom/chartboost/sdk/impl/c;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object v3, p0

    move-object v5, v4

    invoke-direct/range {v0 .. v5}, Lcom/chartboost/sdk/impl/c$a;-><init>(Lcom/chartboost/sdk/impl/c;ILjava/lang/String;Lcom/chartboost/sdk/impl/d;Lcom/chartboost/sdk/Model/CBError$CBImpressionError;)V

    .line 285
    iget-object v1, v6, Lcom/chartboost/sdk/h;->a:Ljava/util/concurrent/Executor;

    invoke-interface {v1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 287
    :cond_5
    iget-object v0, v6, Lcom/chartboost/sdk/h;->p:Landroid/os/Handler;

    new-instance v1, Lcom/chartboost/sdk/impl/a$a;

    iget-object v3, v6, Lcom/chartboost/sdk/h;->l:Lcom/chartboost/sdk/impl/a;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v4, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;->END_POINT_DISABLED:Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

    invoke-direct {v1, v3, v2, p0, v4}, Lcom/chartboost/sdk/impl/a$a;-><init>(Lcom/chartboost/sdk/impl/a;ILjava/lang/String;Lcom/chartboost/sdk/Model/CBError$CBImpressionError;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public static startWithAppId(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "appId"    # Ljava/lang/String;
    .param p2, "appSignature"    # Ljava/lang/String;

    .prologue
    .line 107
    const-string v0, "Chartboost.startWithAppId"

    invoke-static {v0, p0}, Lcom/chartboost/sdk/impl/ak;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 108
    new-instance v0, Lcom/chartboost/sdk/f;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/chartboost/sdk/f;-><init>(I)V

    .line 109
    iput-object p0, v0, Lcom/chartboost/sdk/f;->h:Landroid/app/Activity;

    .line 110
    iput-object p1, v0, Lcom/chartboost/sdk/f;->i:Ljava/lang/String;

    .line 111
    iput-object p2, v0, Lcom/chartboost/sdk/f;->j:Ljava/lang/String;

    .line 112
    invoke-static {v0}, Lcom/chartboost/sdk/h;->b(Ljava/lang/Runnable;)V

    .line 113
    return-void
.end method
