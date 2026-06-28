.class final Lcom/google/android/gms/internal/zzyn;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic zzckm:Lcom/google/android/gms/internal/zzalf;

.field private synthetic zzckn:Ljava/lang/String;

.field private synthetic zzcko:Lcom/google/android/gms/internal/zzym;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzym;Lcom/google/android/gms/internal/zzalf;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzyn;->zzcko:Lcom/google/android/gms/internal/zzym;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzyn;->zzckm:Lcom/google/android/gms/internal/zzalf;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzyn;->zzckn:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v1, p0, Lcom/google/android/gms/internal/zzyn;->zzckm:Lcom/google/android/gms/internal/zzalf;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzyn;->zzcko:Lcom/google/android/gms/internal/zzym;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzym;->zza(Lcom/google/android/gms/internal/zzym;)Lcom/google/android/gms/ads/internal/zzba;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/zzba;->zzdu()Landroid/support/v4/util/SimpleArrayMap;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/gms/internal/zzyn;->zzckn:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/support/v4/util/SimpleArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzqz;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/zzalf;->set(Ljava/lang/Object;)V

    return-void
.end method
