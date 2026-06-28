.class final Lcom/inmobi/ads/AdUnit$3$1;
.super Ljava/lang/Object;
.source "AdUnit.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/inmobi/ads/AdUnit$3;->s()V
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
    .line 1994
    iput-object p1, p0, Lcom/inmobi/ads/AdUnit$3$1;->a:Lcom/inmobi/ads/AdUnit$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 1997
    sget-object v0, Lcom/inmobi/ads/AdUnit$AdState;->STATE_AVAILABLE:Lcom/inmobi/ads/AdUnit$AdState;

    iget-object v1, p0, Lcom/inmobi/ads/AdUnit$3$1;->a:Lcom/inmobi/ads/AdUnit$3;

    iget-object v1, v1, Lcom/inmobi/ads/AdUnit$3;->a:Lcom/inmobi/ads/AdUnit;

    .line 2273
    iget-object v1, v1, Lcom/inmobi/ads/AdUnit;->a:Lcom/inmobi/ads/AdUnit$AdState;

    .line 1997
    if-ne v0, v1, :cond_0

    .line 1998
    iget-object v0, p0, Lcom/inmobi/ads/AdUnit$3$1;->a:Lcom/inmobi/ads/AdUnit$3;

    iget-object v0, v0, Lcom/inmobi/ads/AdUnit$3;->a:Lcom/inmobi/ads/AdUnit;

    invoke-static {v0}, Lcom/inmobi/ads/AdUnit;->i(Lcom/inmobi/ads/AdUnit;)Z

    .line 1999
    iget-object v0, p0, Lcom/inmobi/ads/AdUnit$3$1;->a:Lcom/inmobi/ads/AdUnit$3;

    iget-object v0, v0, Lcom/inmobi/ads/AdUnit$3;->a:Lcom/inmobi/ads/AdUnit;

    invoke-virtual {v0}, Lcom/inmobi/ads/AdUnit;->F()V

    .line 2001
    :cond_0
    return-void
.end method
