.class final Lcom/inmobi/ads/g$a;
.super Ljava/lang/Object;
.source "AdPreLoader.java"

# interfaces
.implements Lcom/inmobi/ads/AdUnit$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/inmobi/ads/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field private a:Lcom/inmobi/ads/bc;


# direct methods
.method constructor <init>(Lcom/inmobi/ads/bc;)V
    .locals 0

    .prologue
    .line 228
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 229
    iput-object p1, p0, Lcom/inmobi/ads/g$a;->a:Lcom/inmobi/ads/bc;

    .line 230
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 0

    .prologue
    .line 239
    return-void
.end method

.method public final a(Lcom/inmobi/ads/InMobiAdRequestStatus;)V
    .locals 3

    .prologue
    .line 248
    invoke-static {}, Lcom/inmobi/ads/g;->c()Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onAdLoadFailed called. Status:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/inmobi/ads/InMobiAdRequestStatus;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 251
    sget-object v0, Lcom/inmobi/ads/g;->a:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v1, p0, Lcom/inmobi/ads/g$a;->a:Lcom/inmobi/ads/bc;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inmobi/ads/AdUnit;

    .line 253
    invoke-virtual {p1}, Lcom/inmobi/ads/InMobiAdRequestStatus;->getStatusCode()Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;

    move-result-object v1

    sget-object v2, Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;->NO_FILL:Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;

    if-ne v1, v2, :cond_0

    .line 254
    const-string v1, "PreLoadServerNoFill"

    invoke-virtual {v0, v1}, Lcom/inmobi/ads/AdUnit;->e(Ljava/lang/String;)V

    .line 256
    :cond_0
    return-void
.end method

.method public final a(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 277
    return-void
.end method

.method public final a(Z)V
    .locals 0

    .prologue
    .line 234
    invoke-static {}, Lcom/inmobi/ads/g;->c()Ljava/lang/String;

    .line 236
    return-void
.end method

.method public final b()V
    .locals 0

    .prologue
    .line 243
    invoke-static {}, Lcom/inmobi/ads/g;->c()Ljava/lang/String;

    .line 244
    return-void
.end method

.method public final b(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 286
    return-void
.end method

.method public final c()V
    .locals 0

    .prologue
    .line 260
    return-void
.end method

.method public final d()V
    .locals 0

    .prologue
    .line 264
    return-void
.end method

.method public final e()V
    .locals 0

    .prologue
    .line 268
    return-void
.end method

.method public final f()V
    .locals 0

    .prologue
    .line 272
    return-void
.end method

.method public final g()V
    .locals 0

    .prologue
    .line 281
    return-void
.end method

.method public final h()V
    .locals 0

    .prologue
    .line 290
    return-void
.end method

.method public final i()V
    .locals 0

    .prologue
    .line 294
    return-void
.end method
