.class public final Lcom/google/android/gms/ads/Correlator;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzzv;
.end annotation


# instance fields
.field private zzalz:Lcom/google/android/gms/internal/zzkc;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/gms/internal/zzkc;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzkc;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/ads/Correlator;->zzalz:Lcom/google/android/gms/internal/zzkc;

    return-void
.end method


# virtual methods
.method public final reset()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/ads/Correlator;->zzalz:Lcom/google/android/gms/internal/zzkc;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzkc;->zzig()V

    return-void
.end method

.method public final zzbh()Lcom/google/android/gms/internal/zzkc;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/ads/Correlator;->zzalz:Lcom/google/android/gms/internal/zzkc;

    return-object v0
.end method
