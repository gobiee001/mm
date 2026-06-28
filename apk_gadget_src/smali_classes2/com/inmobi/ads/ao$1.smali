.class final Lcom/inmobi/ads/ao$1;
.super Ljava/lang/Object;
.source "NativeLayoutInflater.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/inmobi/ads/ao;->b(Lcom/inmobi/ads/ar;Landroid/view/ViewGroup;Lcom/inmobi/rendering/RenderView;)Lcom/inmobi/ads/ar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/inmobi/ads/ar;

.field final synthetic b:Landroid/view/ViewGroup;

.field final synthetic c:Lcom/inmobi/ads/ao;


# direct methods
.method constructor <init>(Lcom/inmobi/ads/ao;Lcom/inmobi/ads/ar;Landroid/view/ViewGroup;)V
    .locals 0

    .prologue
    .line 149
    iput-object p1, p0, Lcom/inmobi/ads/ao$1;->c:Lcom/inmobi/ads/ao;

    iput-object p2, p0, Lcom/inmobi/ads/ao$1;->a:Lcom/inmobi/ads/ar;

    iput-object p3, p0, Lcom/inmobi/ads/ao$1;->b:Landroid/view/ViewGroup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    .line 152
    iget-object v0, p0, Lcom/inmobi/ads/ao$1;->c:Lcom/inmobi/ads/ao;

    invoke-static {v0}, Lcom/inmobi/ads/ao;->a(Lcom/inmobi/ads/ao;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 153
    iget-object v0, p0, Lcom/inmobi/ads/ao$1;->c:Lcom/inmobi/ads/ao;

    iget-object v1, p0, Lcom/inmobi/ads/ao$1;->a:Lcom/inmobi/ads/ar;

    iget-object v2, p0, Lcom/inmobi/ads/ao$1;->c:Lcom/inmobi/ads/ao;

    invoke-static {v2}, Lcom/inmobi/ads/ao;->b(Lcom/inmobi/ads/ao;)Lcom/inmobi/ads/ai;

    move-result-object v2

    .line 1305
    iget-object v2, v2, Lcom/inmobi/ads/ai;->d:Lcom/inmobi/ads/ag;

    .line 2181
    invoke-virtual {v0, v1, v2}, Lcom/inmobi/ads/ao;->b(Landroid/view/ViewGroup;Lcom/inmobi/ads/ag;)Landroid/view/ViewGroup;

    .line 155
    :cond_0
    return-void
.end method
