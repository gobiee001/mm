.class final Lcom/inmobi/ads/g$b;
.super Ljava/lang/Object;
.source "AdPreLoader.java"

# interfaces
.implements Lcom/inmobi/ads/AdUnit$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/inmobi/ads/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "b"
.end annotation


# instance fields
.field private a:Lcom/inmobi/ads/bc;


# direct methods
.method constructor <init>(Lcom/inmobi/ads/bc;)V
    .locals 0

    .prologue
    .line 305
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 306
    iput-object p1, p0, Lcom/inmobi/ads/g$b;->a:Lcom/inmobi/ads/bc;

    .line 307
    return-void
.end method


# virtual methods
.method public final a(Lcom/inmobi/ads/AdUnit;)V
    .locals 2

    .prologue
    .line 311
    invoke-static {}, Lcom/inmobi/ads/g;->c()Ljava/lang/String;

    .line 312
    sget-object v0, Lcom/inmobi/ads/g;->a:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v1, p0, Lcom/inmobi/ads/g$b;->a:Lcom/inmobi/ads/bc;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 313
    return-void
.end method

.method public final a(Lcom/inmobi/ads/AdUnit;Lcom/inmobi/ads/InMobiAdRequestStatus;)V
    .locals 2

    .prologue
    .line 317
    invoke-static {}, Lcom/inmobi/ads/g;->c()Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onAdLoadFailed called. Status:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/inmobi/ads/InMobiAdRequestStatus;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 318
    sget-object v0, Lcom/inmobi/ads/g;->a:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v1, p0, Lcom/inmobi/ads/g$b;->a:Lcom/inmobi/ads/bc;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 319
    invoke-virtual {p2}, Lcom/inmobi/ads/InMobiAdRequestStatus;->getStatusCode()Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;

    move-result-object v0

    sget-object v1, Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;->NO_FILL:Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;

    if-ne v0, v1, :cond_0

    .line 320
    const-string v0, "PreLoadServerNoFill"

    invoke-virtual {p1, v0}, Lcom/inmobi/ads/AdUnit;->e(Ljava/lang/String;)V

    .line 322
    :cond_0
    return-void
.end method
