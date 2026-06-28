.class final Lcom/google/android/gms/internal/zzcnn;
.super Lcom/google/android/gms/internal/zzcpz;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private final zzjoo:Lcom/google/android/gms/common/api/internal/zzci;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/internal/zzci",
            "<",
            "Lcom/google/android/gms/nearby/connection/Connections$MessageListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/android/gms/common/api/internal/zzci;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/internal/zzci",
            "<",
            "Lcom/google/android/gms/nearby/connection/Connections$MessageListener;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzcpz;-><init>()V

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzbq;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/internal/zzci;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzcnn;->zzjoo:Lcom/google/android/gms/common/api/internal/zzci;

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/zzcrh;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcnn;->zzjoo:Lcom/google/android/gms/common/api/internal/zzci;

    new-instance v1, Lcom/google/android/gms/internal/zzcnp;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/zzcnp;-><init>(Lcom/google/android/gms/internal/zzcnn;Lcom/google/android/gms/internal/zzcrh;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/internal/zzci;->zza(Lcom/google/android/gms/common/api/internal/zzcl;)V

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/zzcrn;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcnn;->zzjoo:Lcom/google/android/gms/common/api/internal/zzci;

    new-instance v1, Lcom/google/android/gms/internal/zzcno;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/zzcno;-><init>(Lcom/google/android/gms/internal/zzcnn;Lcom/google/android/gms/internal/zzcrn;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/internal/zzci;->zza(Lcom/google/android/gms/common/api/internal/zzcl;)V

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/zzcrp;)V
    .locals 0

    return-void
.end method
