.class final Lcom/inmobi/ads/NativeViewFactory$5;
.super Ljava/lang/Object;
.source "NativeViewFactory.java"

# interfaces
.implements Lcom/inmobi/ads/GifView$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/inmobi/ads/NativeViewFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/inmobi/ads/GifView;

.field final synthetic b:Lcom/inmobi/ads/NativeViewFactory;


# direct methods
.method constructor <init>(Lcom/inmobi/ads/NativeViewFactory;Lcom/inmobi/ads/GifView;)V
    .locals 0

    .prologue
    .line 909
    iput-object p1, p0, Lcom/inmobi/ads/NativeViewFactory$5;->b:Lcom/inmobi/ads/NativeViewFactory;

    iput-object p2, p0, Lcom/inmobi/ads/NativeViewFactory$5;->a:Lcom/inmobi/ads/GifView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 912
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/inmobi/ads/NativeViewFactory$5$1;

    invoke-direct {v1, p0}, Lcom/inmobi/ads/NativeViewFactory$5$1;-><init>(Lcom/inmobi/ads/NativeViewFactory$5;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 919
    return-void
.end method
