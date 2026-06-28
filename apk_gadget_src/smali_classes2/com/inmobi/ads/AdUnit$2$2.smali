.class final Lcom/inmobi/ads/AdUnit$2$2;
.super Ljava/lang/Object;
.source "AdUnit.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/inmobi/ads/AdUnit$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/inmobi/ads/AdUnit$2;


# direct methods
.method constructor <init>(Lcom/inmobi/ads/AdUnit$2;)V
    .locals 0

    .prologue
    .line 1960
    iput-object p1, p0, Lcom/inmobi/ads/AdUnit$2$2;->a:Lcom/inmobi/ads/AdUnit$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    .line 1963
    iget-object v0, p0, Lcom/inmobi/ads/AdUnit$2$2;->a:Lcom/inmobi/ads/AdUnit$2;

    iget-object v0, v0, Lcom/inmobi/ads/AdUnit$2;->a:Lcom/inmobi/ads/AdUnit;

    sget-object v1, Lcom/inmobi/ads/AdUnit$AdState;->STATE_FAILED:Lcom/inmobi/ads/AdUnit$AdState;

    .line 2328
    iput-object v1, v0, Lcom/inmobi/ads/AdUnit;->a:Lcom/inmobi/ads/AdUnit$AdState;

    .line 1964
    iget-object v0, p0, Lcom/inmobi/ads/AdUnit$2$2;->a:Lcom/inmobi/ads/AdUnit$2;

    iget-object v0, v0, Lcom/inmobi/ads/AdUnit$2;->a:Lcom/inmobi/ads/AdUnit;

    new-instance v1, Lcom/inmobi/ads/InMobiAdRequestStatus;

    sget-object v2, Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;->INTERNAL_ERROR:Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;

    invoke-direct {v1, v2}, Lcom/inmobi/ads/InMobiAdRequestStatus;-><init>(Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;)V

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/inmobi/ads/AdUnit;->a(Lcom/inmobi/ads/InMobiAdRequestStatus;Z)V

    .line 1965
    return-void
.end method
