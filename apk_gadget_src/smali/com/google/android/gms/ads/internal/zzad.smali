.class final synthetic Lcom/google/android/gms/ads/internal/zzad;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzakg;


# instance fields
.field private final zzaoz:Lcom/google/android/gms/ads/internal/zzac;


# direct methods
.method constructor <init>(Lcom/google/android/gms/ads/internal/zzac;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/zzad;->zzaoz:Lcom/google/android/gms/ads/internal/zzac;

    return-void
.end method


# virtual methods
.method public final zzc(Ljava/lang/Object;)Lcom/google/android/gms/internal/zzakv;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzad;->zzaoz:Lcom/google/android/gms/ads/internal/zzac;

    check-cast p1, Lorg/json/JSONObject;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/ads/internal/zzac;->zza(Lorg/json/JSONObject;)Lcom/google/android/gms/internal/zzakv;

    move-result-object v0

    return-object v0
.end method
