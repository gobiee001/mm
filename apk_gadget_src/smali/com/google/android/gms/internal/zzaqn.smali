.class public final Lcom/google/android/gms/internal/zzaqn;
.super Lcom/google/android/gms/internal/zzaqa;


# instance fields
.field private final zzdpz:Lcom/google/android/gms/internal/zzapd;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzaqc;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzaqa;-><init>(Lcom/google/android/gms/internal/zzaqc;)V

    new-instance v0, Lcom/google/android/gms/internal/zzapd;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzapd;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzaqn;->zzdpz:Lcom/google/android/gms/internal/zzapd;

    return-void
.end method


# virtual methods
.method protected final zzvf()V
    .locals 3

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzapz;->zzwv()Lcom/google/android/gms/analytics/zzj;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/zzj;->zzvc()Lcom/google/android/gms/internal/zzapd;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzaqn;->zzdpz:Lcom/google/android/gms/internal/zzapd;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzapd;->zza(Lcom/google/android/gms/internal/zzapd;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzapz;->zzwz()Lcom/google/android/gms/internal/zzasm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzasm;->zzvi()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/google/android/gms/internal/zzaqn;->zzdpz:Lcom/google/android/gms/internal/zzapd;

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/zzapd;->setAppName(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzasm;->zzvj()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/internal/zzaqn;->zzdpz:Lcom/google/android/gms/internal/zzapd;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/zzapd;->setAppVersion(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public final zzxy()Lcom/google/android/gms/internal/zzapd;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaqa;->zzxf()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaqn;->zzdpz:Lcom/google/android/gms/internal/zzapd;

    return-object v0
.end method
