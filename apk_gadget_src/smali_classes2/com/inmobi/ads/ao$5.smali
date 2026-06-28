.class final Lcom/inmobi/ads/ao$5;
.super Ljava/lang/Object;
.source "NativeLayoutInflater.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/inmobi/ads/ao;->a(Lcom/inmobi/ads/NativeAsset;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/inmobi/ads/NativeAsset;

.field final synthetic b:Lcom/inmobi/ads/ao;


# direct methods
.method constructor <init>(Lcom/inmobi/ads/ao;Lcom/inmobi/ads/NativeAsset;)V
    .locals 0

    .prologue
    .line 318
    iput-object p1, p0, Lcom/inmobi/ads/ao$5;->b:Lcom/inmobi/ads/ao;

    iput-object p2, p0, Lcom/inmobi/ads/ao$5;->a:Lcom/inmobi/ads/NativeAsset;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 321
    iget-object v0, p0, Lcom/inmobi/ads/ao$5;->b:Lcom/inmobi/ads/ao;

    invoke-static {v0}, Lcom/inmobi/ads/ao;->d(Lcom/inmobi/ads/ao;)Lcom/inmobi/ads/ao$a;

    move-result-object v0

    iget-object v1, p0, Lcom/inmobi/ads/ao$5;->a:Lcom/inmobi/ads/NativeAsset;

    invoke-interface {v0, p1, v1}, Lcom/inmobi/ads/ao$a;->a(Landroid/view/View;Lcom/inmobi/ads/NativeAsset;)V

    .line 322
    return-void
.end method
