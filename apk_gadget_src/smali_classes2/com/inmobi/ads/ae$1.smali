.class final Lcom/inmobi/ads/ae$1;
.super Ljava/lang/Object;
.source "NativeAdUnit.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/inmobi/ads/ae;->G()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/inmobi/ads/ae;


# direct methods
.method constructor <init>(Lcom/inmobi/ads/ae;)V
    .locals 0

    .prologue
    .line 285
    iput-object p1, p0, Lcom/inmobi/ads/ae$1;->a:Lcom/inmobi/ads/ae;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .prologue
    .line 288
    sget-object v0, Lcom/inmobi/ads/AdUnit$AdState;->STATE_AVAILABLE:Lcom/inmobi/ads/AdUnit$AdState;

    iget-object v1, p0, Lcom/inmobi/ads/ae$1;->a:Lcom/inmobi/ads/ae;

    .line 2273
    iget-object v1, v1, Lcom/inmobi/ads/AdUnit;->a:Lcom/inmobi/ads/AdUnit$AdState;

    .line 288
    if-ne v0, v1, :cond_0

    .line 289
    iget-object v0, p0, Lcom/inmobi/ads/ae$1;->a:Lcom/inmobi/ads/ae;

    sget-object v1, Lcom/inmobi/ads/AdUnit$AdState;->STATE_READY:Lcom/inmobi/ads/AdUnit$AdState;

    .line 2328
    iput-object v1, v0, Lcom/inmobi/ads/AdUnit;->a:Lcom/inmobi/ads/AdUnit$AdState;

    .line 291
    iget-object v0, p0, Lcom/inmobi/ads/ae$1;->a:Lcom/inmobi/ads/ae;

    invoke-virtual {v0}, Lcom/inmobi/ads/ae;->i()Lcom/inmobi/ads/AdContainer;

    move-result-object v1

    .line 292
    iget-object v0, p0, Lcom/inmobi/ads/ae$1;->a:Lcom/inmobi/ads/ae;

    .line 2866
    iget-object v2, v0, Lcom/inmobi/ads/AdUnit;->t:Lcom/inmobi/rendering/RenderView;

    .line 293
    iget-object v0, p0, Lcom/inmobi/ads/ae$1;->a:Lcom/inmobi/ads/ae;

    invoke-virtual {v0}, Lcom/inmobi/ads/ae;->f()Lcom/inmobi/ads/AdUnit$b;

    move-result-object v3

    .line 295
    instance-of v0, v1, Lcom/inmobi/ads/ac;

    if-eqz v0, :cond_1

    move-object v0, v1

    .line 296
    check-cast v0, Lcom/inmobi/ads/ac;

    .line 3601
    iput-object v2, v0, Lcom/inmobi/ads/ac;->t:Lcom/inmobi/rendering/RenderView;

    .line 297
    check-cast v1, Lcom/inmobi/ads/ac;

    iget-object v0, p0, Lcom/inmobi/ads/ae$1;->a:Lcom/inmobi/ads/ae;

    .line 4337
    iget v0, v0, Lcom/inmobi/ads/AdUnit;->q:I

    .line 4631
    iput v0, v1, Lcom/inmobi/ads/ac;->v:I

    .line 305
    iget-object v0, p0, Lcom/inmobi/ads/ae$1;->a:Lcom/inmobi/ads/ae;

    invoke-virtual {v0}, Lcom/inmobi/ads/ae;->C()V

    .line 306
    if-eqz v3, :cond_0

    .line 307
    invoke-static {}, Lcom/inmobi/ads/ae;->Z()Ljava/lang/String;

    .line 308
    invoke-interface {v3}, Lcom/inmobi/ads/AdUnit$b;->b()V

    .line 311
    :cond_0
    :goto_0
    return-void

    .line 299
    :cond_1
    if-eqz v3, :cond_0

    .line 300
    invoke-static {}, Lcom/inmobi/ads/ae;->Z()Ljava/lang/String;

    .line 301
    new-instance v0, Lcom/inmobi/ads/InMobiAdRequestStatus;

    sget-object v1, Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;->INTERNAL_ERROR:Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;

    invoke-direct {v0, v1}, Lcom/inmobi/ads/InMobiAdRequestStatus;-><init>(Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;)V

    invoke-interface {v3, v0}, Lcom/inmobi/ads/AdUnit$b;->a(Lcom/inmobi/ads/InMobiAdRequestStatus;)V

    goto :goto_0
.end method
