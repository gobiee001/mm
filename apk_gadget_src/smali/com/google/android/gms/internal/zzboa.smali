.class final synthetic Lcom/google/android/gms/internal/zzboa;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/tasks/Continuation;


# instance fields
.field private final zzgov:Lcom/google/android/gms/internal/zzbkt;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzbkt;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzboa;->zzgov:Lcom/google/android/gms/internal/zzbkt;

    return-void
.end method


# virtual methods
.method public final then(Lcom/google/android/gms/tasks/Task;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzboa;->zzgov:Lcom/google/android/gms/internal/zzbkt;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/zzbnx;->zza(Lcom/google/android/gms/internal/zzbkt;Lcom/google/android/gms/tasks/Task;)Lcom/google/android/gms/drive/events/ListenerToken;

    move-result-object v0

    return-object v0
.end method
