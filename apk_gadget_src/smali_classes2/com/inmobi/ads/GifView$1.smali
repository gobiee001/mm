.class final Lcom/inmobi/ads/GifView$1;
.super Ljava/lang/Object;
.source "GifView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/inmobi/ads/GifView;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/inmobi/ads/GifView;


# direct methods
.method constructor <init>(Lcom/inmobi/ads/GifView;)V
    .locals 0

    .prologue
    .line 71
    iput-object p1, p0, Lcom/inmobi/ads/GifView$1;->a:Lcom/inmobi/ads/GifView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 74
    iget-object v0, p0, Lcom/inmobi/ads/GifView$1;->a:Lcom/inmobi/ads/GifView;

    invoke-static {v0}, Lcom/inmobi/ads/GifView;->a(Lcom/inmobi/ads/GifView;)I

    move-result v0

    add-int/lit8 v0, v0, 0x14

    iget-object v1, p0, Lcom/inmobi/ads/GifView$1;->a:Lcom/inmobi/ads/GifView;

    invoke-static {v1}, Lcom/inmobi/ads/GifView;->b(Lcom/inmobi/ads/GifView;)Landroid/graphics/Movie;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Movie;->duration()I

    move-result v1

    if-lt v0, v1, :cond_0

    .line 75
    iget-object v0, p0, Lcom/inmobi/ads/GifView$1;->a:Lcom/inmobi/ads/GifView;

    iget-object v0, v0, Lcom/inmobi/ads/GifView;->c:Lcom/inmobi/ads/GifView$a;

    invoke-interface {v0}, Lcom/inmobi/ads/GifView$a;->a()V

    .line 77
    :cond_0
    return-void
.end method
