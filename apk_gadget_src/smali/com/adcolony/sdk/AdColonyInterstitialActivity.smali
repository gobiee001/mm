.class public Lcom/adcolony/sdk/AdColonyInterstitialActivity;
.super Lcom/adcolony/sdk/b;
.source "SourceFile"


# instance fields
.field n:Lcom/adcolony/sdk/AdColonyInterstitial;

.field private o:Lcom/adcolony/sdk/k;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/adcolony/sdk/b;-><init>()V

    .line 15
    invoke-static {}, Lcom/adcolony/sdk/a;->b()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lcom/adcolony/sdk/AdColonyInterstitialActivity;->n:Lcom/adcolony/sdk/AdColonyInterstitial;

    return-void

    :cond_0
    invoke-static {}, Lcom/adcolony/sdk/a;->a()Lcom/adcolony/sdk/l;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adcolony/sdk/l;->u()Lcom/adcolony/sdk/AdColonyInterstitial;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method a(Lcom/adcolony/sdk/af;)V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 56
    invoke-super {p0, p1}, Lcom/adcolony/sdk/b;->a(Lcom/adcolony/sdk/af;)V

    .line 58
    invoke-static {}, Lcom/adcolony/sdk/a;->a()Lcom/adcolony/sdk/l;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adcolony/sdk/l;->m()Lcom/adcolony/sdk/d;

    move-result-object v2

    .line 61
    invoke-virtual {v2}, Lcom/adcolony/sdk/d;->g()Ljava/util/HashMap;

    move-result-object v0

    iget-object v1, p0, Lcom/adcolony/sdk/AdColonyInterstitialActivity;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adcolony/sdk/f;

    .line 62
    if-eqz v0, :cond_2

    .line 63
    invoke-virtual {v0}, Lcom/adcolony/sdk/f;->c()Lcom/adcolony/sdk/ae;

    move-result-object v1

    invoke-virtual {v1}, Lcom/adcolony/sdk/ae;->c()Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/MediaPlayer;

    .line 64
    invoke-virtual {v1}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 65
    invoke-virtual {v1}, Landroid/media/MediaPlayer;->stop()V

    .line 67
    :cond_0
    invoke-virtual {v1}, Landroid/media/MediaPlayer;->release()V

    goto :goto_0

    .line 69
    :cond_1
    invoke-virtual {v0}, Lcom/adcolony/sdk/f;->d()Lcom/adcolony/sdk/aq;

    move-result-object v1

    invoke-virtual {v1}, Lcom/adcolony/sdk/aq;->a()Landroid/media/SoundPool;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/SoundPool;->autoPause()V

    .line 70
    invoke-virtual {v0}, Lcom/adcolony/sdk/f;->d()Lcom/adcolony/sdk/aq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adcolony/sdk/aq;->a()Landroid/media/SoundPool;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/SoundPool;->release()V

    .line 74
    :cond_2
    invoke-virtual {p1}, Lcom/adcolony/sdk/af;->c()Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "v4iap"

    invoke-static {v0, v1}, Lcom/adcolony/sdk/y;->f(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 75
    const-string v1, "product_ids"

    invoke-static {v0, v1}, Lcom/adcolony/sdk/y;->g(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 76
    if-eqz v0, :cond_3

    iget-object v3, p0, Lcom/adcolony/sdk/AdColonyInterstitialActivity;->n:Lcom/adcolony/sdk/AdColonyInterstitial;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/adcolony/sdk/AdColonyInterstitialActivity;->n:Lcom/adcolony/sdk/AdColonyInterstitial;

    invoke-virtual {v3}, Lcom/adcolony/sdk/AdColonyInterstitial;->getListener()Lcom/adcolony/sdk/AdColonyInterstitialListener;

    move-result-object v3

    if-eqz v3, :cond_3

    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-lez v3, :cond_3

    .line 77
    iget-object v3, p0, Lcom/adcolony/sdk/AdColonyInterstitialActivity;->n:Lcom/adcolony/sdk/AdColonyInterstitial;

    invoke-virtual {v3}, Lcom/adcolony/sdk/AdColonyInterstitial;->getListener()Lcom/adcolony/sdk/AdColonyInterstitialListener;

    move-result-object v3

    iget-object v4, p0, Lcom/adcolony/sdk/AdColonyInterstitialActivity;->n:Lcom/adcolony/sdk/AdColonyInterstitial;

    const/4 v5, 0x0

    invoke-static {v1, v5}, Lcom/adcolony/sdk/y;->c(Lorg/json/JSONArray;I)Ljava/lang/String;

    move-result-object v1

    const-string v5, "engagement_type"

    invoke-static {v0, v5}, Lcom/adcolony/sdk/y;->c(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v3, v4, v1, v0}, Lcom/adcolony/sdk/AdColonyInterstitialListener;->onIAPEvent(Lcom/adcolony/sdk/AdColonyInterstitial;Ljava/lang/String;I)V

    .line 81
    :cond_3
    iget-object v0, p0, Lcom/adcolony/sdk/AdColonyInterstitialActivity;->c:Lcom/adcolony/sdk/c;

    invoke-virtual {v2, v0}, Lcom/adcolony/sdk/d;->a(Lcom/adcolony/sdk/c;)V

    .line 84
    iget-object v0, p0, Lcom/adcolony/sdk/AdColonyInterstitialActivity;->n:Lcom/adcolony/sdk/AdColonyInterstitial;

    if-eqz v0, :cond_4

    .line 85
    invoke-virtual {v2}, Lcom/adcolony/sdk/d;->c()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    iget-object v1, p0, Lcom/adcolony/sdk/AdColonyInterstitialActivity;->n:Lcom/adcolony/sdk/AdColonyInterstitial;

    invoke-virtual {v1}, Lcom/adcolony/sdk/AdColonyInterstitial;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    iget-object v0, p0, Lcom/adcolony/sdk/AdColonyInterstitialActivity;->n:Lcom/adcolony/sdk/AdColonyInterstitial;

    invoke-virtual {v0}, Lcom/adcolony/sdk/AdColonyInterstitial;->g()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 87
    iget-object v0, p0, Lcom/adcolony/sdk/AdColonyInterstitialActivity;->n:Lcom/adcolony/sdk/AdColonyInterstitial;

    invoke-virtual {v0}, Lcom/adcolony/sdk/AdColonyInterstitial;->h()Lcom/adcolony/sdk/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adcolony/sdk/g;->a()V

    .line 92
    :cond_4
    iget-object v0, p0, Lcom/adcolony/sdk/AdColonyInterstitialActivity;->n:Lcom/adcolony/sdk/AdColonyInterstitial;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/adcolony/sdk/AdColonyInterstitialActivity;->n:Lcom/adcolony/sdk/AdColonyInterstitial;

    invoke-virtual {v0}, Lcom/adcolony/sdk/AdColonyInterstitial;->getListener()Lcom/adcolony/sdk/AdColonyInterstitialListener;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 93
    iget-object v0, p0, Lcom/adcolony/sdk/AdColonyInterstitialActivity;->n:Lcom/adcolony/sdk/AdColonyInterstitial;

    invoke-virtual {v0}, Lcom/adcolony/sdk/AdColonyInterstitial;->getListener()Lcom/adcolony/sdk/AdColonyInterstitialListener;

    move-result-object v0

    iget-object v1, p0, Lcom/adcolony/sdk/AdColonyInterstitialActivity;->n:Lcom/adcolony/sdk/AdColonyInterstitial;

    invoke-virtual {v0, v1}, Lcom/adcolony/sdk/AdColonyInterstitialListener;->onClosed(Lcom/adcolony/sdk/AdColonyInterstitial;)V

    .line 94
    iget-object v0, p0, Lcom/adcolony/sdk/AdColonyInterstitialActivity;->n:Lcom/adcolony/sdk/AdColonyInterstitial;

    invoke-virtual {v0, v6}, Lcom/adcolony/sdk/AdColonyInterstitial;->a(Lcom/adcolony/sdk/c;)V

    .line 95
    iget-object v0, p0, Lcom/adcolony/sdk/AdColonyInterstitialActivity;->n:Lcom/adcolony/sdk/AdColonyInterstitial;

    invoke-virtual {v0, v6}, Lcom/adcolony/sdk/AdColonyInterstitial;->setListener(Lcom/adcolony/sdk/AdColonyInterstitialListener;)V

    .line 96
    iput-object v6, p0, Lcom/adcolony/sdk/AdColonyInterstitialActivity;->n:Lcom/adcolony/sdk/AdColonyInterstitial;

    .line 99
    :cond_5
    iget-object v0, p0, Lcom/adcolony/sdk/AdColonyInterstitialActivity;->o:Lcom/adcolony/sdk/k;

    if-eqz v0, :cond_6

    .line 100
    iget-object v0, p0, Lcom/adcolony/sdk/AdColonyInterstitialActivity;->o:Lcom/adcolony/sdk/k;

    invoke-virtual {v0}, Lcom/adcolony/sdk/k;->a()V

    .line 101
    iput-object v6, p0, Lcom/adcolony/sdk/AdColonyInterstitialActivity;->o:Lcom/adcolony/sdk/k;

    .line 104
    :cond_6
    sget-object v0, Lcom/adcolony/sdk/aa;->d:Lcom/adcolony/sdk/aa;

    const-string v1, "finish_ad call finished"

    invoke-virtual {v0, v1}, Lcom/adcolony/sdk/aa;->b(Ljava/lang/Object;)Lcom/adcolony/sdk/aa;

    .line 105
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 106
    return-void
.end method

.method public bridge synthetic onBackPressed()V
    .locals 0

    .prologue
    .line 14
    invoke-super {p0}, Lcom/adcolony/sdk/b;->onBackPressed()V

    return-void
.end method

.method public bridge synthetic onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .prologue
    .line 14
    invoke-super {p0, p1}, Lcom/adcolony/sdk/b;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/adcolony/sdk/AdColonyInterstitialActivity;->n:Lcom/adcolony/sdk/AdColonyInterstitial;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    iput v0, p0, Lcom/adcolony/sdk/AdColonyInterstitialActivity;->d:I

    .line 29
    invoke-super {p0, p1}, Lcom/adcolony/sdk/b;->onCreate(Landroid/os/Bundle;)V

    .line 31
    invoke-static {}, Lcom/adcolony/sdk/a;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adcolony/sdk/AdColonyInterstitialActivity;->n:Lcom/adcolony/sdk/AdColonyInterstitial;

    if-nez v0, :cond_2

    .line 46
    :cond_0
    :goto_1
    return-void

    .line 27
    :cond_1
    iget-object v0, p0, Lcom/adcolony/sdk/AdColonyInterstitialActivity;->n:Lcom/adcolony/sdk/AdColonyInterstitial;

    invoke-virtual {v0}, Lcom/adcolony/sdk/AdColonyInterstitial;->e()I

    move-result v0

    goto :goto_0

    .line 36
    :cond_2
    iget-object v0, p0, Lcom/adcolony/sdk/AdColonyInterstitialActivity;->n:Lcom/adcolony/sdk/AdColonyInterstitial;

    invoke-virtual {v0}, Lcom/adcolony/sdk/AdColonyInterstitial;->g()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 37
    iget-object v0, p0, Lcom/adcolony/sdk/AdColonyInterstitialActivity;->n:Lcom/adcolony/sdk/AdColonyInterstitial;

    invoke-virtual {v0}, Lcom/adcolony/sdk/AdColonyInterstitial;->h()Lcom/adcolony/sdk/g;

    move-result-object v0

    iget-object v1, p0, Lcom/adcolony/sdk/AdColonyInterstitialActivity;->n:Lcom/adcolony/sdk/AdColonyInterstitial;

    invoke-virtual {v1}, Lcom/adcolony/sdk/AdColonyInterstitial;->d()Lcom/adcolony/sdk/c;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/adcolony/sdk/g;->a(Lcom/adcolony/sdk/c;)V

    .line 41
    :cond_3
    new-instance v0, Lcom/adcolony/sdk/k;

    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iget-object v2, p0, Lcom/adcolony/sdk/AdColonyInterstitialActivity;->n:Lcom/adcolony/sdk/AdColonyInterstitial;

    invoke-direct {v0, v1, v2}, Lcom/adcolony/sdk/k;-><init>(Landroid/os/Handler;Lcom/adcolony/sdk/AdColonyInterstitial;)V

    iput-object v0, p0, Lcom/adcolony/sdk/AdColonyInterstitialActivity;->o:Lcom/adcolony/sdk/k;

    .line 43
    iget-object v0, p0, Lcom/adcolony/sdk/AdColonyInterstitialActivity;->n:Lcom/adcolony/sdk/AdColonyInterstitial;

    invoke-virtual {v0}, Lcom/adcolony/sdk/AdColonyInterstitial;->getListener()Lcom/adcolony/sdk/AdColonyInterstitialListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 44
    iget-object v0, p0, Lcom/adcolony/sdk/AdColonyInterstitialActivity;->n:Lcom/adcolony/sdk/AdColonyInterstitial;

    invoke-virtual {v0}, Lcom/adcolony/sdk/AdColonyInterstitial;->getListener()Lcom/adcolony/sdk/AdColonyInterstitialListener;

    move-result-object v0

    iget-object v1, p0, Lcom/adcolony/sdk/AdColonyInterstitialActivity;->n:Lcom/adcolony/sdk/AdColonyInterstitial;

    invoke-virtual {v0, v1}, Lcom/adcolony/sdk/AdColonyInterstitialListener;->onOpened(Lcom/adcolony/sdk/AdColonyInterstitial;)V

    goto :goto_1
.end method

.method public bridge synthetic onDestroy()V
    .locals 0

    .prologue
    .line 14
    invoke-super {p0}, Lcom/adcolony/sdk/b;->onDestroy()V

    return-void
.end method

.method public bridge synthetic onPause()V
    .locals 0

    .prologue
    .line 14
    invoke-super {p0}, Lcom/adcolony/sdk/b;->onPause()V

    return-void
.end method

.method public bridge synthetic onResume()V
    .locals 0

    .prologue
    .line 14
    invoke-super {p0}, Lcom/adcolony/sdk/b;->onResume()V

    return-void
.end method

.method public bridge synthetic onWindowFocusChanged(Z)V
    .locals 0

    .prologue
    .line 14
    invoke-super {p0, p1}, Lcom/adcolony/sdk/b;->onWindowFocusChanged(Z)V

    return-void
.end method
