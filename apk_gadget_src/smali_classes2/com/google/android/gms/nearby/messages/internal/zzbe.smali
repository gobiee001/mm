.class Lcom/google/android/gms/nearby/messages/internal/zzbe;
.super Lcom/google/android/gms/nearby/messages/internal/zzv;


# static fields
.field private static final zzjuj:Lcom/google/android/gms/internal/zzcte;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/zzcte",
            "<",
            "Lcom/google/android/gms/nearby/messages/PublishCallback;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final zzjuk:Lcom/google/android/gms/common/api/internal/zzci;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/internal/zzci",
            "<",
            "Lcom/google/android/gms/nearby/messages/PublishCallback;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/nearby/messages/internal/zzbf;

    invoke-direct {v0}, Lcom/google/android/gms/nearby/messages/internal/zzbf;-><init>()V

    sput-object v0, Lcom/google/android/gms/nearby/messages/internal/zzbe;->zzjuj:Lcom/google/android/gms/internal/zzcte;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/common/api/internal/zzci;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/internal/zzci",
            "<",
            "Lcom/google/android/gms/nearby/messages/PublishCallback;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/nearby/messages/internal/zzv;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/nearby/messages/internal/zzbe;->zzjuk:Lcom/google/android/gms/common/api/internal/zzci;

    return-void
.end method


# virtual methods
.method public onExpired()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/nearby/messages/internal/zzbe;->zzjuk:Lcom/google/android/gms/common/api/internal/zzci;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/nearby/messages/internal/zzbe;->zzjuk:Lcom/google/android/gms/common/api/internal/zzci;

    sget-object v1, Lcom/google/android/gms/nearby/messages/internal/zzbe;->zzjuj:Lcom/google/android/gms/internal/zzcte;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/internal/zzci;->zza(Lcom/google/android/gms/common/api/internal/zzcl;)V

    :cond_0
    return-void
.end method
