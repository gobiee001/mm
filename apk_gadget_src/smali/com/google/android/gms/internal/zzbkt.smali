.class public final Lcom/google/android/gms/internal/zzbkt;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/drive/events/ListenerToken;


# instance fields
.field private final zzgmc:Lcom/google/android/gms/common/api/internal/zzck;

.field private zzgmd:Lcom/google/android/gms/common/internal/zzaq;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/api/internal/zzck;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzbkt;->zzgmd:Lcom/google/android/gms/common/internal/zzaq;

    iput-object p1, p0, Lcom/google/android/gms/internal/zzbkt;->zzgmc:Lcom/google/android/gms/common/api/internal/zzck;

    return-void
.end method


# virtual methods
.method public final cancel()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbkt;->zzgmd:Lcom/google/android/gms/common/internal/zzaq;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzbkt;->zzgmd:Lcom/google/android/gms/common/internal/zzaq;

    invoke-interface {v0}, Lcom/google/android/gms/common/internal/zzaq;->cancel()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :catch_0
    move-exception v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final zza(Lcom/google/android/gms/common/internal/zzaq;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzbkt;->zzgmd:Lcom/google/android/gms/common/internal/zzaq;

    return-void
.end method

.method public final zzaoy()Lcom/google/android/gms/common/api/internal/zzck;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbkt;->zzgmc:Lcom/google/android/gms/common/api/internal/zzck;

    return-object v0
.end method
