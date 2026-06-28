.class public final Lcom/google/android/gms/internal/zzarh;
.super Lcom/google/android/gms/internal/zzaqa;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzaqc;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzaqa;-><init>(Lcom/google/android/gms/internal/zzaqc;)V

    return-void
.end method


# virtual methods
.method protected final zzvf()V
    .locals 0

    return-void
.end method

.method public final zzzc()Lcom/google/android/gms/internal/zzapi;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaqa;->zzxf()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzapz;->zzwv()Lcom/google/android/gms/analytics/zzj;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/zzj;->zzvd()Lcom/google/android/gms/internal/zzapi;

    move-result-object v0

    return-object v0
.end method

.method public final zzzd()Ljava/lang/String;
    .locals 4

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaqa;->zzxf()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzarh;->zzzc()Lcom/google/android/gms/internal/zzapi;

    move-result-object v0

    iget v1, v0, Lcom/google/android/gms/internal/zzapi;->zzchl:I

    iget v0, v0, Lcom/google/android/gms/internal/zzapi;->zzchm:I

    const/16 v2, 0x17

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
