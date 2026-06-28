.class final Lcom/google/android/gms/internal/zzyw;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzanm;


# instance fields
.field private synthetic zzcll:Lcom/google/android/gms/internal/zzyu;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzyu;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzyw;->zzcll:Lcom/google/android/gms/internal/zzyu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/zzanh;Z)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzyw;->zzcll:Lcom/google/android/gms/internal/zzyu;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzyu;->zzclk:Lcom/google/android/gms/internal/zzyt;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzyt;->zza(Lcom/google/android/gms/internal/zzyt;)Lcom/google/android/gms/ads/internal/zzba;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/zzba;->zzdv()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzyw;->zzcll:Lcom/google/android/gms/internal/zzyu;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzyu;->zzclj:Lcom/google/android/gms/internal/zzalf;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzalf;->set(Ljava/lang/Object;)V

    return-void
.end method
