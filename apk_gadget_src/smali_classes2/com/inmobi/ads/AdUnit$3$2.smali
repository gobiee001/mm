.class final Lcom/inmobi/ads/AdUnit$3$2;
.super Ljava/lang/Object;
.source "AdUnit.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/inmobi/ads/AdUnit$3;->u()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/inmobi/ads/AdUnit$3;


# direct methods
.method constructor <init>(Lcom/inmobi/ads/AdUnit$3;)V
    .locals 0

    .prologue
    .line 2007
    iput-object p1, p0, Lcom/inmobi/ads/AdUnit$3$2;->a:Lcom/inmobi/ads/AdUnit$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    .line 2010
    iget-object v0, p0, Lcom/inmobi/ads/AdUnit$3$2;->a:Lcom/inmobi/ads/AdUnit$3;

    iget-object v0, v0, Lcom/inmobi/ads/AdUnit$3;->a:Lcom/inmobi/ads/AdUnit;

    .line 2316
    iget-object v0, v0, Lcom/inmobi/ads/AdUnit;->i:Ljava/lang/String;

    .line 2010
    if-eqz v0, :cond_0

    .line 2011
    iget-object v0, p0, Lcom/inmobi/ads/AdUnit$3$2;->a:Lcom/inmobi/ads/AdUnit$3;

    iget-object v0, v0, Lcom/inmobi/ads/AdUnit$3;->a:Lcom/inmobi/ads/AdUnit;

    .line 2413
    iget-object v0, v0, Lcom/inmobi/ads/AdUnit;->g:Lcom/inmobi/ads/h;

    .line 2011
    iget-object v1, p0, Lcom/inmobi/ads/AdUnit$3$2;->a:Lcom/inmobi/ads/AdUnit$3;

    iget-object v1, v1, Lcom/inmobi/ads/AdUnit$3;->a:Lcom/inmobi/ads/AdUnit;

    .line 3316
    iget-object v1, v1, Lcom/inmobi/ads/AdUnit;->i:Ljava/lang/String;

    .line 2011
    invoke-virtual {v0, v1}, Lcom/inmobi/ads/h;->a(Ljava/lang/String;)V

    .line 2013
    :cond_0
    iget-object v0, p0, Lcom/inmobi/ads/AdUnit$3$2;->a:Lcom/inmobi/ads/AdUnit$3;

    iget-object v0, v0, Lcom/inmobi/ads/AdUnit$3;->a:Lcom/inmobi/ads/AdUnit;

    new-instance v1, Lcom/inmobi/ads/InMobiAdRequestStatus;

    sget-object v2, Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;->INTERNAL_ERROR:Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;

    invoke-direct {v1, v2}, Lcom/inmobi/ads/InMobiAdRequestStatus;-><init>(Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;)V

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/inmobi/ads/AdUnit;->a(Lcom/inmobi/ads/InMobiAdRequestStatus;Z)V

    .line 2014
    return-void
.end method
