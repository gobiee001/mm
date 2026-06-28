.class final Lcom/inmobi/ads/cache/AssetStore$a$1;
.super Ljava/lang/Object;
.source "AssetStore.java"

# interfaces
.implements Lcom/inmobi/ads/cache/e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/inmobi/ads/cache/AssetStore$a;-><init>(Landroid/os/Looper;Lcom/inmobi/ads/cache/AssetStore;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/inmobi/ads/cache/AssetStore$a;


# direct methods
.method constructor <init>(Lcom/inmobi/ads/cache/AssetStore$a;)V
    .locals 0

    .prologue
    .line 706
    iput-object p1, p0, Lcom/inmobi/ads/cache/AssetStore$a$1;->a:Lcom/inmobi/ads/cache/AssetStore$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/inmobi/ads/cache/a;)V
    .locals 4

    .prologue
    .line 734
    iget-object v0, p0, Lcom/inmobi/ads/cache/AssetStore$a$1;->a:Lcom/inmobi/ads/cache/AssetStore$a;

    invoke-static {v0}, Lcom/inmobi/ads/cache/AssetStore$a;->a(Lcom/inmobi/ads/cache/AssetStore$a;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inmobi/ads/cache/AssetStore;

    .line 735
    if-eqz v0, :cond_1

    .line 736
    invoke-static {}, Lcom/inmobi/ads/cache/AssetStore;->d()Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Asset fetch failed for remote URL ("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 5232
    iget-object v2, p1, Lcom/inmobi/ads/cache/a;->d:Ljava/lang/String;

    .line 736
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6232
    iget-object v1, p1, Lcom/inmobi/ads/cache/a;->d:Ljava/lang/String;

    .line 737
    invoke-static {v0, v1}, Lcom/inmobi/ads/cache/AssetStore;->a(Lcom/inmobi/ads/cache/AssetStore;Ljava/lang/String;)V

    .line 738
    iget v1, p1, Lcom/inmobi/ads/cache/a;->c:I

    if-lez v1, :cond_0

    .line 739
    iget v1, p1, Lcom/inmobi/ads/cache/a;->c:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p1, Lcom/inmobi/ads/cache/a;->c:I

    .line 740
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p1, Lcom/inmobi/ads/cache/a;->f:J

    .line 741
    invoke-static {v0}, Lcom/inmobi/ads/cache/AssetStore;->i(Lcom/inmobi/ads/cache/AssetStore;)Lcom/inmobi/ads/cache/d;

    invoke-static {p1}, Lcom/inmobi/ads/cache/d;->b(Lcom/inmobi/ads/cache/a;)I

    .line 742
    iget-object v0, p0, Lcom/inmobi/ads/cache/AssetStore$a$1;->a:Lcom/inmobi/ads/cache/AssetStore$a;

    invoke-static {v0}, Lcom/inmobi/ads/cache/AssetStore$a;->c(Lcom/inmobi/ads/cache/AssetStore$a;)V

    .line 751
    :goto_0
    return-void

    .line 744
    :cond_0
    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lcom/inmobi/ads/cache/AssetStore;->a(Lcom/inmobi/ads/cache/AssetStore;Lcom/inmobi/ads/cache/a;Z)V

    .line 745
    iget-object v0, p0, Lcom/inmobi/ads/cache/AssetStore$a$1;->a:Lcom/inmobi/ads/cache/AssetStore$a;

    invoke-static {v0, p1}, Lcom/inmobi/ads/cache/AssetStore$a;->a(Lcom/inmobi/ads/cache/AssetStore$a;Lcom/inmobi/ads/cache/a;)V

    goto :goto_0

    .line 748
    :cond_1
    invoke-static {}, Lcom/inmobi/ads/cache/AssetStore;->d()Ljava/lang/String;

    goto :goto_0
.end method

.method public final a(Lcom/inmobi/commons/core/network/c;Ljava/lang/String;Lcom/inmobi/ads/cache/a;)V
    .locals 8

    .prologue
    .line 711
    iget-object v0, p0, Lcom/inmobi/ads/cache/AssetStore$a$1;->a:Lcom/inmobi/ads/cache/AssetStore$a;

    invoke-static {v0}, Lcom/inmobi/ads/cache/AssetStore$a;->a(Lcom/inmobi/ads/cache/AssetStore$a;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inmobi/ads/cache/AssetStore;

    .line 712
    if-eqz v0, :cond_0

    .line 713
    invoke-static {}, Lcom/inmobi/ads/cache/AssetStore;->d()Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Asset fetch succeeded for URL "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1232
    iget-object v2, p3, Lcom/inmobi/ads/cache/a;->d:Ljava/lang/String;

    .line 713
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " Updating location on disk (file://"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 715
    new-instance v1, Lcom/inmobi/ads/cache/a$a;

    invoke-direct {v1}, Lcom/inmobi/ads/cache/a$a;-><init>()V

    .line 2232
    iget-object v2, p3, Lcom/inmobi/ads/cache/a;->d:Ljava/lang/String;

    .line 718
    invoke-static {v0}, Lcom/inmobi/ads/cache/AssetStore;->h(Lcom/inmobi/ads/cache/AssetStore;)Lcom/inmobi/ads/b$a;

    move-result-object v3

    .line 2819
    iget v5, v3, Lcom/inmobi/ads/b$a;->a:I

    .line 719
    invoke-static {v0}, Lcom/inmobi/ads/cache/AssetStore;->h(Lcom/inmobi/ads/cache/AssetStore;)Lcom/inmobi/ads/b$a;

    move-result-object v3

    .line 2831
    iget-wide v6, v3, Lcom/inmobi/ads/b$a;->e:J

    move-object v3, p2

    move-object v4, p1

    .line 717
    invoke-virtual/range {v1 .. v7}, Lcom/inmobi/ads/cache/a$a;->a(Ljava/lang/String;Ljava/lang/String;Lcom/inmobi/commons/core/network/c;IJ)Lcom/inmobi/ads/cache/a$a;

    move-result-object v1

    .line 720
    invoke-virtual {v1}, Lcom/inmobi/ads/cache/a$a;->a()Lcom/inmobi/ads/cache/a;

    move-result-object v1

    .line 721
    invoke-static {v0}, Lcom/inmobi/ads/cache/AssetStore;->i(Lcom/inmobi/ads/cache/AssetStore;)Lcom/inmobi/ads/cache/d;

    invoke-static {v1}, Lcom/inmobi/ads/cache/d;->b(Lcom/inmobi/ads/cache/a;)I

    .line 3293
    iget-object v2, p3, Lcom/inmobi/ads/cache/a;->k:Ljava/lang/String;

    .line 3297
    iput-object v2, v1, Lcom/inmobi/ads/cache/a;->k:Ljava/lang/String;

    .line 4261
    iget-wide v2, p3, Lcom/inmobi/ads/cache/a;->a:J

    .line 4265
    iput-wide v2, v1, Lcom/inmobi/ads/cache/a;->a:J

    .line 724
    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/inmobi/ads/cache/AssetStore;->a(Lcom/inmobi/ads/cache/AssetStore;Lcom/inmobi/ads/cache/a;Z)V

    .line 725
    iget-object v0, p0, Lcom/inmobi/ads/cache/AssetStore$a$1;->a:Lcom/inmobi/ads/cache/AssetStore$a;

    invoke-static {v0}, Lcom/inmobi/ads/cache/AssetStore$a;->b(Lcom/inmobi/ads/cache/AssetStore$a;)V

    .line 730
    :goto_0
    return-void

    .line 727
    :cond_0
    invoke-static {}, Lcom/inmobi/ads/cache/AssetStore;->d()Ljava/lang/String;

    goto :goto_0
.end method
