.class public final Lcom/google/android/gms/internal/zzajd;
.super Lcom/google/android/gms/internal/zzr;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/zzr",
        "<",
        "Lcom/google/android/gms/internal/zzp;",
        ">;"
    }
.end annotation


# instance fields
.field private final zzdcr:Lcom/google/android/gms/internal/zzalf;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/zzalf",
            "<",
            "Lcom/google/android/gms/internal/zzp;",
            ">;"
        }
    .end annotation
.end field

.field private final zzdcs:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final zzdct:Lcom/google/android/gms/internal/zzajv;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/google/android/gms/internal/zzalf;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/zzalf",
            "<",
            "Lcom/google/android/gms/internal/zzp;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Lcom/google/android/gms/internal/zzajd;-><init>(Ljava/lang/String;Ljava/util/Map;Lcom/google/android/gms/internal/zzalf;)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/util/Map;Lcom/google/android/gms/internal/zzalf;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/google/android/gms/internal/zzalf",
            "<",
            "Lcom/google/android/gms/internal/zzp;",
            ">;)V"
        }
    .end annotation

    const/4 v2, 0x0

    const/4 v0, 0x0

    new-instance v1, Lcom/google/android/gms/internal/zzaje;

    invoke-direct {v1, p3}, Lcom/google/android/gms/internal/zzaje;-><init>(Lcom/google/android/gms/internal/zzalf;)V

    invoke-direct {p0, v0, p1, v1}, Lcom/google/android/gms/internal/zzr;-><init>(ILjava/lang/String;Lcom/google/android/gms/internal/zzx;)V

    iput-object v2, p0, Lcom/google/android/gms/internal/zzajd;->zzdcs:Ljava/util/Map;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzajd;->zzdcr:Lcom/google/android/gms/internal/zzalf;

    new-instance v0, Lcom/google/android/gms/internal/zzajv;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzajv;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzajd;->zzdct:Lcom/google/android/gms/internal/zzajv;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzajd;->zzdct:Lcom/google/android/gms/internal/zzajv;

    const-string v1, "GET"

    invoke-virtual {v0, p1, v1, v2, v2}, Lcom/google/android/gms/internal/zzajv;->zza(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;[B)V

    return-void
.end method


# virtual methods
.method protected final zza(Lcom/google/android/gms/internal/zzp;)Lcom/google/android/gms/internal/zzw;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzp;",
            ")",
            "Lcom/google/android/gms/internal/zzw",
            "<",
            "Lcom/google/android/gms/internal/zzp;",
            ">;"
        }
    .end annotation

    invoke-static {p1}, Lcom/google/android/gms/internal/zzao;->zzb(Lcom/google/android/gms/internal/zzp;)Lcom/google/android/gms/internal/zzc;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/zzw;->zza(Ljava/lang/Object;Lcom/google/android/gms/internal/zzc;)Lcom/google/android/gms/internal/zzw;

    move-result-object v0

    return-object v0
.end method

.method protected final synthetic zza(Ljava/lang/Object;)V
    .locals 3

    check-cast p1, Lcom/google/android/gms/internal/zzp;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzajd;->zzdct:Lcom/google/android/gms/internal/zzajv;

    iget-object v1, p1, Lcom/google/android/gms/internal/zzp;->zzac:Ljava/util/Map;

    iget v2, p1, Lcom/google/android/gms/internal/zzp;->statusCode:I

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/zzajv;->zza(Ljava/util/Map;I)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzajd;->zzdct:Lcom/google/android/gms/internal/zzajv;

    iget-object v1, p1, Lcom/google/android/gms/internal/zzp;->data:[B

    invoke-static {}, Lcom/google/android/gms/internal/zzajv;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    if-eqz v1, :cond_0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzajv;->zzf([B)V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzajd;->zzdcr:Lcom/google/android/gms/internal/zzalf;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzalf;->set(Ljava/lang/Object;)V

    return-void
.end method
