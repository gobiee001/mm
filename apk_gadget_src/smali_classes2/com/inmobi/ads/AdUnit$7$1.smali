.class final Lcom/inmobi/ads/AdUnit$7$1;
.super Ljava/lang/Object;
.source "AdUnit.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/inmobi/ads/AdUnit$7;->a(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/inmobi/ads/AdUnit$7;


# direct methods
.method constructor <init>(Lcom/inmobi/ads/AdUnit$7;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1002
    iput-object p1, p0, Lcom/inmobi/ads/AdUnit$7$1;->b:Lcom/inmobi/ads/AdUnit$7;

    iput-object p2, p0, Lcom/inmobi/ads/AdUnit$7$1;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    .line 1005
    iget-object v0, p0, Lcom/inmobi/ads/AdUnit$7$1;->b:Lcom/inmobi/ads/AdUnit$7;

    iget-object v0, v0, Lcom/inmobi/ads/AdUnit$7;->e:Lcom/inmobi/ads/AdUnit;

    sget-object v1, Lcom/inmobi/ads/AdUnit$AdState;->STATE_FAILED:Lcom/inmobi/ads/AdUnit$AdState;

    .line 1328
    iput-object v1, v0, Lcom/inmobi/ads/AdUnit;->a:Lcom/inmobi/ads/AdUnit$AdState;

    .line 1006
    iget-object v0, p0, Lcom/inmobi/ads/AdUnit$7$1;->b:Lcom/inmobi/ads/AdUnit$7;

    iget-object v0, v0, Lcom/inmobi/ads/AdUnit$7;->e:Lcom/inmobi/ads/AdUnit;

    const-string v1, "TrueAdViewFailedToBuild"

    invoke-virtual {v0, v1}, Lcom/inmobi/ads/AdUnit;->d(Ljava/lang/String;)V

    .line 1007
    iget-object v0, p0, Lcom/inmobi/ads/AdUnit$7$1;->b:Lcom/inmobi/ads/AdUnit$7;

    iget-object v0, v0, Lcom/inmobi/ads/AdUnit$7;->e:Lcom/inmobi/ads/AdUnit;

    iget-object v1, p0, Lcom/inmobi/ads/AdUnit$7$1;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/inmobi/ads/AdUnit;->b(Ljava/lang/String;)V

    .line 1008
    iget-object v0, p0, Lcom/inmobi/ads/AdUnit$7$1;->b:Lcom/inmobi/ads/AdUnit$7;

    iget-object v0, v0, Lcom/inmobi/ads/AdUnit$7;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inmobi/ads/AdUnit$b;

    .line 1009
    if-eqz v0, :cond_1

    .line 1010
    const-string v1, "int"

    iget-object v2, p0, Lcom/inmobi/ads/AdUnit$7$1;->b:Lcom/inmobi/ads/AdUnit$7;

    iget-object v2, v2, Lcom/inmobi/ads/AdUnit$7;->e:Lcom/inmobi/ads/AdUnit;

    invoke-virtual {v2}, Lcom/inmobi/ads/AdUnit;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1011
    invoke-interface {v0}, Lcom/inmobi/ads/AdUnit$b;->c()V

    .line 1018
    :goto_0
    return-void

    .line 1013
    :cond_0
    new-instance v1, Lcom/inmobi/ads/InMobiAdRequestStatus;

    sget-object v2, Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;->INTERNAL_ERROR:Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;

    invoke-direct {v1, v2}, Lcom/inmobi/ads/InMobiAdRequestStatus;-><init>(Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;)V

    invoke-interface {v0, v1}, Lcom/inmobi/ads/AdUnit$b;->a(Lcom/inmobi/ads/InMobiAdRequestStatus;)V

    goto :goto_0

    .line 1016
    :cond_1
    iget-object v0, p0, Lcom/inmobi/ads/AdUnit$7$1;->b:Lcom/inmobi/ads/AdUnit$7;

    iget-object v0, v0, Lcom/inmobi/ads/AdUnit$7;->e:Lcom/inmobi/ads/AdUnit;

    invoke-virtual {v0}, Lcom/inmobi/ads/AdUnit;->g()V

    goto :goto_0
.end method
