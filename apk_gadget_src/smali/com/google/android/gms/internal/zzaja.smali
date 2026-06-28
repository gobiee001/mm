.class final Lcom/google/android/gms/internal/zzaja;
.super Lcom/google/android/gms/internal/zzau;


# instance fields
.field private synthetic zzdco:[B

.field private synthetic zzdcp:Ljava/util/Map;

.field private synthetic zzdcq:Lcom/google/android/gms/internal/zzajv;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzaiv;ILjava/lang/String;Lcom/google/android/gms/internal/zzy;Lcom/google/android/gms/internal/zzx;[BLjava/util/Map;Lcom/google/android/gms/internal/zzajv;)V
    .locals 0

    iput-object p6, p0, Lcom/google/android/gms/internal/zzaja;->zzdco:[B

    iput-object p7, p0, Lcom/google/android/gms/internal/zzaja;->zzdcp:Ljava/util/Map;

    iput-object p8, p0, Lcom/google/android/gms/internal/zzaja;->zzdcq:Lcom/google/android/gms/internal/zzajv;

    invoke-direct {p0, p2, p3, p4, p5}, Lcom/google/android/gms/internal/zzau;-><init>(ILjava/lang/String;Lcom/google/android/gms/internal/zzy;Lcom/google/android/gms/internal/zzx;)V

    return-void
.end method


# virtual methods
.method public final getHeaders()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/zza;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaja;->zzdcp:Ljava/util/Map;

    if-nez v0, :cond_0

    invoke-super {p0}, Lcom/google/android/gms/internal/zzau;->getHeaders()Ljava/util/Map;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzaja;->zzdcp:Ljava/util/Map;

    goto :goto_0
.end method

.method protected final synthetic zza(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzau;->zzh(Ljava/lang/String;)V

    return-void
.end method

.method public final zzf()[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/zza;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaja;->zzdco:[B

    if-nez v0, :cond_0

    invoke-super {p0}, Lcom/google/android/gms/internal/zzau;->zzf()[B

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzaja;->zzdco:[B

    goto :goto_0
.end method

.method protected final zzh(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaja;->zzdcq:Lcom/google/android/gms/internal/zzajv;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzajv;->zzcr(Ljava/lang/String;)V

    invoke-super {p0, p1}, Lcom/google/android/gms/internal/zzau;->zzh(Ljava/lang/String;)V

    return-void
.end method
