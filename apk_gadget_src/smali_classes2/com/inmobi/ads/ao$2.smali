.class final Lcom/inmobi/ads/ao$2;
.super Ljava/lang/Object;
.source "NativeLayoutInflater.java"

# interfaces
.implements Lcom/inmobi/ads/NativeTimerView$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/inmobi/ads/ao;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/inmobi/ads/aw;

.field final synthetic b:Lcom/inmobi/ads/ao;


# direct methods
.method constructor <init>(Lcom/inmobi/ads/ao;Lcom/inmobi/ads/aw;)V
    .locals 0

    .prologue
    .line 203
    iput-object p1, p0, Lcom/inmobi/ads/ao$2;->b:Lcom/inmobi/ads/ao;

    iput-object p2, p0, Lcom/inmobi/ads/ao$2;->a:Lcom/inmobi/ads/aw;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 206
    iget-object v0, p0, Lcom/inmobi/ads/ao$2;->b:Lcom/inmobi/ads/ao;

    invoke-static {v0}, Lcom/inmobi/ads/ao;->c(Lcom/inmobi/ads/ao;)Lcom/inmobi/ads/ao$b;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 207
    iget-object v0, p0, Lcom/inmobi/ads/ao$2;->b:Lcom/inmobi/ads/ao;

    invoke-static {v0}, Lcom/inmobi/ads/ao;->c(Lcom/inmobi/ads/ao;)Lcom/inmobi/ads/ao$b;

    move-result-object v0

    iget-object v1, p0, Lcom/inmobi/ads/ao$2;->a:Lcom/inmobi/ads/aw;

    invoke-interface {v0, v1}, Lcom/inmobi/ads/ao$b;->a(Lcom/inmobi/ads/aw;)V

    .line 209
    :cond_0
    return-void
.end method
