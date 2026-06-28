.class final Lcom/google/android/gms/internal/zzyy;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/ads/internal/gmsg/zzt;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/ads/internal/gmsg/zzt",
        "<",
        "Lcom/google/android/gms/internal/zzanh;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic zzclk:Lcom/google/android/gms/internal/zzyt;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzyt;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzyy;->zzclk:Lcom/google/android/gms/internal/zzyt;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic zza(Ljava/lang/Object;Ljava/util/Map;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzyy;->zzclk:Lcom/google/android/gms/internal/zzyt;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzyt;->zza(Lcom/google/android/gms/internal/zzyt;)Lcom/google/android/gms/ads/internal/zzba;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/zzba;->zzdt()V

    return-void
.end method
