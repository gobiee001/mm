.class final Lcom/inmobi/ads/g$1;
.super Ljava/lang/Object;
.source "AdPreLoader.java"

# interfaces
.implements Landroid/content/ComponentCallbacks2;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/inmobi/ads/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/inmobi/ads/g;


# direct methods
.method constructor <init>(Lcom/inmobi/ads/g;)V
    .locals 0

    .prologue
    .line 66
    iput-object p1, p0, Lcom/inmobi/ads/g$1;->a:Lcom/inmobi/ads/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .prologue
    .line 76
    return-void
.end method

.method public final onLowMemory()V
    .locals 0

    .prologue
    .line 80
    return-void
.end method

.method public final onTrimMemory(I)V
    .locals 1

    .prologue
    .line 69
    const/16 v0, 0xf

    if-ne p1, v0, :cond_0

    .line 70
    iget-object v0, p0, Lcom/inmobi/ads/g$1;->a:Lcom/inmobi/ads/g;

    invoke-static {v0}, Lcom/inmobi/ads/g;->a(Lcom/inmobi/ads/g;)V

    .line 72
    :cond_0
    return-void
.end method
