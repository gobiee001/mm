.class final synthetic Lcom/google/android/gms/internal/zzbpg;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzbpa;


# instance fields
.field private final zzgpw:Lcom/google/android/gms/internal/zzbqz;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzbqz;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzbpg;->zzgpw:Lcom/google/android/gms/internal/zzbqz;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbpg;->zzgpw:Lcom/google/android/gms/internal/zzbqz;

    check-cast p1, Lcom/google/android/gms/drive/events/OpenFileCallback;

    iget-wide v2, v0, Lcom/google/android/gms/internal/zzbqz;->zzgqt:J

    iget-wide v0, v0, Lcom/google/android/gms/internal/zzbqz;->zzgqu:J

    invoke-virtual {p1, v2, v3, v0, v1}, Lcom/google/android/gms/drive/events/OpenFileCallback;->onProgress(JJ)V

    return-void
.end method
