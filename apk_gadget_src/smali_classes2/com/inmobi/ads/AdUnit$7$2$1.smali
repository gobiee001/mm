.class final Lcom/inmobi/ads/AdUnit$7$2$1;
.super Ljava/lang/Object;
.source "AdUnit.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/inmobi/ads/AdUnit$7$2;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/inmobi/ads/AdUnit$7$2;


# direct methods
.method constructor <init>(Lcom/inmobi/ads/AdUnit$7$2;)V
    .locals 0

    .prologue
    .line 1056
    iput-object p1, p0, Lcom/inmobi/ads/AdUnit$7$2$1;->a:Lcom/inmobi/ads/AdUnit$7$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 1059
    iget-object v0, p0, Lcom/inmobi/ads/AdUnit$7$2$1;->a:Lcom/inmobi/ads/AdUnit$7$2;

    iget-object v0, v0, Lcom/inmobi/ads/AdUnit$7$2;->a:Lcom/inmobi/ads/AdUnit$7;

    iget-object v1, v0, Lcom/inmobi/ads/AdUnit$7;->e:Lcom/inmobi/ads/AdUnit;

    iget-object v0, p0, Lcom/inmobi/ads/AdUnit$7$2$1;->a:Lcom/inmobi/ads/AdUnit$7$2;

    iget-object v0, v0, Lcom/inmobi/ads/AdUnit$7$2;->a:Lcom/inmobi/ads/AdUnit$7;

    iget-object v0, v0, Lcom/inmobi/ads/AdUnit$7;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inmobi/ads/AdUnit$b;

    invoke-virtual {v1, v0}, Lcom/inmobi/ads/AdUnit;->b(Lcom/inmobi/ads/AdUnit$b;)V

    .line 1060
    return-void
.end method
