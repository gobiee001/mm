.class abstract Lcom/google/android/gms/tagmanager/zzgi;
.super Lcom/google/android/gms/tagmanager/zzbr;


# direct methods
.method public varargs constructor <init>(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/tagmanager/zzbr;-><init>(Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public zzbdp()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public zzv(Ljava/util/Map;)Lcom/google/android/gms/internal/zzbs;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/zzbs;",
            ">;)",
            "Lcom/google/android/gms/internal/zzbs;"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/google/android/gms/tagmanager/zzgi;->zzx(Ljava/util/Map;)V

    invoke-static {}, Lcom/google/android/gms/tagmanager/zzgk;->zzbgs()Lcom/google/android/gms/internal/zzbs;

    move-result-object v0

    return-object v0
.end method

.method public abstract zzx(Ljava/util/Map;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/zzbs;",
            ">;)V"
        }
    .end annotation
.end method
