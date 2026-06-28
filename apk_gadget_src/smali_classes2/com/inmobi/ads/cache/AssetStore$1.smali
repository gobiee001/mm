.class final Lcom/inmobi/ads/cache/AssetStore$1;
.super Ljava/lang/Object;
.source "AssetStore.java"

# interfaces
.implements Lcom/inmobi/ads/cache/e;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/inmobi/ads/cache/AssetStore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/inmobi/ads/cache/AssetStore;


# direct methods
.method constructor <init>(Lcom/inmobi/ads/cache/AssetStore;)V
    .locals 0

    .prologue
    .line 65
    iput-object p1, p0, Lcom/inmobi/ads/cache/AssetStore$1;->a:Lcom/inmobi/ads/cache/AssetStore;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/inmobi/ads/cache/a;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 92
    invoke-static {}, Lcom/inmobi/ads/cache/AssetStore;->d()Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Asset fetch failed for remote URL ("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 5232
    iget-object v1, p1, Lcom/inmobi/ads/cache/a;->d:Ljava/lang/String;

    .line 92
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    iget-object v0, p0, Lcom/inmobi/ads/cache/AssetStore$1;->a:Lcom/inmobi/ads/cache/AssetStore;

    .line 6232
    iget-object v1, p1, Lcom/inmobi/ads/cache/a;->d:Ljava/lang/String;

    .line 93
    invoke-static {v0, v1}, Lcom/inmobi/ads/cache/AssetStore;->a(Lcom/inmobi/ads/cache/AssetStore;Ljava/lang/String;)V

    .line 94
    iget v0, p1, Lcom/inmobi/ads/cache/a;->c:I

    if-gtz v0, :cond_1

    .line 95
    invoke-static {}, Lcom/inmobi/ads/cache/AssetStore;->d()Ljava/lang/String;

    .line 96
    iget-object v0, p0, Lcom/inmobi/ads/cache/AssetStore$1;->a:Lcom/inmobi/ads/cache/AssetStore;

    invoke-static {v0, p1, v2}, Lcom/inmobi/ads/cache/AssetStore;->a(Lcom/inmobi/ads/cache/AssetStore;Lcom/inmobi/ads/cache/a;Z)V

    .line 97
    iget-object v0, p0, Lcom/inmobi/ads/cache/AssetStore$1;->a:Lcom/inmobi/ads/cache/AssetStore;

    invoke-static {v0}, Lcom/inmobi/ads/cache/AssetStore;->b(Lcom/inmobi/ads/cache/AssetStore;)Lcom/inmobi/ads/cache/d;

    invoke-static {p1}, Lcom/inmobi/ads/cache/d;->c(Lcom/inmobi/ads/cache/a;)V

    .line 109
    :cond_0
    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/inmobi/ads/cache/AssetStore$1;->a:Lcom/inmobi/ads/cache/AssetStore;

    invoke-static {v0}, Lcom/inmobi/ads/cache/AssetStore;->c(Lcom/inmobi/ads/cache/AssetStore;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 114
    :goto_1
    return-void

    .line 99
    :cond_1
    invoke-static {}, Lcom/inmobi/ads/cache/AssetStore;->d()Ljava/lang/String;

    .line 100
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p1, Lcom/inmobi/ads/cache/a;->f:J

    .line 101
    iget-object v0, p0, Lcom/inmobi/ads/cache/AssetStore$1;->a:Lcom/inmobi/ads/cache/AssetStore;

    invoke-static {v0}, Lcom/inmobi/ads/cache/AssetStore;->b(Lcom/inmobi/ads/cache/AssetStore;)Lcom/inmobi/ads/cache/d;

    invoke-static {p1}, Lcom/inmobi/ads/cache/d;->b(Lcom/inmobi/ads/cache/a;)I

    .line 104
    invoke-static {}, Lcom/inmobi/commons/core/utilities/d;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 105
    iget-object v0, p0, Lcom/inmobi/ads/cache/AssetStore$1;->a:Lcom/inmobi/ads/cache/AssetStore;

    invoke-static {v0, p1, v2}, Lcom/inmobi/ads/cache/AssetStore;->a(Lcom/inmobi/ads/cache/AssetStore;Lcom/inmobi/ads/cache/a;Z)V

    goto :goto_0

    .line 110
    :catch_0
    move-exception v0

    .line 111
    invoke-static {}, Lcom/inmobi/ads/cache/AssetStore;->d()Ljava/lang/String;

    .line 112
    invoke-static {}, Lcom/inmobi/commons/core/d/c;->a()Lcom/inmobi/commons/core/d/c;

    move-result-object v1

    new-instance v2, Lcom/inmobi/commons/core/d/b;

    invoke-direct {v2, v0}, Lcom/inmobi/commons/core/d/b;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Lcom/inmobi/commons/core/d/c;->a(Lcom/inmobi/commons/core/d/g;)V

    goto :goto_1
.end method

.method public final a(Lcom/inmobi/commons/core/network/c;Ljava/lang/String;Lcom/inmobi/ads/cache/a;)V
    .locals 8

    .prologue
    .line 70
    invoke-static {}, Lcom/inmobi/ads/cache/AssetStore;->d()Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Asset fetch succeeded for URL "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1232
    iget-object v1, p3, Lcom/inmobi/ads/cache/a;->d:Ljava/lang/String;

    .line 70
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " Updating location on disk (file://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    new-instance v1, Lcom/inmobi/ads/cache/a$a;

    invoke-direct {v1}, Lcom/inmobi/ads/cache/a$a;-><init>()V

    .line 2232
    iget-object v2, p3, Lcom/inmobi/ads/cache/a;->d:Ljava/lang/String;

    .line 74
    iget-object v0, p0, Lcom/inmobi/ads/cache/AssetStore$1;->a:Lcom/inmobi/ads/cache/AssetStore;

    .line 75
    invoke-static {v0}, Lcom/inmobi/ads/cache/AssetStore;->a(Lcom/inmobi/ads/cache/AssetStore;)Lcom/inmobi/ads/b$a;

    move-result-object v0

    .line 2819
    iget v5, v0, Lcom/inmobi/ads/b$a;->a:I

    .line 75
    iget-object v0, p0, Lcom/inmobi/ads/cache/AssetStore$1;->a:Lcom/inmobi/ads/cache/AssetStore;

    .line 76
    invoke-static {v0}, Lcom/inmobi/ads/cache/AssetStore;->a(Lcom/inmobi/ads/cache/AssetStore;)Lcom/inmobi/ads/b$a;

    move-result-object v0

    .line 2831
    iget-wide v6, v0, Lcom/inmobi/ads/b$a;->e:J

    move-object v3, p2

    move-object v4, p1

    .line 74
    invoke-virtual/range {v1 .. v7}, Lcom/inmobi/ads/cache/a$a;->a(Ljava/lang/String;Ljava/lang/String;Lcom/inmobi/commons/core/network/c;IJ)Lcom/inmobi/ads/cache/a$a;

    move-result-object v0

    .line 77
    invoke-virtual {v0}, Lcom/inmobi/ads/cache/a$a;->a()Lcom/inmobi/ads/cache/a;

    move-result-object v0

    .line 78
    iget-object v1, p0, Lcom/inmobi/ads/cache/AssetStore$1;->a:Lcom/inmobi/ads/cache/AssetStore;

    invoke-static {v1}, Lcom/inmobi/ads/cache/AssetStore;->b(Lcom/inmobi/ads/cache/AssetStore;)Lcom/inmobi/ads/cache/d;

    invoke-static {v0}, Lcom/inmobi/ads/cache/d;->b(Lcom/inmobi/ads/cache/a;)I

    .line 3293
    iget-object v1, p3, Lcom/inmobi/ads/cache/a;->k:Ljava/lang/String;

    .line 3297
    iput-object v1, v0, Lcom/inmobi/ads/cache/a;->k:Ljava/lang/String;

    .line 4261
    iget-wide v2, p3, Lcom/inmobi/ads/cache/a;->a:J

    .line 4265
    iput-wide v2, v0, Lcom/inmobi/ads/cache/a;->a:J

    .line 81
    iget-object v1, p0, Lcom/inmobi/ads/cache/AssetStore$1;->a:Lcom/inmobi/ads/cache/AssetStore;

    const/4 v2, 0x1

    invoke-static {v1, v0, v2}, Lcom/inmobi/ads/cache/AssetStore;->a(Lcom/inmobi/ads/cache/AssetStore;Lcom/inmobi/ads/cache/a;Z)V

    .line 83
    :try_start_0
    iget-object v0, p0, Lcom/inmobi/ads/cache/AssetStore$1;->a:Lcom/inmobi/ads/cache/AssetStore;

    invoke-static {v0}, Lcom/inmobi/ads/cache/AssetStore;->c(Lcom/inmobi/ads/cache/AssetStore;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 88
    :goto_0
    return-void

    .line 84
    :catch_0
    move-exception v0

    .line 85
    invoke-static {}, Lcom/inmobi/ads/cache/AssetStore;->d()Ljava/lang/String;

    .line 86
    invoke-static {}, Lcom/inmobi/commons/core/d/c;->a()Lcom/inmobi/commons/core/d/c;

    move-result-object v1

    new-instance v2, Lcom/inmobi/commons/core/d/b;

    invoke-direct {v2, v0}, Lcom/inmobi/commons/core/d/b;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Lcom/inmobi/commons/core/d/c;->a(Lcom/inmobi/commons/core/d/g;)V

    goto :goto_0
.end method
