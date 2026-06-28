.class final Lcom/google/android/gms/internal/zzyv;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzann;


# instance fields
.field private synthetic zzaqy:Lcom/google/android/gms/internal/zzanh;

.field private synthetic zzcll:Lcom/google/android/gms/internal/zzyu;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzyu;Lcom/google/android/gms/internal/zzanh;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzyv;->zzcll:Lcom/google/android/gms/internal/zzyu;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzyv;->zzaqy:Lcom/google/android/gms/internal/zzanh;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zzg(Lcom/google/android/gms/internal/zzanh;)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzyv;->zzaqy:Lcom/google/android/gms/internal/zzanh;

    const-string v1, "google.afma.nativeAds.renderVideo"

    iget-object v2, p0, Lcom/google/android/gms/internal/zzyv;->zzcll:Lcom/google/android/gms/internal/zzyu;

    iget-object v2, v2, Lcom/google/android/gms/internal/zzyu;->zzcli:Lorg/json/JSONObject;

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/internal/zzanh;->zzb(Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void
.end method
