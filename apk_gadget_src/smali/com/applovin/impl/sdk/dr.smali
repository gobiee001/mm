.class abstract Lcom/applovin/impl/sdk/dr;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/applovin/impl/sdk/as;
.implements Lcom/applovin/nativeAds/AppLovinNativeAdLoadListener;


# instance fields
.field protected final a:Lcom/applovin/impl/sdk/AppLovinSdkImpl;

.field protected final b:Lcom/applovin/sdk/AppLovinLogger;

.field protected final c:Ljava/lang/Object;

.field protected final d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/applovin/impl/sdk/n;",
            "Lcom/applovin/impl/sdk/ds;",
            ">;"
        }
    .end annotation
.end field

.field protected final e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/applovin/impl/sdk/n;",
            "Lcom/applovin/impl/sdk/ds;",
            ">;"
        }
    .end annotation
.end field

.field protected final f:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/applovin/impl/sdk/n;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field protected final g:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/applovin/impl/sdk/n;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/applovin/impl/sdk/AppLovinSdkImpl;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/applovin/impl/sdk/dr;->a:Lcom/applovin/impl/sdk/AppLovinSdkImpl;

    invoke-virtual {p1}, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->getLogger()Lcom/applovin/sdk/AppLovinLogger;

    move-result-object v0

    iput-object v0, p0, Lcom/applovin/impl/sdk/dr;->b:Lcom/applovin/sdk/AppLovinLogger;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/applovin/impl/sdk/dr;->c:Ljava/lang/Object;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/applovin/impl/sdk/dr;->d:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/applovin/impl/sdk/dr;->e:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/applovin/impl/sdk/dr;->f:Ljava/util/Map;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/applovin/impl/sdk/dr;->g:Ljava/util/Set;

    invoke-virtual {p0}, Lcom/applovin/impl/sdk/dr;->a()V

    return-void
.end method

.method private l(Lcom/applovin/impl/sdk/n;)Lcom/applovin/impl/sdk/ds;
    .locals 1

    iget-object v0, p0, Lcom/applovin/impl/sdk/dr;->d:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/applovin/impl/sdk/ds;

    return-object v0
.end method

.method private m(Lcom/applovin/impl/sdk/n;)Lcom/applovin/impl/sdk/ds;
    .locals 1

    iget-object v0, p0, Lcom/applovin/impl/sdk/dr;->e:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/applovin/impl/sdk/ds;

    return-object v0
.end method

.method private n(Lcom/applovin/impl/sdk/n;)Lcom/applovin/impl/sdk/ds;
    .locals 3

    iget-object v1, p0, Lcom/applovin/impl/sdk/dr;->c:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-direct {p0, p1}, Lcom/applovin/impl/sdk/dr;->m(Lcom/applovin/impl/sdk/n;)Lcom/applovin/impl/sdk/ds;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/ds;->a()I

    move-result v2

    if-lez v2, :cond_0

    monitor-exit v1

    :goto_0
    return-object v0

    :cond_0
    invoke-direct {p0, p1}, Lcom/applovin/impl/sdk/dr;->l(Lcom/applovin/impl/sdk/n;)Lcom/applovin/impl/sdk/ds;

    move-result-object v0

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method abstract a(Lcom/applovin/impl/sdk/n;)Lcom/applovin/impl/sdk/dw;
.end method

.method abstract a(Lcom/applovin/impl/sdk/ci;)Lcom/applovin/impl/sdk/n;
.end method

.method abstract a()V
.end method

.method abstract a(Ljava/lang/Object;Lcom/applovin/impl/sdk/ci;)V
.end method

.method abstract a(Ljava/lang/Object;Lcom/applovin/impl/sdk/n;I)V
.end method

.method public a(Ljava/util/LinkedHashSet;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/LinkedHashSet",
            "<",
            "Lcom/applovin/impl/sdk/n;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/applovin/impl/sdk/dr;->f:Ljava/util/Map;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/applovin/impl/sdk/dr;->f:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/applovin/impl/sdk/dr;->c:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/applovin/impl/sdk/dr;->f:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/applovin/impl/sdk/n;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/n;->m()Z

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {p1, v0}, Ljava/util/LinkedHashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/applovin/impl/sdk/dr;->f:Ljava/util/Map;

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    iget-object v4, p0, Lcom/applovin/impl/sdk/dr;->b:Lcom/applovin/sdk/AppLovinLogger;

    const-string v5, "AppLovinAdService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed to load ad for zone ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/n;->a()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "). Please check that the zone has been added to your AppLovin account."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Lcom/applovin/sdk/AppLovinLogger;->userError(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v4, -0x7

    invoke-virtual {p0, v3, v0, v4}, Lcom/applovin/impl/sdk/dr;->a(Ljava/lang/Object;Lcom/applovin/impl/sdk/n;I)V

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_3
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public a(Lcom/applovin/impl/sdk/n;Ljava/lang/Object;)Z
    .locals 2

    iget-object v1, p0, Lcom/applovin/impl/sdk/dr;->c:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/applovin/impl/sdk/dr;->k(Lcom/applovin/impl/sdk/n;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1, p2}, Lcom/applovin/impl/sdk/dr;->b(Lcom/applovin/impl/sdk/n;Ljava/lang/Object;)V

    const/4 v0, 0x1

    :goto_0
    monitor-exit v1

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method b(Lcom/applovin/impl/sdk/ci;)V
    .locals 1

    invoke-virtual {p0, p1}, Lcom/applovin/impl/sdk/dr;->a(Lcom/applovin/impl/sdk/ci;)Lcom/applovin/impl/sdk/n;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/applovin/impl/sdk/dr;->j(Lcom/applovin/impl/sdk/n;)V

    return-void
.end method

.method public b(Lcom/applovin/impl/sdk/n;I)V
    .locals 1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p2, :cond_0

    invoke-virtual {p0, p1}, Lcom/applovin/impl/sdk/dr;->j(Lcom/applovin/impl/sdk/n;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public b(Lcom/applovin/impl/sdk/n;Ljava/lang/Object;)V
    .locals 4

    iget-object v1, p0, Lcom/applovin/impl/sdk/dr;->c:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/applovin/impl/sdk/dr;->f:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/applovin/impl/sdk/dr;->b:Lcom/applovin/sdk/AppLovinLogger;

    const-string v2, "PreloadManager"

    const-string v3, "Possibly missing prior registered preload callback."

    invoke-interface {v0, v2, v3}, Lcom/applovin/sdk/AppLovinLogger;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/applovin/impl/sdk/dr;->f:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public b(Lcom/applovin/impl/sdk/n;)Z
    .locals 1

    iget-object v0, p0, Lcom/applovin/impl/sdk/dr;->f:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public c(Lcom/applovin/impl/sdk/n;)Lcom/applovin/impl/sdk/ci;
    .locals 2

    iget-object v1, p0, Lcom/applovin/impl/sdk/dr;->c:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-direct {p0, p1}, Lcom/applovin/impl/sdk/dr;->n(Lcom/applovin/impl/sdk/n;)Lcom/applovin/impl/sdk/ds;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/ds;->f()Lcom/applovin/impl/sdk/ci;

    move-result-object v0

    :goto_0
    monitor-exit v1

    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected c(Lcom/applovin/impl/sdk/ci;)V
    .locals 8

    invoke-virtual {p0, p1}, Lcom/applovin/impl/sdk/dr;->a(Lcom/applovin/impl/sdk/ci;)Lcom/applovin/impl/sdk/n;

    move-result-object v0

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/n;->l()Z

    move-result v1

    iget-object v2, p0, Lcom/applovin/impl/sdk/dr;->c:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-object v3, p0, Lcom/applovin/impl/sdk/dr;->f:Ljava/util/Map;

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    iget-object v4, p0, Lcom/applovin/impl/sdk/dr;->f:Ljava/util/Map;

    invoke-interface {v4, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v4, p0, Lcom/applovin/impl/sdk/dr;->g:Ljava/util/Set;

    invoke-interface {v4, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    if-eqz v3, :cond_0

    if-eqz v1, :cond_2

    :cond_0
    invoke-direct {p0, v0}, Lcom/applovin/impl/sdk/dr;->l(Lcom/applovin/impl/sdk/n;)Lcom/applovin/impl/sdk/ds;

    move-result-object v4

    invoke-virtual {v4, p1}, Lcom/applovin/impl/sdk/ds;->a(Lcom/applovin/impl/sdk/ci;)V

    iget-object v4, p0, Lcom/applovin/impl/sdk/dr;->b:Lcom/applovin/sdk/AppLovinLogger;

    const-string v5, "PreloadManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Ad enqueued: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Lcom/applovin/sdk/AppLovinLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v3, :cond_1

    iget-object v2, p0, Lcom/applovin/impl/sdk/dr;->b:Lcom/applovin/sdk/AppLovinLogger;

    const-string v4, "PreloadManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Called additional callback regarding "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v4, v5}, Lcom/applovin/sdk/AppLovinLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v1, :cond_3

    :try_start_1
    new-instance v1, Lcom/applovin/impl/sdk/ap;

    iget-object v2, p0, Lcom/applovin/impl/sdk/dr;->a:Lcom/applovin/impl/sdk/AppLovinSdkImpl;

    invoke-direct {v1, v0, v2}, Lcom/applovin/impl/sdk/ap;-><init>(Lcom/applovin/impl/sdk/n;Lcom/applovin/impl/sdk/AppLovinSdkImpl;)V

    invoke-virtual {p0, v3, v1}, Lcom/applovin/impl/sdk/dr;->a(Ljava/lang/Object;Lcom/applovin/impl/sdk/ci;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/applovin/impl/sdk/dr;->b:Lcom/applovin/sdk/AppLovinLogger;

    const-string v1, "PreloadManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Pulled ad from network and saved to preload cache: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/applovin/sdk/AppLovinLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_2
    :try_start_2
    iget-object v4, p0, Lcom/applovin/impl/sdk/dr;->b:Lcom/applovin/sdk/AppLovinLogger;

    const-string v5, "PreloadManager"

    const-string v6, "Additional callback found or dummy ads are enabled; skipping enqueue..."

    invoke-interface {v4, v5, v6}, Lcom/applovin/sdk/AppLovinLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :cond_3
    :try_start_3
    invoke-virtual {p0, v3, p1}, Lcom/applovin/impl/sdk/dr;->a(Ljava/lang/Object;Lcom/applovin/impl/sdk/ci;)V

    invoke-virtual {p0, p1}, Lcom/applovin/impl/sdk/dr;->b(Lcom/applovin/impl/sdk/ci;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/applovin/impl/sdk/dr;->a:Lcom/applovin/impl/sdk/AppLovinSdkImpl;

    invoke-virtual {v1}, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->getLogger()Lcom/applovin/sdk/AppLovinLogger;

    move-result-object v1

    const-string v2, "PreloadManager"

    const-string v3, "Encountered throwable while notifying user callback"

    invoke-interface {v1, v2, v3, v0}, Lcom/applovin/sdk/AppLovinLogger;->userError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method protected c(Lcom/applovin/impl/sdk/n;I)V
    .locals 4

    iget-object v0, p0, Lcom/applovin/impl/sdk/dr;->b:Lcom/applovin/sdk/AppLovinLogger;

    const-string v1, "PreloadManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to pre-load an ad of zone "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", error code "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/applovin/sdk/AppLovinLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/applovin/impl/sdk/dr;->c:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/applovin/impl/sdk/dr;->f:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iget-object v2, p0, Lcom/applovin/impl/sdk/dr;->g:Ljava/util/Set;

    invoke-interface {v2, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    :try_start_1
    invoke-virtual {p0, v0, p1, p2}, Lcom/applovin/impl/sdk/dr;->a(Ljava/lang/Object;Lcom/applovin/impl/sdk/n;I)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    :cond_0
    :goto_0
    return-void

    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/applovin/impl/sdk/dr;->a:Lcom/applovin/impl/sdk/AppLovinSdkImpl;

    invoke-virtual {v1}, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->getLogger()Lcom/applovin/sdk/AppLovinLogger;

    move-result-object v1

    const-string v2, "PreloadManager"

    const-string v3, "Encountered exception while invoking user callback"

    invoke-interface {v1, v2, v3, v0}, Lcom/applovin/sdk/AppLovinLogger;->userError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public d(Lcom/applovin/impl/sdk/n;)Lcom/applovin/impl/sdk/ci;
    .locals 2

    iget-object v1, p0, Lcom/applovin/impl/sdk/dr;->c:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-direct {p0, p1}, Lcom/applovin/impl/sdk/dr;->n(Lcom/applovin/impl/sdk/n;)Lcom/applovin/impl/sdk/ds;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/ds;->e()Lcom/applovin/impl/sdk/ci;

    move-result-object v0

    :goto_0
    monitor-exit v1

    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public e(Lcom/applovin/impl/sdk/n;)Lcom/applovin/impl/sdk/ci;
    .locals 5

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/applovin/impl/sdk/dr;->c:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    invoke-direct {p0, p1}, Lcom/applovin/impl/sdk/dr;->l(Lcom/applovin/impl/sdk/n;)Lcom/applovin/impl/sdk/ds;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Lcom/applovin/impl/sdk/n;->l()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-direct {p0, p1}, Lcom/applovin/impl/sdk/dr;->m(Lcom/applovin/impl/sdk/n;)Lcom/applovin/impl/sdk/ds;

    move-result-object v3

    invoke-virtual {v3}, Lcom/applovin/impl/sdk/ds;->c()Z

    move-result v4

    if-eqz v4, :cond_0

    new-instance v0, Lcom/applovin/impl/sdk/ap;

    iget-object v1, p0, Lcom/applovin/impl/sdk/dr;->a:Lcom/applovin/impl/sdk/AppLovinSdkImpl;

    invoke-direct {v0, p1, v1}, Lcom/applovin/impl/sdk/ap;-><init>(Lcom/applovin/impl/sdk/n;Lcom/applovin/impl/sdk/AppLovinSdkImpl;)V

    :goto_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_5

    iget-object v1, p0, Lcom/applovin/impl/sdk/dr;->b:Lcom/applovin/sdk/AppLovinLogger;

    const-string v2, "PreloadManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Retrieved ad of zone "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "..."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/applovin/sdk/AppLovinLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-object v0

    :cond_0
    :try_start_1
    invoke-virtual {v0}, Lcom/applovin/impl/sdk/ds;->a()I

    move-result v4

    if-lez v4, :cond_1

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/ds;->e()Lcom/applovin/impl/sdk/ci;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/applovin/impl/sdk/ds;->a(Lcom/applovin/impl/sdk/ci;)V

    new-instance v0, Lcom/applovin/impl/sdk/ap;

    iget-object v1, p0, Lcom/applovin/impl/sdk/dr;->a:Lcom/applovin/impl/sdk/AppLovinSdkImpl;

    invoke-direct {v0, p1, v1}, Lcom/applovin/impl/sdk/ap;-><init>(Lcom/applovin/impl/sdk/n;Lcom/applovin/impl/sdk/AppLovinSdkImpl;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_1
    :try_start_2
    invoke-virtual {v3}, Lcom/applovin/impl/sdk/ds;->a()I

    move-result v0

    if-lez v0, :cond_2

    iget-object v0, p0, Lcom/applovin/impl/sdk/dr;->a:Lcom/applovin/impl/sdk/AppLovinSdkImpl;

    sget-object v3, Lcom/applovin/impl/sdk/dx;->cR:Lcom/applovin/impl/sdk/dz;

    invoke-virtual {v0, v3}, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->get(Lcom/applovin/impl/sdk/dz;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Lcom/applovin/impl/sdk/ap;

    iget-object v1, p0, Lcom/applovin/impl/sdk/dr;->a:Lcom/applovin/impl/sdk/AppLovinSdkImpl;

    invoke-direct {v0, p1, v1}, Lcom/applovin/impl/sdk/ap;-><init>(Lcom/applovin/impl/sdk/n;Lcom/applovin/impl/sdk/AppLovinSdkImpl;)V

    goto :goto_0

    :cond_2
    move-object v0, v1

    goto :goto_0

    :cond_3
    invoke-virtual {v0}, Lcom/applovin/impl/sdk/ds;->e()Lcom/applovin/impl/sdk/ci;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v0

    goto :goto_0

    :cond_4
    move-object v0, v1

    goto :goto_0

    :cond_5
    iget-object v1, p0, Lcom/applovin/impl/sdk/dr;->b:Lcom/applovin/sdk/AppLovinLogger;

    const-string v2, "PreloadManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to retrieve ad of zone "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "..."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/applovin/sdk/AppLovinLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public f(Lcom/applovin/impl/sdk/n;)Z
    .locals 2

    iget-object v1, p0, Lcom/applovin/impl/sdk/dr;->c:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-direct {p0, p1}, Lcom/applovin/impl/sdk/dr;->l(Lcom/applovin/impl/sdk/n;)Lcom/applovin/impl/sdk/ds;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/ds;->c()Z

    move-result v0

    :goto_0
    monitor-exit v1

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public g(Lcom/applovin/impl/sdk/n;)V
    .locals 3

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/applovin/impl/sdk/dr;->c:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-direct {p0, p1}, Lcom/applovin/impl/sdk/dr;->l(Lcom/applovin/impl/sdk/n;)Lcom/applovin/impl/sdk/ds;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/applovin/impl/sdk/ds;->b()I

    move-result v0

    invoke-virtual {v2}, Lcom/applovin/impl/sdk/ds;->a()I

    move-result v2

    sub-int/2addr v0, v2

    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0, p1, v0}, Lcom/applovin/impl/sdk/dr;->b(Lcom/applovin/impl/sdk/n;I)V

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public h(Lcom/applovin/impl/sdk/n;)Z
    .locals 6

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/applovin/impl/sdk/dr;->c:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    invoke-direct {p0, p1}, Lcom/applovin/impl/sdk/dr;->m(Lcom/applovin/impl/sdk/n;)Lcom/applovin/impl/sdk/ds;

    move-result-object v4

    iget-object v0, p0, Lcom/applovin/impl/sdk/dr;->a:Lcom/applovin/impl/sdk/AppLovinSdkImpl;

    sget-object v5, Lcom/applovin/impl/sdk/dx;->cS:Lcom/applovin/impl/sdk/dz;

    invoke-virtual {v0, v5}, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->get(Lcom/applovin/impl/sdk/dz;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz v4, :cond_0

    invoke-virtual {v4}, Lcom/applovin/impl/sdk/ds;->a()I

    move-result v0

    if-lez v0, :cond_0

    monitor-exit v3

    move v0, v1

    :goto_0
    return v0

    :cond_0
    invoke-direct {p0, p1}, Lcom/applovin/impl/sdk/dr;->l(Lcom/applovin/impl/sdk/n;)Lcom/applovin/impl/sdk/ds;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/ds;->d()Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    :goto_1
    monitor-exit v3

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    move v0, v2

    goto :goto_1

    :cond_2
    move v0, v2

    goto :goto_1
.end method

.method public i(Lcom/applovin/impl/sdk/n;)V
    .locals 4

    iget-object v1, p0, Lcom/applovin/impl/sdk/dr;->c:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-direct {p0, p1}, Lcom/applovin/impl/sdk/dr;->l(Lcom/applovin/impl/sdk/n;)Lcom/applovin/impl/sdk/ds;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/applovin/impl/sdk/n;->f()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/applovin/impl/sdk/ds;->a(I)V

    :goto_0
    invoke-direct {p0, p1}, Lcom/applovin/impl/sdk/dr;->m(Lcom/applovin/impl/sdk/n;)Lcom/applovin/impl/sdk/ds;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/applovin/impl/sdk/n;->g()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/applovin/impl/sdk/ds;->a(I)V

    :goto_1
    monitor-exit v1

    return-void

    :cond_0
    iget-object v0, p0, Lcom/applovin/impl/sdk/dr;->d:Ljava/util/Map;

    new-instance v2, Lcom/applovin/impl/sdk/ds;

    invoke-virtual {p1}, Lcom/applovin/impl/sdk/n;->f()I

    move-result v3

    invoke-direct {v2, v3}, Lcom/applovin/impl/sdk/ds;-><init>(I)V

    invoke-interface {v0, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/applovin/impl/sdk/dr;->e:Ljava/util/Map;

    new-instance v2, Lcom/applovin/impl/sdk/ds;

    invoke-virtual {p1}, Lcom/applovin/impl/sdk/n;->g()I

    move-result v3

    invoke-direct {v2, v3}, Lcom/applovin/impl/sdk/ds;-><init>(I)V

    invoke-interface {v0, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method public j(Lcom/applovin/impl/sdk/n;)V
    .locals 6

    iget-object v0, p0, Lcom/applovin/impl/sdk/dr;->a:Lcom/applovin/impl/sdk/AppLovinSdkImpl;

    sget-object v1, Lcom/applovin/impl/sdk/dx;->G:Lcom/applovin/impl/sdk/dz;

    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->get(Lcom/applovin/impl/sdk/dz;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/applovin/impl/sdk/dr;->f(Lcom/applovin/impl/sdk/n;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/applovin/impl/sdk/dr;->b:Lcom/applovin/sdk/AppLovinLogger;

    const-string v1, "PreloadManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Preloading ad for zone "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "..."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/applovin/sdk/AppLovinLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/applovin/impl/sdk/dr;->a:Lcom/applovin/impl/sdk/AppLovinSdkImpl;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->getTaskManager()Lcom/applovin/impl/sdk/ey;

    move-result-object v0

    invoke-virtual {p0, p1}, Lcom/applovin/impl/sdk/dr;->a(Lcom/applovin/impl/sdk/n;)Lcom/applovin/impl/sdk/dw;

    move-result-object v1

    sget-object v2, Lcom/applovin/impl/sdk/ez;->a:Lcom/applovin/impl/sdk/ez;

    const-wide/16 v4, 0x1f4

    invoke-virtual {v0, v1, v2, v4, v5}, Lcom/applovin/impl/sdk/ey;->a(Lcom/applovin/impl/sdk/dw;Lcom/applovin/impl/sdk/ez;J)V

    :cond_0
    return-void
.end method

.method k(Lcom/applovin/impl/sdk/n;)Z
    .locals 2

    iget-object v1, p0, Lcom/applovin/impl/sdk/dr;->c:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/applovin/impl/sdk/dr;->g:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    monitor-exit v1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
