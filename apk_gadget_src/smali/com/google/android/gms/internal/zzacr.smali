.class final Lcom/google/android/gms/internal/zzacr;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Lcom/google/android/gms/internal/zzaco;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic val$context:Landroid/content/Context;

.field private synthetic zzcul:Lcom/google/android/gms/internal/zzacq;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzacq;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzacr;->zzcul:Lcom/google/android/gms/internal/zzacq;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzacr;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic call()Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzacr;->zzcul:Lcom/google/android/gms/internal/zzacq;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzacq;->zza(Lcom/google/android/gms/internal/zzacq;)Ljava/util/WeakHashMap;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzacr;->val$context:Landroid/content/Context;

    invoke-virtual {v0, v1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzacs;

    if-eqz v0, :cond_1

    iget-wide v2, v0, Lcom/google/android/gms/internal/zzacs;->zzcum:J

    sget-object v1, Lcom/google/android/gms/internal/zznh;->zzbms:Lcom/google/android/gms/internal/zzmx;

    invoke-static {}, Lcom/google/android/gms/internal/zzkb;->zzif()Lcom/google/android/gms/internal/zznf;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/google/android/gms/internal/zznf;->zzd(Lcom/google/android/gms/internal/zzmx;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    add-long/2addr v2, v4

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbs;->zzeo()Lcom/google/android/gms/common/util/zzd;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/gms/common/util/zzd;->currentTimeMillis()J

    move-result-wide v4

    cmp-long v1, v2, v4

    if-gez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    if-nez v1, :cond_1

    sget-object v1, Lcom/google/android/gms/internal/zznh;->zzbmr:Lcom/google/android/gms/internal/zzmx;

    invoke-static {}, Lcom/google/android/gms/internal/zzkb;->zzif()Lcom/google/android/gms/internal/zznf;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/zznf;->zzd(Lcom/google/android/gms/internal/zzmx;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v1, Lcom/google/android/gms/internal/zzacp;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzacr;->val$context:Landroid/content/Context;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzacs;->zzcun:Lcom/google/android/gms/internal/zzaco;

    invoke-direct {v1, v2, v0}, Lcom/google/android/gms/internal/zzacp;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/zzaco;)V

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzacp;->zzny()Lcom/google/android/gms/internal/zzaco;

    move-result-object v0

    :goto_1
    iget-object v1, p0, Lcom/google/android/gms/internal/zzacr;->zzcul:Lcom/google/android/gms/internal/zzacq;

    invoke-static {v1}, Lcom/google/android/gms/internal/zzacq;->zza(Lcom/google/android/gms/internal/zzacq;)Ljava/util/WeakHashMap;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/zzacr;->val$context:Landroid/content/Context;

    new-instance v3, Lcom/google/android/gms/internal/zzacs;

    iget-object v4, p0, Lcom/google/android/gms/internal/zzacr;->zzcul:Lcom/google/android/gms/internal/zzacq;

    invoke-direct {v3, v4, v0}, Lcom/google/android/gms/internal/zzacs;-><init>(Lcom/google/android/gms/internal/zzacq;Lcom/google/android/gms/internal/zzaco;)V

    invoke-virtual {v1, v2, v3}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0

    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/google/android/gms/internal/zzacp;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzacr;->val$context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/zzacp;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzacp;->zzny()Lcom/google/android/gms/internal/zzaco;

    move-result-object v0

    goto :goto_1
.end method
