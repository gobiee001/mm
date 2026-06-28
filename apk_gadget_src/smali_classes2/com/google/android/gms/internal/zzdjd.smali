.class public final Lcom/google/android/gms/internal/zzdjd;
.super Ljava/lang/Object;


# instance fields
.field private zzkjc:Lcom/google/android/gms/internal/zzbs;

.field private final zzksg:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/zzbs;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzdjd;->zzksg:Ljava/util/Map;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/zzdjb;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzdjd;-><init>()V

    return-void
.end method


# virtual methods
.method public final zzb(Ljava/lang/String;Lcom/google/android/gms/internal/zzbs;)Lcom/google/android/gms/internal/zzdjd;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzdjd;->zzksg:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public final zzbjc()Lcom/google/android/gms/internal/zzdjc;
    .locals 4

    new-instance v0, Lcom/google/android/gms/internal/zzdjc;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzdjd;->zzksg:Ljava/util/Map;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzdjd;->zzkjc:Lcom/google/android/gms/internal/zzbs;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/internal/zzdjc;-><init>(Ljava/util/Map;Lcom/google/android/gms/internal/zzbs;Lcom/google/android/gms/internal/zzdjb;)V

    return-object v0
.end method

.method public final zzl(Lcom/google/android/gms/internal/zzbs;)Lcom/google/android/gms/internal/zzdjd;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzdjd;->zzkjc:Lcom/google/android/gms/internal/zzbs;

    return-object p0
.end method
