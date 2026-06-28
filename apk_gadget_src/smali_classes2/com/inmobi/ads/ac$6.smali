.class public final Lcom/inmobi/ads/ac$6;
.super Ljava/lang/Object;
.source "NativeAdContainer.java"

# interfaces
.implements Ljava/lang/Runnable;


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
.method public constructor <init>(Lcom/inmobi/ads/ac;)V
    .locals 0

    .prologue
    .line 1653
    iput-object p1, p0, Lcom/inmobi/ads/ac$6;->a:Lcom/inmobi/ads/ac;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 1656
    iget-object v0, p0, Lcom/inmobi/ads/ac$6;->a:Lcom/inmobi/ads/ac;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/inmobi/ads/ac;->o:Z

    .line 1657
    iget-object v0, p0, Lcom/inmobi/ads/ac$6;->a:Lcom/inmobi/ads/ac;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/inmobi/ads/ac;->b(Lcom/inmobi/ads/NativeAsset;)V

    .line 1658
    return-void
.end method
