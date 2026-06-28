.class public Lcom/chartboost/sdk/impl/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/chartboost/sdk/impl/a$a;
    }
.end annotation


# instance fields
.field public final a:I

.field public final b:Ljava/lang/String;

.field public final c:Ljava/lang/String;

.field public final d:Ljava/lang/String;

.field public final e:Ljava/lang/String;

.field public final f:Ljava/lang/String;

.field public final g:Z

.field public final h:Z


# direct methods
.method private constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput p1, p0, Lcom/chartboost/sdk/impl/a;->a:I

    .line 36
    iput-object p2, p0, Lcom/chartboost/sdk/impl/a;->b:Ljava/lang/String;

    .line 37
    iput-object p3, p0, Lcom/chartboost/sdk/impl/a;->c:Ljava/lang/String;

    .line 38
    iput-object p4, p0, Lcom/chartboost/sdk/impl/a;->d:Ljava/lang/String;

    .line 39
    iput-object p5, p0, Lcom/chartboost/sdk/impl/a;->e:Ljava/lang/String;

    .line 40
    iput-object p6, p0, Lcom/chartboost/sdk/impl/a;->f:Ljava/lang/String;

    .line 41
    iput-boolean p7, p0, Lcom/chartboost/sdk/impl/a;->g:Z

    .line 42
    iput-boolean p8, p0, Lcom/chartboost/sdk/impl/a;->h:Z

    .line 43
    return-void
.end method

.method public static a()Lcom/chartboost/sdk/impl/a;
    .locals 9

    .prologue
    const/4 v1, 0x0

    .line 49
    new-instance v0, Lcom/chartboost/sdk/impl/a;

    const-string v2, "interstitial"

    const-string v3, "interstitial"

    const-string v4, "/interstitial/get"

    const-string v5, "webview/%s/interstitial/get"

    const-string v6, "/interstitial/show"

    move v7, v1

    move v8, v1

    invoke-direct/range {v0 .. v8}, Lcom/chartboost/sdk/impl/a;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    return-object v0
.end method

.method public static b()Lcom/chartboost/sdk/impl/a;
    .locals 9

    .prologue
    const/4 v1, 0x1

    .line 61
    new-instance v0, Lcom/chartboost/sdk/impl/a;

    const-string v2, "rewarded"

    const-string v3, "rewarded-video"

    const-string v4, "/reward/get"

    const-string v5, "webview/%s/reward/get"

    const-string v6, "/reward/show"

    const/4 v8, 0x0

    move v7, v1

    invoke-direct/range {v0 .. v8}, Lcom/chartboost/sdk/impl/a;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    return-object v0
.end method

.method public static c()Lcom/chartboost/sdk/impl/a;
    .locals 9

    .prologue
    .line 73
    new-instance v0, Lcom/chartboost/sdk/impl/a;

    const/4 v1, 0x2

    const-string v2, "inplay"

    const/4 v3, 0x0

    const-string v4, "/inplay/get"

    const-string v5, "no webview endpoint"

    const-string v6, "/inplay/show"

    const/4 v7, 0x0

    const/4 v8, 0x1

    invoke-direct/range {v0 .. v8}, Lcom/chartboost/sdk/impl/a;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    return-object v0
.end method


# virtual methods
.method public a(I)Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 86
    const-string v1, "%s-%s"

    const/4 v0, 0x2

    new-array v2, v0, [Ljava/lang/Object;

    const/4 v0, 0x0

    iget-object v3, p0, Lcom/chartboost/sdk/impl/a;->c:Ljava/lang/String;

    aput-object v3, v2, v0

    if-ne p1, v4, :cond_0

    const-string v0, "web"

    :goto_0
    aput-object v0, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, "native"

    goto :goto_0
.end method

.method public a(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 90
    sget-object v0, Lcom/chartboost/sdk/i;->c:Lcom/chartboost/sdk/a;

    if-eqz v0, :cond_0

    .line 91
    iget v0, p0, Lcom/chartboost/sdk/impl/a;->a:I

    packed-switch v0, :pswitch_data_0

    .line 104
    :cond_0
    :goto_0
    return-void

    .line 93
    :pswitch_0
    sget-object v0, Lcom/chartboost/sdk/i;->c:Lcom/chartboost/sdk/a;

    invoke-interface {v0, p1}, Lcom/chartboost/sdk/a;->didClickInterstitial(Ljava/lang/String;)V

    goto :goto_0

    .line 97
    :pswitch_1
    sget-object v0, Lcom/chartboost/sdk/i;->c:Lcom/chartboost/sdk/a;

    invoke-interface {v0, p1}, Lcom/chartboost/sdk/a;->didClickRewardedVideo(Ljava/lang/String;)V

    goto :goto_0

    .line 91
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public a(Ljava/lang/String;Lcom/chartboost/sdk/Model/CBError$CBImpressionError;)V
    .locals 1

    .prologue
    .line 159
    sget-object v0, Lcom/chartboost/sdk/i;->c:Lcom/chartboost/sdk/a;

    if-eqz v0, :cond_0

    .line 160
    iget v0, p0, Lcom/chartboost/sdk/impl/a;->a:I

    packed-switch v0, :pswitch_data_0

    .line 174
    :cond_0
    :goto_0
    return-void

    .line 162
    :pswitch_0
    sget-object v0, Lcom/chartboost/sdk/i;->c:Lcom/chartboost/sdk/a;

    invoke-interface {v0, p1, p2}, Lcom/chartboost/sdk/a;->didFailToLoadInterstitial(Ljava/lang/String;Lcom/chartboost/sdk/Model/CBError$CBImpressionError;)V

    goto :goto_0

    .line 166
    :pswitch_1
    sget-object v0, Lcom/chartboost/sdk/i;->c:Lcom/chartboost/sdk/a;

    invoke-interface {v0, p1, p2}, Lcom/chartboost/sdk/a;->didFailToLoadRewardedVideo(Ljava/lang/String;Lcom/chartboost/sdk/Model/CBError$CBImpressionError;)V

    goto :goto_0

    .line 170
    :pswitch_2
    sget-object v0, Lcom/chartboost/sdk/i;->c:Lcom/chartboost/sdk/a;

    invoke-interface {v0, p1, p2}, Lcom/chartboost/sdk/a;->didFailToLoadInPlay(Ljava/lang/String;Lcom/chartboost/sdk/Model/CBError$CBImpressionError;)V

    goto :goto_0

    .line 160
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public b(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 107
    sget-object v0, Lcom/chartboost/sdk/i;->c:Lcom/chartboost/sdk/a;

    if-eqz v0, :cond_0

    .line 108
    iget v0, p0, Lcom/chartboost/sdk/impl/a;->a:I

    packed-switch v0, :pswitch_data_0

    .line 121
    :cond_0
    :goto_0
    return-void

    .line 110
    :pswitch_0
    sget-object v0, Lcom/chartboost/sdk/i;->c:Lcom/chartboost/sdk/a;

    invoke-interface {v0, p1}, Lcom/chartboost/sdk/a;->didCloseInterstitial(Ljava/lang/String;)V

    goto :goto_0

    .line 114
    :pswitch_1
    sget-object v0, Lcom/chartboost/sdk/i;->c:Lcom/chartboost/sdk/a;

    invoke-interface {v0, p1}, Lcom/chartboost/sdk/a;->didCloseRewardedVideo(Ljava/lang/String;)V

    goto :goto_0

    .line 108
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public c(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 124
    sget-object v0, Lcom/chartboost/sdk/i;->c:Lcom/chartboost/sdk/a;

    if-eqz v0, :cond_0

    .line 125
    iget v0, p0, Lcom/chartboost/sdk/impl/a;->a:I

    packed-switch v0, :pswitch_data_0

    .line 138
    :cond_0
    :goto_0
    return-void

    .line 127
    :pswitch_0
    sget-object v0, Lcom/chartboost/sdk/i;->c:Lcom/chartboost/sdk/a;

    invoke-interface {v0, p1}, Lcom/chartboost/sdk/a;->didDismissInterstitial(Ljava/lang/String;)V

    goto :goto_0

    .line 131
    :pswitch_1
    sget-object v0, Lcom/chartboost/sdk/i;->c:Lcom/chartboost/sdk/a;

    invoke-interface {v0, p1}, Lcom/chartboost/sdk/a;->didDismissRewardedVideo(Ljava/lang/String;)V

    goto :goto_0

    .line 125
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public d(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 141
    sget-object v0, Lcom/chartboost/sdk/i;->c:Lcom/chartboost/sdk/a;

    if-eqz v0, :cond_0

    .line 142
    iget v0, p0, Lcom/chartboost/sdk/impl/a;->a:I

    packed-switch v0, :pswitch_data_0

    .line 156
    :cond_0
    :goto_0
    return-void

    .line 144
    :pswitch_0
    sget-object v0, Lcom/chartboost/sdk/i;->c:Lcom/chartboost/sdk/a;

    invoke-interface {v0, p1}, Lcom/chartboost/sdk/a;->didCacheInterstitial(Ljava/lang/String;)V

    goto :goto_0

    .line 148
    :pswitch_1
    sget-object v0, Lcom/chartboost/sdk/i;->c:Lcom/chartboost/sdk/a;

    invoke-interface {v0, p1}, Lcom/chartboost/sdk/a;->didCacheRewardedVideo(Ljava/lang/String;)V

    goto :goto_0

    .line 152
    :pswitch_2
    sget-object v0, Lcom/chartboost/sdk/i;->c:Lcom/chartboost/sdk/a;

    invoke-interface {v0, p1}, Lcom/chartboost/sdk/a;->didCacheInPlay(Ljava/lang/String;)V

    goto :goto_0

    .line 142
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public e(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 177
    sget-object v0, Lcom/chartboost/sdk/i;->c:Lcom/chartboost/sdk/a;

    if-eqz v0, :cond_0

    .line 178
    iget v0, p0, Lcom/chartboost/sdk/impl/a;->a:I

    packed-switch v0, :pswitch_data_0

    .line 191
    :cond_0
    :goto_0
    return-void

    .line 180
    :pswitch_0
    sget-object v0, Lcom/chartboost/sdk/i;->c:Lcom/chartboost/sdk/a;

    invoke-interface {v0, p1}, Lcom/chartboost/sdk/a;->didDisplayInterstitial(Ljava/lang/String;)V

    goto :goto_0

    .line 184
    :pswitch_1
    sget-object v0, Lcom/chartboost/sdk/i;->c:Lcom/chartboost/sdk/a;

    invoke-interface {v0, p1}, Lcom/chartboost/sdk/a;->didDisplayRewardedVideo(Ljava/lang/String;)V

    goto :goto_0

    .line 178
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public f(Ljava/lang/String;)Z
    .locals 2

    .prologue
    .line 194
    const/4 v0, 0x1

    .line 195
    sget-object v1, Lcom/chartboost/sdk/i;->c:Lcom/chartboost/sdk/a;

    if-eqz v1, :cond_0

    .line 196
    iget v1, p0, Lcom/chartboost/sdk/impl/a;->a:I

    packed-switch v1, :pswitch_data_0

    .line 209
    :cond_0
    :goto_0
    return v0

    .line 198
    :pswitch_0
    sget-object v0, Lcom/chartboost/sdk/i;->c:Lcom/chartboost/sdk/a;

    invoke-interface {v0, p1}, Lcom/chartboost/sdk/a;->shouldDisplayInterstitial(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0

    .line 202
    :pswitch_1
    sget-object v0, Lcom/chartboost/sdk/i;->c:Lcom/chartboost/sdk/a;

    invoke-interface {v0, p1}, Lcom/chartboost/sdk/a;->shouldDisplayRewardedVideo(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0

    .line 196
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public g(Ljava/lang/String;)Z
    .locals 2

    .prologue
    .line 213
    const/4 v0, 0x1

    .line 214
    sget-object v1, Lcom/chartboost/sdk/i;->c:Lcom/chartboost/sdk/a;

    if-eqz v1, :cond_0

    .line 215
    iget v1, p0, Lcom/chartboost/sdk/impl/a;->a:I

    packed-switch v1, :pswitch_data_0

    .line 228
    :cond_0
    :goto_0
    :pswitch_0
    return v0

    .line 217
    :pswitch_1
    sget-object v0, Lcom/chartboost/sdk/i;->c:Lcom/chartboost/sdk/a;

    invoke-interface {v0, p1}, Lcom/chartboost/sdk/a;->shouldRequestInterstitial(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0

    .line 215
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
