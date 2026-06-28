.class final Lcom/google/android/gms/games/zzbg;
.super Lcom/google/android/gms/games/internal/zza;


# instance fields
.field private synthetic zzeos:Lcom/google/android/gms/tasks/TaskCompletionSource;


# direct methods
.method constructor <init>(Lcom/google/android/gms/games/zzbf;Lcom/google/android/gms/tasks/TaskCompletionSource;)V
    .locals 0

    iput-object p2, p0, Lcom/google/android/gms/games/zzbg;->zzeos:Lcom/google/android/gms/tasks/TaskCompletionSource;

    invoke-direct {p0}, Lcom/google/android/gms/games/internal/zza;-><init>()V

    return-void
.end method


# virtual methods
.method public final onLeftRoom(ILjava/lang/String;)V
    .locals 2

    invoke-static {p1}, Lcom/google/android/gms/games/GamesClientStatusCodes;->zzdh(I)I

    move-result v0

    invoke-static {v0}, Lcom/google/android/gms/games/GamesClientStatusCodes;->zzdg(I)Lcom/google/android/gms/common/api/Status;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/games/zzbg;->zzeos:Lcom/google/android/gms/tasks/TaskCompletionSource;

    invoke-static {v0, p2, v1}, Lcom/google/android/gms/common/api/internal/zzde;->zza(Lcom/google/android/gms/common/api/Status;Ljava/lang/Object;Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    return-void
.end method
