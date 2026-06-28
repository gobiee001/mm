.class final Lcom/inmobi/ads/w$1;
.super Ljava/lang/Object;
.source "InterstitialAdUnit.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/inmobi/ads/w;->P()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/inmobi/ads/w;


# direct methods
.method constructor <init>(Lcom/inmobi/ads/w;)V
    .locals 0

    .prologue
    .line 281
    iput-object p1, p0, Lcom/inmobi/ads/w$1;->a:Lcom/inmobi/ads/w;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .prologue
    .line 284
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/inmobi/ads/w$1;->a:Lcom/inmobi/ads/w;

    invoke-static {v0}, Lcom/inmobi/ads/w;->a(Lcom/inmobi/ads/w;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 285
    iget-object v0, p0, Lcom/inmobi/ads/w$1;->a:Lcom/inmobi/ads/w;

    invoke-static {v0}, Lcom/inmobi/ads/w;->a(Lcom/inmobi/ads/w;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    .line 286
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inmobi/ads/AdUnit$b;

    .line 287
    if-nez v0, :cond_0

    .line 288
    iget-object v0, p0, Lcom/inmobi/ads/w$1;->a:Lcom/inmobi/ads/w;

    invoke-virtual {v0}, Lcom/inmobi/ads/w;->g()V

    .line 284
    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 293
    :cond_0
    iget-object v2, p0, Lcom/inmobi/ads/w$1;->a:Lcom/inmobi/ads/w;

    const-string v3, "TrueValidAdRequestReceived"

    invoke-virtual {v2, v3}, Lcom/inmobi/ads/w;->d(Ljava/lang/String;)V

    .line 294
    iget-object v2, p0, Lcom/inmobi/ads/w$1;->a:Lcom/inmobi/ads/w;

    const-string v3, "AdRequestFilled"

    invoke-virtual {v2, v3}, Lcom/inmobi/ads/w;->d(Ljava/lang/String;)V

    .line 295
    const/4 v2, 0x1

    invoke-interface {v0, v2}, Lcom/inmobi/ads/AdUnit$b;->a(Z)V

    .line 296
    invoke-interface {v0}, Lcom/inmobi/ads/AdUnit$b;->b()V

    .line 297
    invoke-interface {v0}, Lcom/inmobi/ads/AdUnit$b;->a()V

    goto :goto_1

    .line 299
    :cond_1
    iget-object v0, p0, Lcom/inmobi/ads/w$1;->a:Lcom/inmobi/ads/w;

    invoke-static {v0}, Lcom/inmobi/ads/w;->a(Lcom/inmobi/ads/w;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 300
    return-void
.end method
