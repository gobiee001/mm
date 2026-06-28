.class public final Lcom/google/android/gms/internal/zzdiz;
.super Ljava/lang/Object;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final zzata:Lcom/google/android/gms/common/util/zzd;

.field private zzkeh:Ljava/lang/String;

.field private zzkrd:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final zzkre:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final zzktp:Lcom/google/android/gms/internal/zzdjj;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    new-instance v1, Lcom/google/android/gms/internal/zzdjj;

    invoke-direct {v1, p1}, Lcom/google/android/gms/internal/zzdjj;-><init>(Landroid/content/Context;)V

    invoke-static {}, Lcom/google/android/gms/common/util/zzh;->zzamg()Lcom/google/android/gms/common/util/zzd;

    move-result-object v2

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/google/android/gms/internal/zzdiz;-><init>(Landroid/content/Context;Ljava/util/Map;Lcom/google/android/gms/internal/zzdjj;Lcom/google/android/gms/common/util/zzd;)V

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Ljava/util/Map;Lcom/google/android/gms/internal/zzdjj;Lcom/google/android/gms/common/util/zzd;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/google/android/gms/internal/zzdjj;",
            "Lcom/google/android/gms/common/util/zzd;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzdiz;->zzkeh:Ljava/lang/String;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzdiz;->zzkrd:Ljava/util/Map;

    iput-object p1, p0, Lcom/google/android/gms/internal/zzdiz;->mContext:Landroid/content/Context;

    iput-object p4, p0, Lcom/google/android/gms/internal/zzdiz;->zzata:Lcom/google/android/gms/common/util/zzd;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzdiz;->zzktp:Lcom/google/android/gms/internal/zzdjj;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzdiz;->zzkre:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final zzng(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzdiz;->zzkeh:Ljava/lang/String;

    return-void
.end method
