.class final Lcom/google/android/gms/nearby/messages/internal/zzaw;
.super Lcom/google/android/gms/nearby/messages/internal/zzbg;


# instance fields
.field private synthetic zzhlf:Lcom/google/android/gms/common/api/internal/zzci;

.field private synthetic zzjue:Lcom/google/android/gms/nearby/messages/internal/zzak;


# direct methods
.method constructor <init>(Lcom/google/android/gms/nearby/messages/internal/zzak;Lcom/google/android/gms/common/api/internal/zzci;Lcom/google/android/gms/common/api/internal/zzci;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/nearby/messages/internal/zzaw;->zzjue:Lcom/google/android/gms/nearby/messages/internal/zzak;

    iput-object p3, p0, Lcom/google/android/gms/nearby/messages/internal/zzaw;->zzhlf:Lcom/google/android/gms/common/api/internal/zzci;

    invoke-direct {p0, p2}, Lcom/google/android/gms/nearby/messages/internal/zzbg;-><init>(Lcom/google/android/gms/common/api/internal/zzci;)V

    return-void
.end method


# virtual methods
.method public final onExpired()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/nearby/messages/internal/zzaw;->zzjue:Lcom/google/android/gms/nearby/messages/internal/zzak;

    iget-object v1, p0, Lcom/google/android/gms/nearby/messages/internal/zzaw;->zzhlf:Lcom/google/android/gms/common/api/internal/zzci;

    invoke-virtual {v1}, Lcom/google/android/gms/common/api/internal/zzci;->zzajo()Lcom/google/android/gms/common/api/internal/zzck;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/GoogleApi;->zza(Lcom/google/android/gms/common/api/internal/zzck;)Lcom/google/android/gms/tasks/Task;

    invoke-super {p0}, Lcom/google/android/gms/nearby/messages/internal/zzbg;->onExpired()V

    return-void
.end method
