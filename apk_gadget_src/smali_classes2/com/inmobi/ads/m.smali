.class Lcom/inmobi/ads/m;
.super Lcom/inmobi/ads/AdUnit;
.source "BannerAdUnit.java"

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# static fields
.field private static final y:Ljava/lang/String;

.field private static final z:Ljava/lang/String;


# instance fields
.field private A:Z

.field private B:I

.field w:Z

.field x:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    const-class v0, Lcom/inmobi/ads/m;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/inmobi/ads/m;->y:Ljava/lang/String;

    .line 19
    const-class v0, Lcom/inmobi/ads/InMobiBanner;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/inmobi/ads/m;->z:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;JLcom/inmobi/ads/AdUnit$b;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 29
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/inmobi/ads/AdUnit;-><init>(Landroid/content/Context;JLcom/inmobi/ads/AdUnit$b;)V

    .line 23
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/inmobi/ads/m;->A:Z

    .line 24
    iput-boolean v1, p0, Lcom/inmobi/ads/m;->w:Z

    .line 25
    iput v1, p0, Lcom/inmobi/ads/m;->B:I

    .line 31
    instance-of v0, p1, Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 32
    check-cast p1, Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 34
    :cond_0
    return-void
.end method


# virtual methods
.method final K()V
    .locals 2

    .prologue
    .line 45
    invoke-virtual {p0}, Lcom/inmobi/ads/m;->i()Lcom/inmobi/ads/AdContainer;

    move-result-object v0

    check-cast v0, Lcom/inmobi/rendering/RenderView;

    .line 46
    if-nez v0, :cond_0

    .line 50
    :goto_0
    return-void

    .line 48
    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/inmobi/ads/m;->w:Z

    .line 49
    invoke-virtual {v0}, Lcom/inmobi/rendering/RenderView;->a()V

    goto :goto_0
.end method

.method final L()Z
    .locals 2

    .prologue
    .line 107
    .line 6273
    iget-object v0, p0, Lcom/inmobi/ads/AdUnit;->a:Lcom/inmobi/ads/AdUnit$AdState;

    .line 107
    sget-object v1, Lcom/inmobi/ads/AdUnit$AdState;->STATE_ACTIVE:Lcom/inmobi/ads/AdUnit$AdState;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final M()V
    .locals 2

    .prologue
    .line 276
    .line 15273
    iget-object v0, p0, Lcom/inmobi/ads/AdUnit;->a:Lcom/inmobi/ads/AdUnit$AdState;

    .line 277
    sget-object v1, Lcom/inmobi/ads/AdUnit$AdState;->STATE_LOADED:Lcom/inmobi/ads/AdUnit$AdState;

    if-eq v0, v1, :cond_0

    sget-object v1, Lcom/inmobi/ads/AdUnit$AdState;->STATE_RENDERED:Lcom/inmobi/ads/AdUnit$AdState;

    if-eq v0, v1, :cond_0

    sget-object v1, Lcom/inmobi/ads/AdUnit$AdState;->STATE_ACTIVE:Lcom/inmobi/ads/AdUnit$AdState;

    if-ne v0, v1, :cond_1

    .line 280
    :cond_0
    invoke-virtual {p0}, Lcom/inmobi/ads/m;->i()Lcom/inmobi/ads/AdContainer;

    move-result-object v0

    .line 281
    if-eqz v0, :cond_1

    .line 282
    invoke-interface {v0}, Lcom/inmobi/ads/AdContainer;->getViewableAd()Lcom/inmobi/ads/ViewableAd;

    move-result-object v0

    .line 283
    if-eqz v0, :cond_1

    .line 284
    invoke-virtual {v0}, Lcom/inmobi/ads/ViewableAd;->d()V

    .line 288
    :cond_1
    return-void
.end method

.method public final N()V
    .locals 2

    .prologue
    .line 291
    .line 16273
    iget-object v0, p0, Lcom/inmobi/ads/AdUnit;->a:Lcom/inmobi/ads/AdUnit$AdState;

    .line 292
    sget-object v1, Lcom/inmobi/ads/AdUnit$AdState;->STATE_LOADED:Lcom/inmobi/ads/AdUnit$AdState;

    if-eq v0, v1, :cond_0

    sget-object v1, Lcom/inmobi/ads/AdUnit$AdState;->STATE_RENDERED:Lcom/inmobi/ads/AdUnit$AdState;

    if-eq v0, v1, :cond_0

    sget-object v1, Lcom/inmobi/ads/AdUnit$AdState;->STATE_ACTIVE:Lcom/inmobi/ads/AdUnit$AdState;

    if-ne v0, v1, :cond_1

    .line 295
    :cond_0
    invoke-virtual {p0}, Lcom/inmobi/ads/m;->i()Lcom/inmobi/ads/AdContainer;

    move-result-object v0

    .line 296
    if-eqz v0, :cond_1

    .line 297
    invoke-interface {v0}, Lcom/inmobi/ads/AdContainer;->getViewableAd()Lcom/inmobi/ads/ViewableAd;

    move-result-object v0

    .line 298
    if-eqz v0, :cond_1

    .line 299
    const/4 v1, 0x0

    new-array v1, v1, [Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/inmobi/ads/ViewableAd;->a([Landroid/view/View;)V

    .line 303
    :cond_1
    return-void
.end method

.method public final a(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 38
    invoke-super {p0, p1}, Lcom/inmobi/ads/AdUnit;->a(Landroid/content/Context;)V

    .line 39
    instance-of v0, p1, Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 40
    check-cast p1, Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 42
    :cond_0
    return-void
.end method

.method public final a(Lcom/inmobi/rendering/RenderView;)V
    .locals 6

    .prologue
    .line 187
    :try_start_0
    invoke-super {p0, p1}, Lcom/inmobi/ads/AdUnit;->a(Lcom/inmobi/rendering/RenderView;)V

    .line 10273
    iget-object v0, p0, Lcom/inmobi/ads/AdUnit;->a:Lcom/inmobi/ads/AdUnit$AdState;

    .line 189
    sget-object v1, Lcom/inmobi/ads/AdUnit$AdState;->STATE_AVAILABLE:Lcom/inmobi/ads/AdUnit$AdState;

    if-ne v0, v1, :cond_1

    .line 190
    invoke-virtual {p0}, Lcom/inmobi/ads/m;->z()V

    .line 191
    sget-object v0, Lcom/inmobi/ads/AdUnit$AdState;->STATE_LOADED:Lcom/inmobi/ads/AdUnit$AdState;

    .line 10328
    iput-object v0, p0, Lcom/inmobi/ads/AdUnit;->a:Lcom/inmobi/ads/AdUnit$AdState;

    .line 192
    invoke-virtual {p0}, Lcom/inmobi/ads/m;->C()V

    .line 194
    sget-object v0, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->DEBUG:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v1, Lcom/inmobi/ads/m;->z:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Successfully loaded Banner ad markup in the WebView for placement id: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 11269
    iget-wide v4, p0, Lcom/inmobi/ads/AdUnit;->b:J

    .line 196
    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 194
    invoke-static {v0, v1, v2}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 198
    invoke-virtual {p0}, Lcom/inmobi/ads/m;->f()Lcom/inmobi/ads/AdUnit$b;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 199
    invoke-virtual {p0}, Lcom/inmobi/ads/m;->f()Lcom/inmobi/ads/AdUnit$b;

    move-result-object v0

    invoke-interface {v0}, Lcom/inmobi/ads/AdUnit$b;->b()V

    .line 201
    :cond_0
    invoke-virtual {p0}, Lcom/inmobi/ads/m;->q()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 209
    :cond_1
    :goto_0
    return-void

    .line 203
    :catch_0
    move-exception v0

    .line 204
    sget-object v1, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->ERROR:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v2, Lcom/inmobi/ads/m;->z:Ljava/lang/String;

    const-string v3, "Unable to load ad; SDK encountered an internal error"

    invoke-static {v1, v2, v3}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Loading ad markup into container encountered an unexpected error: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 207
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method protected final b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 122
    const-string v0, "banner"

    return-object v0
.end method

.method protected final b(Lcom/inmobi/ads/a;)V
    .locals 0

    .prologue
    .line 88
    return-void
.end method

.method public final b(Lcom/inmobi/rendering/RenderView;)V
    .locals 4

    .prologue
    .line 214
    :try_start_0
    invoke-super {p0, p1}, Lcom/inmobi/ads/AdUnit;->b(Lcom/inmobi/rendering/RenderView;)V

    .line 11273
    iget-object v0, p0, Lcom/inmobi/ads/AdUnit;->a:Lcom/inmobi/ads/AdUnit$AdState;

    .line 216
    sget-object v1, Lcom/inmobi/ads/AdUnit$AdState;->STATE_LOADED:Lcom/inmobi/ads/AdUnit$AdState;

    if-ne v0, v1, :cond_0

    .line 217
    sget-object v0, Lcom/inmobi/ads/AdUnit$AdState;->STATE_RENDERED:Lcom/inmobi/ads/AdUnit$AdState;

    .line 11328
    iput-object v0, p0, Lcom/inmobi/ads/AdUnit;->a:Lcom/inmobi/ads/AdUnit$AdState;

    .line 218
    const-string v0, "AdRendered"

    invoke-virtual {p0, v0}, Lcom/inmobi/ads/m;->e(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 227
    :cond_0
    :goto_0
    return-void

    .line 221
    :catch_0
    move-exception v0

    .line 222
    sget-object v1, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->ERROR:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v2, Lcom/inmobi/ads/m;->z:Ljava/lang/String;

    const-string v3, "Unable to load ad; SDK encountered an internal error"

    invoke-static {v1, v2, v3}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 224
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "BannerAdUnit.onRenderViewVisible threw unexpected error: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 225
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method public final b(Z)V
    .locals 6

    .prologue
    .line 53
    if-eqz p1, :cond_0

    .line 54
    sget-object v0, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->DEBUG:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v1, Lcom/inmobi/ads/m;->z:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Initiating Banner refresh for placement id: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1269
    iget-wide v4, p0, Lcom/inmobi/ads/AdUnit;->b:J

    .line 55
    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 54
    invoke-static {v0, v1, v2}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    :cond_0
    sget-object v0, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->DEBUG:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v1, Lcom/inmobi/ads/m;->z:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Fetching a Banner ad for placement id: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2269
    iget-wide v4, p0, Lcom/inmobi/ads/AdUnit;->b:J

    .line 58
    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 57
    invoke-static {v0, v1, v2}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    iput-boolean p1, p0, Lcom/inmobi/ads/m;->A:Z

    .line 61
    invoke-super {p0}, Lcom/inmobi/ads/AdUnit;->l()V

    .line 62
    return-void
.end method

.method protected final c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Lcom/inmobi/ads/m;->x:Ljava/lang/String;

    return-object v0
.end method

.method public final c(JLcom/inmobi/ads/a;)V
    .locals 7

    .prologue
    .line 152
    :try_start_0
    invoke-super {p0, p1, p2, p3}, Lcom/inmobi/ads/AdUnit;->c(JLcom/inmobi/ads/a;)V

    .line 153
    sget-object v0, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->DEBUG:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v1, Lcom/inmobi/ads/m;->z:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Banner ad fetch successful for placement id: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 7269
    iget-wide v4, p0, Lcom/inmobi/ads/AdUnit;->b:J

    .line 154
    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 153
    invoke-static {v0, v1, v2}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 8269
    iget-wide v0, p0, Lcom/inmobi/ads/AdUnit;->b:J

    .line 156
    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    .line 8273
    iget-object v0, p0, Lcom/inmobi/ads/AdUnit;->a:Lcom/inmobi/ads/AdUnit$AdState;

    .line 156
    sget-object v1, Lcom/inmobi/ads/AdUnit$AdState;->STATE_AVAILABLE:Lcom/inmobi/ads/AdUnit$AdState;

    if-ne v0, v1, :cond_0

    .line 157
    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/inmobi/ads/m;->j()Lcom/inmobi/rendering/RenderView;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/inmobi/ads/m;->a(ZLcom/inmobi/rendering/RenderView;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 159
    :try_start_1
    sget-object v0, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->DEBUG:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v1, Lcom/inmobi/ads/m;->z:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Started loading banner ad markup in WebView for placement id: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 9269
    iget-wide v4, p0, Lcom/inmobi/ads/AdUnit;->b:J

    .line 161
    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 159
    invoke-static {v0, v1, v2}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    const/4 v0, 0x0

    .line 9304
    iget-object v1, p0, Lcom/inmobi/ads/AdUnit;->f:Ljava/lang/String;

    .line 162
    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/inmobi/ads/m;->a(Lcom/inmobi/ads/AdUnit$b;Ljava/lang/String;Ljava/lang/Runnable;Landroid/os/Looper;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 182
    :cond_0
    :goto_0
    return-void

    .line 163
    :catch_0
    move-exception v0

    .line 166
    :try_start_2
    invoke-virtual {p0}, Lcom/inmobi/ads/m;->z()V

    .line 167
    invoke-virtual {p0}, Lcom/inmobi/ads/m;->f()Lcom/inmobi/ads/AdUnit$b;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 168
    invoke-virtual {p0}, Lcom/inmobi/ads/m;->f()Lcom/inmobi/ads/AdUnit$b;

    move-result-object v1

    new-instance v2, Lcom/inmobi/ads/InMobiAdRequestStatus;

    sget-object v3, Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;->INTERNAL_ERROR:Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;

    invoke-direct {v2, v3}, Lcom/inmobi/ads/InMobiAdRequestStatus;-><init>(Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;)V

    invoke-interface {v1, v2}, Lcom/inmobi/ads/AdUnit$b;->a(Lcom/inmobi/ads/InMobiAdRequestStatus;)V

    .line 170
    :cond_1
    sget-object v1, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->ERROR:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v2, Lcom/inmobi/ads/m;->z:Ljava/lang/String;

    const-string v3, "Unable to load ad; SDK encountered an internal error"

    invoke-static {v1, v2, v3}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Loading ad markup into container encountered an unexpected error: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 173
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 176
    :catch_1
    move-exception v0

    .line 177
    sget-object v1, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->ERROR:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v2, Lcom/inmobi/ads/m;->z:Ljava/lang/String;

    const-string v3, "Unable to load ad; SDK encountered an internal error"

    invoke-static {v1, v2, v3}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Handling ad fetch successful encountered an unexpected error: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 180
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method public final declared-synchronized c(Lcom/inmobi/rendering/RenderView;)V
    .locals 6

    .prologue
    .line 232
    monitor-enter p0

    :try_start_0
    invoke-super {p0, p1}, Lcom/inmobi/ads/AdUnit;->c(Lcom/inmobi/rendering/RenderView;)V

    .line 12273
    iget-object v0, p0, Lcom/inmobi/ads/AdUnit;->a:Lcom/inmobi/ads/AdUnit$AdState;

    .line 237
    sget-object v1, Lcom/inmobi/ads/AdUnit$AdState;->STATE_RENDERED:Lcom/inmobi/ads/AdUnit$AdState;

    if-ne v0, v1, :cond_1

    .line 238
    iget v0, p0, Lcom/inmobi/ads/m;->B:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/inmobi/ads/m;->B:I

    .line 239
    sget-object v0, Lcom/inmobi/ads/AdUnit$AdState;->STATE_ACTIVE:Lcom/inmobi/ads/AdUnit$AdState;

    .line 12328
    iput-object v0, p0, Lcom/inmobi/ads/AdUnit;->a:Lcom/inmobi/ads/AdUnit$AdState;

    .line 240
    sget-object v0, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->DEBUG:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v1, Lcom/inmobi/ads/m;->z:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Successfully displayed banner ad for placement Id : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 13269
    iget-wide v4, p0, Lcom/inmobi/ads/AdUnit;->b:J

    .line 241
    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 240
    invoke-static {v0, v1, v2}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 242
    invoke-virtual {p0}, Lcom/inmobi/ads/m;->f()Lcom/inmobi/ads/AdUnit$b;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 243
    invoke-virtual {p0}, Lcom/inmobi/ads/m;->f()Lcom/inmobi/ads/AdUnit$b;

    move-result-object v0

    invoke-interface {v0}, Lcom/inmobi/ads/AdUnit$b;->e()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 254
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 13273
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/inmobi/ads/AdUnit;->a:Lcom/inmobi/ads/AdUnit$AdState;

    .line 245
    sget-object v1, Lcom/inmobi/ads/AdUnit$AdState;->STATE_ACTIVE:Lcom/inmobi/ads/AdUnit$AdState;

    if-ne v0, v1, :cond_0

    .line 246
    iget v0, p0, Lcom/inmobi/ads/m;->B:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/inmobi/ads/m;->B:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 248
    :catch_0
    move-exception v0

    .line 249
    :try_start_2
    sget-object v1, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->ERROR:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v2, Lcom/inmobi/ads/m;->z:Ljava/lang/String;

    const-string v3, "Unable to display ad; SDK encountered an internal error"

    invoke-static {v1, v2, v3}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 251
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "BannerAdUnit.onAdScreenDisplayed threw unexpected error: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 252
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 232
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected final d()Lcom/inmobi/ads/AdContainer$RenderingProperties$PlacementType;
    .locals 1

    .prologue
    .line 136
    sget-object v0, Lcom/inmobi/ads/AdContainer$RenderingProperties$PlacementType;->PLACEMENT_TYPE_INLINE:Lcom/inmobi/ads/AdContainer$RenderingProperties$PlacementType;

    return-object v0
.end method

.method public final declared-synchronized d(Lcom/inmobi/rendering/RenderView;)V
    .locals 4

    .prologue
    .line 259
    monitor-enter p0

    :try_start_0
    invoke-super {p0, p1}, Lcom/inmobi/ads/AdUnit;->d(Lcom/inmobi/rendering/RenderView;)V

    .line 14273
    iget-object v0, p0, Lcom/inmobi/ads/AdUnit;->a:Lcom/inmobi/ads/AdUnit$AdState;

    .line 261
    sget-object v1, Lcom/inmobi/ads/AdUnit$AdState;->STATE_ACTIVE:Lcom/inmobi/ads/AdUnit$AdState;

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/inmobi/ads/m;->B:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/inmobi/ads/m;->B:I

    if-nez v0, :cond_0

    .line 262
    sget-object v0, Lcom/inmobi/ads/AdUnit$AdState;->STATE_RENDERED:Lcom/inmobi/ads/AdUnit$AdState;

    .line 14328
    iput-object v0, p0, Lcom/inmobi/ads/AdUnit;->a:Lcom/inmobi/ads/AdUnit$AdState;

    .line 263
    invoke-virtual {p0}, Lcom/inmobi/ads/m;->f()Lcom/inmobi/ads/AdUnit$b;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 264
    invoke-virtual {p0}, Lcom/inmobi/ads/m;->f()Lcom/inmobi/ads/AdUnit$b;

    move-result-object v0

    invoke-interface {v0}, Lcom/inmobi/ads/AdUnit$b;->f()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 273
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 267
    :catch_0
    move-exception v0

    .line 268
    :try_start_1
    sget-object v1, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->ERROR:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v2, Lcom/inmobi/ads/m;->z:Ljava/lang/String;

    const-string v3, "Unable to dismiss ad; SDK encountered an internal error"

    invoke-static {v1, v2, v3}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 270
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "BannerAdUnit.onAdScreenDismissed threw unexpected error: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 271
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 259
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected final e()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 141
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 143
    const-string v2, "u-rt"

    iget-boolean v0, p0, Lcom/inmobi/ads/m;->A:Z

    if-eqz v0, :cond_0

    const-string v0, "1"

    :goto_0
    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    const-string v0, "mk-ad-slot"

    iget-object v2, p0, Lcom/inmobi/ads/m;->x:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    return-object v1

    .line 143
    :cond_0
    const-string v0, "0"

    goto :goto_0
.end method

.method protected final j()Lcom/inmobi/rendering/RenderView;
    .locals 2

    .prologue
    .line 113
    invoke-super {p0}, Lcom/inmobi/ads/AdUnit;->j()Lcom/inmobi/rendering/RenderView;

    move-result-object v0

    .line 114
    iget-boolean v1, p0, Lcom/inmobi/ads/m;->w:Z

    if-eqz v1, :cond_0

    .line 115
    invoke-virtual {v0}, Lcom/inmobi/rendering/RenderView;->a()V

    .line 117
    :cond_0
    return-object v0
.end method

.method public final n()V
    .locals 1

    .prologue
    .line 98
    sget-object v0, Lcom/inmobi/ads/AdUnit$AdState;->STATE_LOADING:Lcom/inmobi/ads/AdUnit$AdState;

    .line 5328
    iput-object v0, p0, Lcom/inmobi/ads/AdUnit;->a:Lcom/inmobi/ads/AdUnit$AdState;

    .line 99
    invoke-super {p0}, Lcom/inmobi/ads/AdUnit;->n()V

    .line 100
    return-void
.end method

.method public onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 307
    return-void
.end method

.method public onActivityDestroyed(Landroid/app/Activity;)V
    .locals 2

    .prologue
    .line 339
    invoke-virtual {p0}, Lcom/inmobi/ads/m;->a()Landroid/content/Context;

    move-result-object v0

    .line 341
    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 342
    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/app/Application;->unregisterActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 343
    invoke-virtual {p0}, Lcom/inmobi/ads/m;->r()V

    .line 345
    :cond_0
    return-void
.end method

.method public onActivityPaused(Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 323
    return-void
.end method

.method public onActivityResumed(Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 319
    return-void
.end method

.method public onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 335
    return-void
.end method

.method public onActivityStarted(Landroid/app/Activity;)V
    .locals 1

    .prologue
    .line 311
    invoke-virtual {p0}, Lcom/inmobi/ads/m;->a()Landroid/content/Context;

    move-result-object v0

    .line 312
    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 313
    invoke-virtual {p0}, Lcom/inmobi/ads/m;->N()V

    .line 315
    :cond_0
    return-void
.end method

.method public onActivityStopped(Landroid/app/Activity;)V
    .locals 1

    .prologue
    .line 327
    invoke-virtual {p0}, Lcom/inmobi/ads/m;->a()Landroid/content/Context;

    move-result-object v0

    .line 328
    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 329
    invoke-virtual {p0}, Lcom/inmobi/ads/m;->M()V

    .line 331
    :cond_0
    return-void
.end method

.method protected final p()Z
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 66
    sget-object v2, Lcom/inmobi/ads/AdUnit$AdState;->STATE_LOADING:Lcom/inmobi/ads/AdUnit$AdState;

    .line 2273
    iget-object v3, p0, Lcom/inmobi/ads/AdUnit;->a:Lcom/inmobi/ads/AdUnit$AdState;

    .line 66
    if-eq v2, v3, :cond_0

    sget-object v2, Lcom/inmobi/ads/AdUnit$AdState;->STATE_AVAILABLE:Lcom/inmobi/ads/AdUnit$AdState;

    .line 3273
    iget-object v3, p0, Lcom/inmobi/ads/AdUnit;->a:Lcom/inmobi/ads/AdUnit$AdState;

    .line 66
    if-ne v2, v3, :cond_1

    .line 67
    :cond_0
    new-instance v2, Lcom/inmobi/ads/InMobiAdRequestStatus;

    sget-object v3, Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;->REQUEST_PENDING:Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;

    invoke-direct {v2, v3}, Lcom/inmobi/ads/InMobiAdRequestStatus;-><init>(Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;)V

    invoke-virtual {p0, v2, v1}, Lcom/inmobi/ads/m;->a(Lcom/inmobi/ads/InMobiAdRequestStatus;Z)V

    .line 68
    sget-object v1, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->ERROR:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v2, Lcom/inmobi/ads/m;->z:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "An ad load is already in progress. Please wait for the load to complete before requesting for another ad for placement id: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 4269
    iget-wide v4, p0, Lcom/inmobi/ads/AdUnit;->b:J

    .line 70
    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 68
    invoke-static {v1, v2, v3}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    :goto_0
    return v0

    .line 4273
    :cond_1
    iget-object v2, p0, Lcom/inmobi/ads/AdUnit;->a:Lcom/inmobi/ads/AdUnit$AdState;

    .line 74
    sget-object v3, Lcom/inmobi/ads/AdUnit$AdState;->STATE_ACTIVE:Lcom/inmobi/ads/AdUnit$AdState;

    if-ne v2, v3, :cond_2

    .line 75
    new-instance v2, Lcom/inmobi/ads/InMobiAdRequestStatus;

    sget-object v3, Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;->AD_ACTIVE:Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;

    invoke-direct {v2, v3}, Lcom/inmobi/ads/InMobiAdRequestStatus;-><init>(Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;)V

    invoke-virtual {p0, v2, v1}, Lcom/inmobi/ads/m;->a(Lcom/inmobi/ads/InMobiAdRequestStatus;Z)V

    .line 76
    sget-object v1, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->ERROR:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v2, Lcom/inmobi/ads/m;->z:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "An ad is currently being viewed by the user. Please wait for the user to close the ad before requesting for another ad for placement id: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 5269
    iget-wide v4, p0, Lcom/inmobi/ads/AdUnit;->b:J

    .line 78
    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 76
    invoke-static {v1, v2, v3}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    move v0, v1

    .line 83
    goto :goto_0
.end method
