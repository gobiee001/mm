.class final Lcom/google/android/gms/ads/internal/zzal;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzano;


# instance fields
.field private synthetic zzaox:Lcom/google/android/gms/internal/zzafo;

.field private synthetic zzaqk:Lcom/google/android/gms/ads/internal/zzak;


# direct methods
.method constructor <init>(Lcom/google/android/gms/ads/internal/zzak;Lcom/google/android/gms/internal/zzafo;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/zzal;->zzaqk:Lcom/google/android/gms/ads/internal/zzak;

    iput-object p2, p0, Lcom/google/android/gms/ads/internal/zzal;->zzaox:Lcom/google/android/gms/internal/zzafo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zzdc()V
    .locals 3

    new-instance v1, Lcom/google/android/gms/internal/zzgp;

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzal;->zzaqk:Lcom/google/android/gms/ads/internal/zzak;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzak;->zzano:Lcom/google/android/gms/ads/internal/zzbt;

    iget-object v2, v0, Lcom/google/android/gms/ads/internal/zzbt;->zzair:Landroid/content/Context;

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzal;->zzaox:Lcom/google/android/gms/internal/zzafo;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzafo;->zzciy:Lcom/google/android/gms/internal/zzanh;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    throw v0

    :cond_0
    check-cast v0, Landroid/view/View;

    invoke-direct {v1, v2, v0}, Lcom/google/android/gms/internal/zzgp;-><init>(Landroid/content/Context;Landroid/view/View;)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzal;->zzaox:Lcom/google/android/gms/internal/zzafo;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzafo;->zzciy:Lcom/google/android/gms/internal/zzanh;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/zzgp;->zza(Lcom/google/android/gms/internal/zzgt;)V

    return-void
.end method
