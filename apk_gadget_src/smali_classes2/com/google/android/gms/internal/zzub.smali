.class final Lcom/google/android/gms/internal/zzub;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzalk;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/zzalk",
        "<",
        "Lcom/google/android/gms/ads/internal/js/zzaj;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic zzcck:Lcom/google/android/gms/ads/internal/js/zzaa;

.field private synthetic zzccl:Ljava/lang/Object;

.field private synthetic zzccm:Lcom/google/android/gms/internal/zzalf;

.field private synthetic zzccn:Lcom/google/android/gms/internal/zzua;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzua;Lcom/google/android/gms/ads/internal/js/zzaa;Ljava/lang/Object;Lcom/google/android/gms/internal/zzalf;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzub;->zzccn:Lcom/google/android/gms/internal/zzua;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzub;->zzcck:Lcom/google/android/gms/ads/internal/js/zzaa;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzub;->zzccl:Ljava/lang/Object;

    iput-object p4, p0, Lcom/google/android/gms/internal/zzub;->zzccm:Lcom/google/android/gms/internal/zzalf;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic zzf(Ljava/lang/Object;)V
    .locals 4

    check-cast p1, Lcom/google/android/gms/ads/internal/js/zzaj;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzub;->zzccn:Lcom/google/android/gms/internal/zzua;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzub;->zzcck:Lcom/google/android/gms/ads/internal/js/zzaa;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzub;->zzccl:Ljava/lang/Object;

    iget-object v3, p0, Lcom/google/android/gms/internal/zzub;->zzccm:Lcom/google/android/gms/internal/zzalf;

    invoke-static {v0, v1, p1, v2, v3}, Lcom/google/android/gms/internal/zzua;->zza(Lcom/google/android/gms/internal/zzua;Lcom/google/android/gms/ads/internal/js/zzaa;Lcom/google/android/gms/ads/internal/js/zzaj;Ljava/lang/Object;Lcom/google/android/gms/internal/zzalf;)V

    return-void
.end method
