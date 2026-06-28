.class final Lcom/inmobi/ads/ac$3;
.super Ljava/lang/Object;
.source "NativeAdContainer.java"

# interfaces
.implements Lcom/inmobi/ads/ad$a;


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
    .line 951
    iput-object p1, p0, Lcom/inmobi/ads/ac$3;->a:Lcom/inmobi/ads/ac;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;Z)V
    .locals 1

    .prologue
    .line 954
    iget-object v0, p0, Lcom/inmobi/ads/ac$3;->a:Lcom/inmobi/ads/ac;

    invoke-virtual {v0, p2}, Lcom/inmobi/ads/ac;->a(Z)V

    .line 955
    return-void
.end method
