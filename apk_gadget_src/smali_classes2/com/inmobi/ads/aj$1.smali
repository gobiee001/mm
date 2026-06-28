.class final Lcom/inmobi/ads/aj$1;
.super Ljava/lang/Object;
.source "NativeDataSource.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/inmobi/ads/aj;->destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/Object;

.field final synthetic b:Lcom/inmobi/ads/aj;


# direct methods
.method constructor <init>(Lcom/inmobi/ads/aj;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 110
    iput-object p1, p0, Lcom/inmobi/ads/aj$1;->b:Lcom/inmobi/ads/aj;

    iput-object p2, p0, Lcom/inmobi/ads/aj$1;->a:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 113
    iget-object v0, p0, Lcom/inmobi/ads/aj$1;->b:Lcom/inmobi/ads/aj;

    invoke-static {v0}, Lcom/inmobi/ads/aj;->a(Lcom/inmobi/ads/aj;)Lcom/inmobi/ads/ao;

    move-result-object v1

    iget-object v0, p0, Lcom/inmobi/ads/aj$1;->a:Ljava/lang/Object;

    check-cast v0, Landroid/view/View;

    .line 1458
    iget-object v1, v1, Lcom/inmobi/ads/ao;->d:Lcom/inmobi/ads/NativeViewFactory;

    invoke-virtual {v1, v0}, Lcom/inmobi/ads/NativeViewFactory;->a(Landroid/view/View;)V

    .line 114
    return-void
.end method
