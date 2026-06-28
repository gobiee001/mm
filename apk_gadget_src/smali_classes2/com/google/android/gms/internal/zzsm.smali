.class final Lcom/google/android/gms/internal/zzsm;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zztc;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzsf;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zzb(Lcom/google/android/gms/internal/zztd;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p1, Lcom/google/android/gms/internal/zztd;->zzape:Lcom/google/android/gms/internal/zzkh;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/google/android/gms/internal/zztd;->zzape:Lcom/google/android/gms/internal/zzkh;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzkh;->onAdClicked()V

    :cond_0
    return-void
.end method
