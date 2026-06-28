.class final Lcom/inmobi/ads/an$1;
.super Ljava/lang/Object;
.source "NativeInflater.java"

# interfaces
.implements Lcom/inmobi/ads/ao$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/inmobi/ads/an;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/inmobi/ads/an;


# direct methods
.method constructor <init>(Lcom/inmobi/ads/an;)V
    .locals 0

    .prologue
    .line 22
    iput-object p1, p0, Lcom/inmobi/ads/an$1;->a:Lcom/inmobi/ads/an;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(ILcom/inmobi/ads/NativeAsset;)V
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/inmobi/ads/an$1;->a:Lcom/inmobi/ads/an;

    invoke-virtual {v0}, Lcom/inmobi/ads/an;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 27
    :goto_0
    return-void

    .line 26
    :cond_0
    iget-object v0, p0, Lcom/inmobi/ads/an$1;->a:Lcom/inmobi/ads/an;

    invoke-static {v0}, Lcom/inmobi/ads/an;->a(Lcom/inmobi/ads/an;)Lcom/inmobi/ads/ac;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/inmobi/ads/ac;->a(ILcom/inmobi/ads/NativeAsset;)V

    goto :goto_0
.end method
