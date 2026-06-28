.class final Lcom/inmobi/ads/bv$b;
.super Ljava/lang/Object;
.source "VisibilityTracker.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/inmobi/ads/bv;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "b"
.end annotation


# instance fields
.field private final a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private c:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/inmobi/ads/bv;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/inmobi/ads/bv;)V
    .locals 1

    .prologue
    .line 283
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 284
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/inmobi/ads/bv$b;->c:Ljava/lang/ref/WeakReference;

    .line 285
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/inmobi/ads/bv$b;->b:Ljava/util/ArrayList;

    .line 286
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/inmobi/ads/bv$b;->a:Ljava/util/ArrayList;

    .line 287
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    .prologue
    .line 291
    iget-object v0, p0, Lcom/inmobi/ads/bv$b;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inmobi/ads/bv;

    .line 292
    if-eqz v0, :cond_1

    .line 293
    invoke-static {v0}, Lcom/inmobi/ads/bv;->a(Lcom/inmobi/ads/bv;)Z

    .line 295
    invoke-static {v0}, Lcom/inmobi/ads/bv;->b(Lcom/inmobi/ads/bv;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 296
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    .line 297
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/inmobi/ads/bv$d;

    iget v5, v3, Lcom/inmobi/ads/bv$d;->a:I

    .line 298
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/inmobi/ads/bv$d;

    iget-object v3, v3, Lcom/inmobi/ads/bv$d;->c:Landroid/view/View;

    .line 299
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/inmobi/ads/bv$d;

    iget-object v1, v1, Lcom/inmobi/ads/bv$d;->d:Ljava/lang/Object;

    .line 301
    invoke-static {v0}, Lcom/inmobi/ads/bv;->c(Lcom/inmobi/ads/bv;)Lcom/inmobi/ads/bv$a;

    move-result-object v6

    invoke-interface {v6, v3, v2, v5, v1}, Lcom/inmobi/ads/bv$a;->a(Landroid/view/View;Landroid/view/View;ILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 303
    iget-object v1, p0, Lcom/inmobi/ads/bv$b;->a:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 305
    :cond_0
    iget-object v1, p0, Lcom/inmobi/ads/bv$b;->b:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 311
    :cond_1
    if-eqz v0, :cond_2

    .line 312
    invoke-static {v0}, Lcom/inmobi/ads/bv;->d(Lcom/inmobi/ads/bv;)Lcom/inmobi/ads/bv$c;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 313
    iget-object v2, p0, Lcom/inmobi/ads/bv$b;->a:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/inmobi/ads/bv$b;->b:Ljava/util/ArrayList;

    invoke-interface {v1, v2, v3}, Lcom/inmobi/ads/bv$c;->a(Ljava/util/List;Ljava/util/List;)V

    .line 317
    :cond_2
    iget-object v1, p0, Lcom/inmobi/ads/bv$b;->a:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 318
    iget-object v1, p0, Lcom/inmobi/ads/bv$b;->b:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 320
    if-eqz v0, :cond_3

    .line 321
    invoke-virtual {v0}, Lcom/inmobi/ads/bv;->b()V

    .line 323
    :cond_3
    return-void
.end method
