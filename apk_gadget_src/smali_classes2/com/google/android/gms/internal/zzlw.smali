.class final Lcom/google/android/gms/internal/zzlw;
.super Lcom/google/android/gms/internal/zzkd;


# instance fields
.field private synthetic zzbgk:Lcom/google/android/gms/internal/zzlv;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzlv;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzlw;->zzbgk:Lcom/google/android/gms/internal/zzlv;

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzkd;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAdFailedToLoad(I)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzlw;->zzbgk:Lcom/google/android/gms/internal/zzlv;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzlv;->zza(Lcom/google/android/gms/internal/zzlv;)Lcom/google/android/gms/ads/VideoController;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzlw;->zzbgk:Lcom/google/android/gms/internal/zzlv;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzlv;->zzbj()Lcom/google/android/gms/internal/zzll;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/VideoController;->zza(Lcom/google/android/gms/internal/zzll;)V

    invoke-super {p0, p1}, Lcom/google/android/gms/internal/zzkd;->onAdFailedToLoad(I)V

    return-void
.end method

.method public final onAdLoaded()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzlw;->zzbgk:Lcom/google/android/gms/internal/zzlv;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzlv;->zza(Lcom/google/android/gms/internal/zzlv;)Lcom/google/android/gms/ads/VideoController;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzlw;->zzbgk:Lcom/google/android/gms/internal/zzlv;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzlv;->zzbj()Lcom/google/android/gms/internal/zzll;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/VideoController;->zza(Lcom/google/android/gms/internal/zzll;)V

    invoke-super {p0}, Lcom/google/android/gms/internal/zzkd;->onAdLoaded()V

    return-void
.end method
