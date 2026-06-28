.class final Lcom/inmobi/ads/ay$2;
.super Ljava/lang/Object;
.source "NativeVideoAdContainer.java"

# interfaces
.implements Lcom/inmobi/ads/ad$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/inmobi/ads/ay;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/inmobi/ads/ay;


# direct methods
.method constructor <init>(Lcom/inmobi/ads/ay;)V
    .locals 0

    .prologue
    .line 171
    iput-object p1, p0, Lcom/inmobi/ads/ay$2;->a:Lcom/inmobi/ads/ay;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;Z)V
    .locals 1

    .prologue
    .line 174
    iget-object v0, p0, Lcom/inmobi/ads/ay$2;->a:Lcom/inmobi/ads/ay;

    invoke-virtual {v0, p2}, Lcom/inmobi/ads/ay;->a(Z)V

    .line 175
    iget-object v0, p0, Lcom/inmobi/ads/ay$2;->a:Lcom/inmobi/ads/ay;

    invoke-static {v0, p1, p2}, Lcom/inmobi/ads/ay;->a(Lcom/inmobi/ads/ay;Landroid/view/View;Z)V

    .line 176
    return-void
.end method
