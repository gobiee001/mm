.class final Lcom/inmobi/ads/aj$2;
.super Ljava/lang/Object;
.source "NativeDataSource.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/inmobi/ads/aj;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Landroid/view/ViewGroup;

.field final synthetic c:Landroid/view/ViewGroup;

.field final synthetic d:Lcom/inmobi/ads/ag;

.field final synthetic e:Lcom/inmobi/ads/aj;


# direct methods
.method constructor <init>(Lcom/inmobi/ads/aj;ILandroid/view/ViewGroup;Landroid/view/ViewGroup;Lcom/inmobi/ads/ag;)V
    .locals 0

    .prologue
    .line 125
    iput-object p1, p0, Lcom/inmobi/ads/aj$2;->e:Lcom/inmobi/ads/aj;

    iput p2, p0, Lcom/inmobi/ads/aj$2;->a:I

    iput-object p3, p0, Lcom/inmobi/ads/aj$2;->b:Landroid/view/ViewGroup;

    iput-object p4, p0, Lcom/inmobi/ads/aj$2;->c:Landroid/view/ViewGroup;

    iput-object p5, p0, Lcom/inmobi/ads/aj$2;->d:Lcom/inmobi/ads/ag;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    .line 129
    iget-object v0, p0, Lcom/inmobi/ads/aj$2;->e:Lcom/inmobi/ads/aj;

    invoke-static {v0}, Lcom/inmobi/ads/aj;->b(Lcom/inmobi/ads/aj;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 136
    :goto_0
    return-void

    .line 133
    :cond_0
    iget-object v0, p0, Lcom/inmobi/ads/aj$2;->e:Lcom/inmobi/ads/aj;

    invoke-static {v0}, Lcom/inmobi/ads/aj;->c(Lcom/inmobi/ads/aj;)Landroid/util/SparseArray;

    move-result-object v0

    iget v1, p0, Lcom/inmobi/ads/aj$2;->a:I

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->remove(I)V

    .line 134
    iget-object v0, p0, Lcom/inmobi/ads/aj$2;->e:Lcom/inmobi/ads/aj;

    invoke-static {v0}, Lcom/inmobi/ads/aj;->a(Lcom/inmobi/ads/aj;)Lcom/inmobi/ads/ao;

    move-result-object v0

    iget-object v1, p0, Lcom/inmobi/ads/aj$2;->b:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/inmobi/ads/aj$2;->d:Lcom/inmobi/ads/ag;

    .line 1181
    invoke-virtual {v0, v1, v2}, Lcom/inmobi/ads/ao;->b(Landroid/view/ViewGroup;Lcom/inmobi/ads/ag;)Landroid/view/ViewGroup;

    goto :goto_0
.end method
