.class public Lcom/adcolony/sdk/AdColonyInterstitial;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Lcom/adcolony/sdk/AdColonyInterstitialListener;

.field private b:Lcom/adcolony/sdk/c;

.field private c:Lcom/adcolony/sdk/AdColonyAdOptions;

.field private d:Lcom/adcolony/sdk/g;

.field private e:I

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:I

.field private j:Ljava/lang/String;

.field private k:Z

.field private l:Z

.field private m:Z


# direct methods
.method constructor <init>(Ljava/lang/String;Lcom/adcolony/sdk/AdColonyInterstitialListener;Ljava/lang/String;)V
    .locals 0
    .param p1, "adSessionId"    # Ljava/lang/String;
    .param p2, "listener"    # Lcom/adcolony/sdk/AdColonyInterstitialListener;
    .param p3, "zoneId"    # Ljava/lang/String;

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p2, p0, Lcom/adcolony/sdk/AdColonyInterstitial;->a:Lcom/adcolony/sdk/AdColonyInterstitialListener;

    .line 34
    iput-object p3, p0, Lcom/adcolony/sdk/AdColonyInterstitial;->j:Ljava/lang/String;

    .line 35
    iput-object p1, p0, Lcom/adcolony/sdk/AdColonyInterstitial;->f:Ljava/lang/String;

    .line 36
    return-void
.end method


# virtual methods
.method a(I)V
    .locals 0

    .prologue
    .line 218
    iput p1, p0, Lcom/adcolony/sdk/AdColonyInterstitial;->i:I

    .line 219
    return-void
.end method

.method a(Lcom/adcolony/sdk/AdColonyAdOptions;)V
    .locals 0

    .prologue
    .line 214
    iput-object p1, p0, Lcom/adcolony/sdk/AdColonyInterstitial;->c:Lcom/adcolony/sdk/AdColonyAdOptions;

    .line 215
    return-void
.end method

.method a(Lcom/adcolony/sdk/c;)V
    .locals 0

    .prologue
    .line 206
    iput-object p1, p0, Lcom/adcolony/sdk/AdColonyInterstitial;->b:Lcom/adcolony/sdk/c;

    .line 207
    return-void
.end method

.method a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 233
    iput-object p1, p0, Lcom/adcolony/sdk/AdColonyInterstitial;->g:Ljava/lang/String;

    .line 234
    return-void
.end method

.method a(Lorg/json/JSONObject;)V
    .locals 1

    .prologue
    .line 197
    invoke-virtual {p1}, Lorg/json/JSONObject;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 198
    new-instance v0, Lcom/adcolony/sdk/g;

    invoke-direct {v0, p1}, Lcom/adcolony/sdk/g;-><init>(Lorg/json/JSONObject;)V

    iput-object v0, p0, Lcom/adcolony/sdk/AdColonyInterstitial;->d:Lcom/adcolony/sdk/g;

    .line 200
    :cond_0
    return-void
.end method

.method a(Z)V
    .locals 0

    .prologue
    .line 210
    iput-boolean p1, p0, Lcom/adcolony/sdk/AdColonyInterstitial;->k:Z

    .line 211
    return-void
.end method

.method a()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    .line 177
    invoke-static {}, Lcom/adcolony/sdk/a;->d()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/adcolony/sdk/a;->b()Z

    move-result v1

    if-nez v1, :cond_1

    .line 178
    :cond_0
    const/4 v0, 0x0

    .line 188
    :goto_0
    return v0

    .line 181
    :cond_1
    invoke-static {}, Lcom/adcolony/sdk/a;->a()Lcom/adcolony/sdk/l;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/adcolony/sdk/l;->c(Z)V

    .line 182
    invoke-static {}, Lcom/adcolony/sdk/a;->a()Lcom/adcolony/sdk/l;

    move-result-object v1

    iget-object v2, p0, Lcom/adcolony/sdk/AdColonyInterstitial;->b:Lcom/adcolony/sdk/c;

    invoke-virtual {v1, v2}, Lcom/adcolony/sdk/l;->a(Lcom/adcolony/sdk/c;)V

    .line 183
    invoke-static {}, Lcom/adcolony/sdk/a;->a()Lcom/adcolony/sdk/l;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/adcolony/sdk/l;->a(Lcom/adcolony/sdk/AdColonyInterstitial;)V

    .line 184
    sget-object v1, Lcom/adcolony/sdk/aa;->b:Lcom/adcolony/sdk/aa;

    const-string v2, "Launching fullscreen Activity via AdColonyInterstitial\'s launch method."

    invoke-virtual {v1, v2}, Lcom/adcolony/sdk/aa;->b(Ljava/lang/Object;)Lcom/adcolony/sdk/aa;

    .line 185
    new-instance v1, Landroid/content/Intent;

    invoke-static {}, Lcom/adcolony/sdk/a;->c()Landroid/app/Activity;

    move-result-object v2

    const-class v3, Lcom/adcolony/sdk/AdColonyInterstitialActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 186
    invoke-static {}, Lcom/adcolony/sdk/a;->c()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 187
    iput-boolean v0, p0, Lcom/adcolony/sdk/AdColonyInterstitial;->l:Z

    goto :goto_0
.end method

.method a(Lcom/adcolony/sdk/AdColonyZone;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 95
    if-eqz p1, :cond_2

    .line 97
    invoke-virtual {p1}, Lcom/adcolony/sdk/AdColonyZone;->getPlayFrequency()I

    move-result v2

    if-gt v2, v1, :cond_0

    .line 111
    :goto_0
    return v0

    .line 102
    :cond_0
    invoke-virtual {p1}, Lcom/adcolony/sdk/AdColonyZone;->b()I

    move-result v2

    if-nez v2, :cond_1

    .line 103
    invoke-virtual {p1}, Lcom/adcolony/sdk/AdColonyZone;->getPlayFrequency()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p1, v1}, Lcom/adcolony/sdk/AdColonyZone;->a(I)V

    goto :goto_0

    .line 106
    :cond_1
    invoke-virtual {p1}, Lcom/adcolony/sdk/AdColonyZone;->b()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p1, v0}, Lcom/adcolony/sdk/AdColonyZone;->a(I)V

    move v0, v1

    .line 107
    goto :goto_0

    :cond_2
    move v0, v1

    .line 111
    goto :goto_0
.end method

.method b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 226
    iget-object v0, p0, Lcom/adcolony/sdk/AdColonyInterstitial;->g:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 227
    const-string v0, ""

    .line 229
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/adcolony/sdk/AdColonyInterstitial;->g:Ljava/lang/String;

    goto :goto_0
.end method

.method b(I)V
    .locals 0

    .prologue
    .line 222
    iput p1, p0, Lcom/adcolony/sdk/AdColonyInterstitial;->e:I

    .line 223
    return-void
.end method

.method b(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 244
    iput-object p1, p0, Lcom/adcolony/sdk/AdColonyInterstitial;->h:Ljava/lang/String;

    .line 245
    return-void
.end method

.method b(Z)V
    .locals 0

    .prologue
    .line 260
    iput-boolean p1, p0, Lcom/adcolony/sdk/AdColonyInterstitial;->m:Z

    .line 261
    return-void
.end method

.method c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 237
    iget-object v0, p0, Lcom/adcolony/sdk/AdColonyInterstitial;->h:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 238
    const-string v0, ""

    .line 240
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/adcolony/sdk/AdColonyInterstitial;->h:Ljava/lang/String;

    goto :goto_0
.end method

.method d()Lcom/adcolony/sdk/c;
    .locals 1

    .prologue
    .line 248
    iget-object v0, p0, Lcom/adcolony/sdk/AdColonyInterstitial;->b:Lcom/adcolony/sdk/c;

    return-object v0
.end method

.method public destroy()Z
    .locals 2

    .prologue
    .line 166
    invoke-static {}, Lcom/adcolony/sdk/a;->a()Lcom/adcolony/sdk/l;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adcolony/sdk/l;->m()Lcom/adcolony/sdk/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adcolony/sdk/d;->c()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    iget-object v1, p0, Lcom/adcolony/sdk/AdColonyInterstitial;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 167
    const/4 v0, 0x1

    return v0
.end method

.method e()I
    .locals 1

    .prologue
    .line 252
    iget v0, p0, Lcom/adcolony/sdk/AdColonyInterstitial;->e:I

    return v0
.end method

.method f()Ljava/lang/String;
    .locals 1

    .prologue
    .line 256
    iget-object v0, p0, Lcom/adcolony/sdk/AdColonyInterstitial;->f:Ljava/lang/String;

    return-object v0
.end method

.method g()Z
    .locals 1

    .prologue
    .line 264
    iget-object v0, p0, Lcom/adcolony/sdk/AdColonyInterstitial;->d:Lcom/adcolony/sdk/g;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getListener()Lcom/adcolony/sdk/AdColonyInterstitialListener;
    .locals 1

    .prologue
    .line 135
    iget-object v0, p0, Lcom/adcolony/sdk/AdColonyInterstitial;->a:Lcom/adcolony/sdk/AdColonyInterstitialListener;

    return-object v0
.end method

.method public getZoneID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 154
    iget-object v0, p0, Lcom/adcolony/sdk/AdColonyInterstitial;->j:Ljava/lang/String;

    return-object v0
.end method

.method h()Lcom/adcolony/sdk/g;
    .locals 1

    .prologue
    .line 267
    iget-object v0, p0, Lcom/adcolony/sdk/AdColonyInterstitial;->d:Lcom/adcolony/sdk/g;

    return-object v0
.end method

.method i()Z
    .locals 1

    .prologue
    .line 271
    iget-boolean v0, p0, Lcom/adcolony/sdk/AdColonyInterstitial;->m:Z

    return v0
.end method

.method public isExpired()Z
    .locals 1

    .prologue
    .line 158
    iget-boolean v0, p0, Lcom/adcolony/sdk/AdColonyInterstitial;->k:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/adcolony/sdk/AdColonyInterstitial;->l:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setListener(Lcom/adcolony/sdk/AdColonyInterstitialListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/adcolony/sdk/AdColonyInterstitialListener;

    .prologue
    .line 144
    iput-object p1, p0, Lcom/adcolony/sdk/AdColonyInterstitial;->a:Lcom/adcolony/sdk/AdColonyInterstitialListener;

    .line 145
    return-void
.end method

.method public show()Z
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 46
    invoke-static {}, Lcom/adcolony/sdk/a;->b()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    .line 91
    :goto_0
    return v0

    .line 50
    :cond_0
    invoke-static {}, Lcom/adcolony/sdk/a;->a()Lcom/adcolony/sdk/l;

    move-result-object v3

    .line 52
    iget-boolean v0, p0, Lcom/adcolony/sdk/AdColonyInterstitial;->l:Z

    if-eqz v0, :cond_1

    .line 53
    sget-object v0, Lcom/adcolony/sdk/aa;->e:Lcom/adcolony/sdk/aa;

    const-string v2, "This ad object has already been shown. Please request a new ad via AdColony.requestInterstitial."

    invoke-virtual {v0, v2}, Lcom/adcolony/sdk/aa;->b(Ljava/lang/Object;)Lcom/adcolony/sdk/aa;

    move v0, v1

    .line 54
    goto :goto_0

    .line 57
    :cond_1
    iget-boolean v0, p0, Lcom/adcolony/sdk/AdColonyInterstitial;->k:Z

    if-eqz v0, :cond_2

    .line 58
    sget-object v0, Lcom/adcolony/sdk/aa;->e:Lcom/adcolony/sdk/aa;

    const-string v2, "This ad object has expired. Please request a new ad via AdColony.requestInterstitial."

    invoke-virtual {v0, v2}, Lcom/adcolony/sdk/aa;->b(Ljava/lang/Object;)Lcom/adcolony/sdk/aa;

    move v0, v1

    .line 59
    goto :goto_0

    .line 62
    :cond_2
    invoke-virtual {v3}, Lcom/adcolony/sdk/l;->w()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 63
    sget-object v0, Lcom/adcolony/sdk/aa;->e:Lcom/adcolony/sdk/aa;

    const-string v2, "Can not show ad while an interstitial is already active."

    invoke-virtual {v0, v2}, Lcom/adcolony/sdk/aa;->b(Ljava/lang/Object;)Lcom/adcolony/sdk/aa;

    move v0, v1

    .line 64
    goto :goto_0

    .line 67
    :cond_3
    invoke-virtual {v3}, Lcom/adcolony/sdk/l;->f()Ljava/util/HashMap;

    move-result-object v0

    iget-object v4, p0, Lcom/adcolony/sdk/AdColonyInterstitial;->j:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adcolony/sdk/AdColonyZone;

    invoke-virtual {p0, v0}, Lcom/adcolony/sdk/AdColonyInterstitial;->a(Lcom/adcolony/sdk/AdColonyZone;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 68
    sget-object v0, Lcom/adcolony/sdk/aa;->d:Lcom/adcolony/sdk/aa;

    const-string v2, "Skipping show()"

    invoke-virtual {v0, v2}, Lcom/adcolony/sdk/aa;->b(Ljava/lang/Object;)Lcom/adcolony/sdk/aa;

    move v0, v1

    .line 69
    goto :goto_0

    .line 73
    :cond_4
    invoke-static {}, Lcom/adcolony/sdk/y;->a()Lorg/json/JSONObject;

    move-result-object v4

    .line 74
    const-string v0, "zone_id"

    iget-object v5, p0, Lcom/adcolony/sdk/AdColonyInterstitial;->j:Ljava/lang/String;

    invoke-static {v4, v0, v5}, Lcom/adcolony/sdk/y;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Z

    .line 75
    const-string v0, "type"

    invoke-static {v4, v0, v1}, Lcom/adcolony/sdk/y;->b(Lorg/json/JSONObject;Ljava/lang/String;I)Z

    .line 76
    const-string v0, "id"

    iget-object v1, p0, Lcom/adcolony/sdk/AdColonyInterstitial;->f:Ljava/lang/String;

    invoke-static {v4, v0, v1}, Lcom/adcolony/sdk/y;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Z

    .line 78
    iget-object v0, p0, Lcom/adcolony/sdk/AdColonyInterstitial;->c:Lcom/adcolony/sdk/AdColonyAdOptions;

    if-eqz v0, :cond_5

    .line 80
    const-string v0, "pre_popup"

    iget-object v1, p0, Lcom/adcolony/sdk/AdColonyInterstitial;->c:Lcom/adcolony/sdk/AdColonyAdOptions;

    iget-boolean v1, v1, Lcom/adcolony/sdk/AdColonyAdOptions;->a:Z

    invoke-static {v4, v0, v1}, Lcom/adcolony/sdk/y;->a(Lorg/json/JSONObject;Ljava/lang/String;Z)Z

    .line 81
    const-string v0, "post_popup"

    iget-object v1, p0, Lcom/adcolony/sdk/AdColonyInterstitial;->c:Lcom/adcolony/sdk/AdColonyAdOptions;

    iget-boolean v1, v1, Lcom/adcolony/sdk/AdColonyAdOptions;->b:Z

    invoke-static {v4, v0, v1}, Lcom/adcolony/sdk/y;->a(Lorg/json/JSONObject;Ljava/lang/String;Z)Z

    .line 85
    :cond_5
    invoke-virtual {v3}, Lcom/adcolony/sdk/l;->f()Ljava/util/HashMap;

    move-result-object v0

    iget-object v1, p0, Lcom/adcolony/sdk/AdColonyInterstitial;->j:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adcolony/sdk/AdColonyZone;

    .line 86
    if-eqz v0, :cond_6

    invoke-virtual {v0}, Lcom/adcolony/sdk/AdColonyZone;->isRewarded()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {v3}, Lcom/adcolony/sdk/l;->i()Lcom/adcolony/sdk/AdColonyRewardListener;

    move-result-object v0

    if-nez v0, :cond_6

    .line 87
    sget-object v0, Lcom/adcolony/sdk/aa;->e:Lcom/adcolony/sdk/aa;

    const-string v1, "Rewarded ad: show() called with no reward listener set."

    invoke-virtual {v0, v1}, Lcom/adcolony/sdk/aa;->b(Ljava/lang/Object;)Lcom/adcolony/sdk/aa;

    .line 90
    :cond_6
    new-instance v0, Lcom/adcolony/sdk/af;

    const-string v1, "AdSession.launch_ad_unit"

    invoke-direct {v0, v1, v2, v4}, Lcom/adcolony/sdk/af;-><init>(Ljava/lang/String;ILorg/json/JSONObject;)V

    invoke-virtual {v0}, Lcom/adcolony/sdk/af;->b()V

    move v0, v2

    .line 91
    goto/16 :goto_0
.end method
