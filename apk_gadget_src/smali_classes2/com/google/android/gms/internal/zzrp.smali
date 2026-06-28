.class final Lcom/google/android/gms/internal/zzrp;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic zzbws:Lcom/google/android/gms/ads/doubleclick/PublisherAdView;

.field private synthetic zzbwt:Lcom/google/android/gms/internal/zzks;

.field private synthetic zzbwu:Lcom/google/android/gms/internal/zzro;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzro;Lcom/google/android/gms/ads/doubleclick/PublisherAdView;Lcom/google/android/gms/internal/zzks;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzrp;->zzbwu:Lcom/google/android/gms/internal/zzro;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzrp;->zzbws:Lcom/google/android/gms/ads/doubleclick/PublisherAdView;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzrp;->zzbwt:Lcom/google/android/gms/internal/zzks;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzrp;->zzbws:Lcom/google/android/gms/ads/doubleclick/PublisherAdView;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzrp;->zzbwt:Lcom/google/android/gms/internal/zzks;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/doubleclick/PublisherAdView;->zza(Lcom/google/android/gms/internal/zzks;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzrp;->zzbwu:Lcom/google/android/gms/internal/zzro;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzro;->zza(Lcom/google/android/gms/internal/zzro;)Lcom/google/android/gms/ads/formats/OnPublisherAdViewLoadedListener;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzrp;->zzbws:Lcom/google/android/gms/ads/doubleclick/PublisherAdView;

    invoke-interface {v0, v1}, Lcom/google/android/gms/ads/formats/OnPublisherAdViewLoadedListener;->onPublisherAdViewLoaded(Lcom/google/android/gms/ads/doubleclick/PublisherAdView;)V

    :goto_0
    return-void

    :cond_0
    const-string v0, "Could not bind ad manager"

    invoke-static {v0}, Lcom/google/android/gms/internal/zzakb;->zzcu(Ljava/lang/String;)V

    goto :goto_0
.end method
