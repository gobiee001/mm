.class final Lcom/google/android/gms/internal/zztb;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic zzbzi:Lcom/google/android/gms/internal/zztc;

.field private synthetic zzbzj:Lcom/google/android/gms/internal/zztd;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzse;Lcom/google/android/gms/internal/zztc;Lcom/google/android/gms/internal/zztd;)V
    .locals 0

    iput-object p2, p0, Lcom/google/android/gms/internal/zztb;->zzbzi:Lcom/google/android/gms/internal/zztc;

    iput-object p3, p0, Lcom/google/android/gms/internal/zztb;->zzbzj:Lcom/google/android/gms/internal/zztd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zztb;->zzbzi:Lcom/google/android/gms/internal/zztc;

    iget-object v1, p0, Lcom/google/android/gms/internal/zztb;->zzbzj:Lcom/google/android/gms/internal/zztd;

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/zztc;->zzb(Lcom/google/android/gms/internal/zztd;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "Could not propagate interstitial ad event."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/zzagf;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
