.class public final Lcom/google/android/gms/internal/zzctf;
.super Lcom/google/android/gms/nearby/messages/internal/zzy;


# instance fields
.field private final zzhfw:Lcom/google/android/gms/common/api/internal/zzci;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/internal/zzci",
            "<",
            "Lcom/google/android/gms/nearby/messages/StatusCallback;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/api/internal/zzci;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/internal/zzci",
            "<",
            "Lcom/google/android/gms/nearby/messages/StatusCallback;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/nearby/messages/internal/zzy;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzctf;->zzhfw:Lcom/google/android/gms/common/api/internal/zzci;

    return-void
.end method


# virtual methods
.method public final onPermissionChanged(Z)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzctf;->zzhfw:Lcom/google/android/gms/common/api/internal/zzci;

    new-instance v1, Lcom/google/android/gms/internal/zzctg;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/zzctg;-><init>(Lcom/google/android/gms/internal/zzctf;Z)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/internal/zzci;->zza(Lcom/google/android/gms/common/api/internal/zzcl;)V

    return-void
.end method
