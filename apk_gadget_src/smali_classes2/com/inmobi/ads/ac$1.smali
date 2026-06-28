.class final Lcom/inmobi/ads/ac$1;
.super Ljava/lang/Object;
.source "NativeAdContainer.java"

# interfaces
.implements Lcom/inmobi/ads/AdContainer$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/inmobi/ads/ac;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/inmobi/ads/ac;


# direct methods
.method constructor <init>(Lcom/inmobi/ads/ac;)V
    .locals 0

    .prologue
    .line 230
    iput-object p1, p0, Lcom/inmobi/ads/ac$1;->a:Lcom/inmobi/ads/ac;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    .line 233
    invoke-static {}, Lcom/inmobi/ads/ac;->u()Ljava/lang/String;

    .line 234
    iget-object v0, p0, Lcom/inmobi/ads/ac$1;->a:Lcom/inmobi/ads/ac;

    invoke-virtual {v0}, Lcom/inmobi/ads/ac;->e()Lcom/inmobi/ads/ac$c;

    move-result-object v0

    .line 235
    if-eqz v0, :cond_0

    .line 236
    invoke-interface {v0}, Lcom/inmobi/ads/ac$c;->a()V

    .line 238
    :cond_0
    return-void
.end method

.method public final a(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 242
    iget-object v0, p0, Lcom/inmobi/ads/ac$1;->a:Lcom/inmobi/ads/ac;

    invoke-virtual {v0}, Lcom/inmobi/ads/ac;->l()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_1

    .line 250
    :cond_0
    :goto_0
    return-void

    .line 246
    :cond_1
    iget-object v0, p0, Lcom/inmobi/ads/ac$1;->a:Lcom/inmobi/ads/ac;

    invoke-virtual {v0}, Lcom/inmobi/ads/ac;->e()Lcom/inmobi/ads/ac$c;

    move-result-object v0

    .line 247
    if-eqz v0, :cond_0

    .line 248
    invoke-interface {v0}, Lcom/inmobi/ads/ac$c;->b()V

    goto :goto_0
.end method

.method public final b(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 254
    iget-object v0, p0, Lcom/inmobi/ads/ac$1;->a:Lcom/inmobi/ads/ac;

    invoke-virtual {v0}, Lcom/inmobi/ads/ac;->e()Lcom/inmobi/ads/ac$c;

    move-result-object v0

    .line 255
    if-eqz v0, :cond_0

    .line 256
    invoke-interface {v0}, Lcom/inmobi/ads/ac$c;->f()V

    .line 258
    :cond_0
    return-void
.end method
