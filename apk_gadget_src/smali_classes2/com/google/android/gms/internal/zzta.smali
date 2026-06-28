.class final Lcom/google/android/gms/internal/zzta;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zztc;


# instance fields
.field private synthetic zzbze:I


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzst;I)V
    .locals 0

    iput p2, p0, Lcom/google/android/gms/internal/zzta;->zzbze:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zzb(Lcom/google/android/gms/internal/zztd;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p1, Lcom/google/android/gms/internal/zztd;->zzbzn:Lcom/google/android/gms/internal/zzadp;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/google/android/gms/internal/zztd;->zzbzn:Lcom/google/android/gms/internal/zzadp;

    iget v1, p0, Lcom/google/android/gms/internal/zzta;->zzbze:I

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/zzadp;->onRewardedVideoAdFailedToLoad(I)V

    :cond_0
    return-void
.end method
