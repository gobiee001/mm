.class public final Lcom/google/android/gms/internal/zzgf;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzgo;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzzv;
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final zzawt:Lcom/google/android/gms/internal/zzft;

.field private final zzawv:Lcom/google/android/gms/ads/internal/gmsg/zzt;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/ads/internal/gmsg/zzt",
            "<",
            "Lcom/google/android/gms/ads/internal/js/zzaj;",
            ">;"
        }
    .end annotation
.end field

.field private final zzaww:Lcom/google/android/gms/ads/internal/gmsg/zzt;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/ads/internal/gmsg/zzt",
            "<",
            "Lcom/google/android/gms/ads/internal/js/zzaj;",
            ">;"
        }
    .end annotation
.end field

.field private final zzawx:Lcom/google/android/gms/ads/internal/gmsg/zzt;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/ads/internal/gmsg/zzt",
            "<",
            "Lcom/google/android/gms/ads/internal/js/zzaj;",
            ">;"
        }
    .end annotation
.end field

.field private final zzawz:Lcom/google/android/gms/ads/internal/gmsg/zzz;

.field private zzaxa:Lcom/google/android/gms/ads/internal/js/zzaa;

.field private zzaxb:Z

.field private final zzaxc:Lcom/google/android/gms/ads/internal/gmsg/zzt;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/ads/internal/gmsg/zzt",
            "<",
            "Lcom/google/android/gms/ads/internal/js/zzaj;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/zzft;Lcom/google/android/gms/ads/internal/js/zzn;Landroid/content/Context;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/gms/internal/zzgk;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/zzgk;-><init>(Lcom/google/android/gms/internal/zzgf;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzgf;->zzawv:Lcom/google/android/gms/ads/internal/gmsg/zzt;

    new-instance v0, Lcom/google/android/gms/internal/zzgl;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/zzgl;-><init>(Lcom/google/android/gms/internal/zzgf;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzgf;->zzaww:Lcom/google/android/gms/ads/internal/gmsg/zzt;

    new-instance v0, Lcom/google/android/gms/internal/zzgm;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/zzgm;-><init>(Lcom/google/android/gms/internal/zzgf;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzgf;->zzawx:Lcom/google/android/gms/ads/internal/gmsg/zzt;

    new-instance v0, Lcom/google/android/gms/internal/zzgn;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/zzgn;-><init>(Lcom/google/android/gms/internal/zzgf;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzgf;->zzaxc:Lcom/google/android/gms/ads/internal/gmsg/zzt;

    iput-object p1, p0, Lcom/google/android/gms/internal/zzgf;->zzawt:Lcom/google/android/gms/internal/zzft;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzgf;->mContext:Landroid/content/Context;

    new-instance v0, Lcom/google/android/gms/ads/internal/gmsg/zzz;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzgf;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/google/android/gms/ads/internal/gmsg/zzz;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzgf;->zzawz:Lcom/google/android/gms/ads/internal/gmsg/zzz;

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Lcom/google/android/gms/ads/internal/js/zzn;->zzb(Lcom/google/android/gms/internal/zzcv;)Lcom/google/android/gms/ads/internal/js/zzaa;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzgf;->zzaxa:Lcom/google/android/gms/ads/internal/js/zzaa;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzgf;->zzaxa:Lcom/google/android/gms/ads/internal/js/zzaa;

    new-instance v1, Lcom/google/android/gms/internal/zzgg;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/zzgg;-><init>(Lcom/google/android/gms/internal/zzgf;)V

    new-instance v2, Lcom/google/android/gms/internal/zzgh;

    invoke-direct {v2, p0}, Lcom/google/android/gms/internal/zzgh;-><init>(Lcom/google/android/gms/internal/zzgf;)V

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/zzall;->zza(Lcom/google/android/gms/internal/zzalk;Lcom/google/android/gms/internal/zzali;)V

    const-string v1, "Core JS tracking ad unit: "

    iget-object v0, p0, Lcom/google/android/gms/internal/zzgf;->zzawt:Lcom/google/android/gms/internal/zzft;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzft;->zzavw:Lcom/google/android/gms/internal/zzfr;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzfr;->zzfu()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-static {v0}, Lcom/google/android/gms/internal/zzagf;->zzbx(Ljava/lang/String;)V

    return-void

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzgf;)Lcom/google/android/gms/internal/zzft;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzgf;->zzawt:Lcom/google/android/gms/internal/zzft;

    return-object v0
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzgf;Z)Z
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzgf;->zzaxb:Z

    return v0
.end method

.method static synthetic zzb(Lcom/google/android/gms/internal/zzgf;)Lcom/google/android/gms/ads/internal/gmsg/zzz;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzgf;->zzawz:Lcom/google/android/gms/ads/internal/gmsg/zzz;

    return-object v0
.end method


# virtual methods
.method final zza(Lcom/google/android/gms/ads/internal/js/zzaj;)V
    .locals 2

    const-string v0, "/updateActiveView"

    iget-object v1, p0, Lcom/google/android/gms/internal/zzgf;->zzawv:Lcom/google/android/gms/ads/internal/gmsg/zzt;

    invoke-interface {p1, v0, v1}, Lcom/google/android/gms/ads/internal/js/zzaj;->zza(Ljava/lang/String;Lcom/google/android/gms/ads/internal/gmsg/zzt;)V

    const-string v0, "/untrackActiveViewUnit"

    iget-object v1, p0, Lcom/google/android/gms/internal/zzgf;->zzaww:Lcom/google/android/gms/ads/internal/gmsg/zzt;

    invoke-interface {p1, v0, v1}, Lcom/google/android/gms/ads/internal/js/zzaj;->zza(Ljava/lang/String;Lcom/google/android/gms/ads/internal/gmsg/zzt;)V

    const-string v0, "/visibilityChanged"

    iget-object v1, p0, Lcom/google/android/gms/internal/zzgf;->zzawx:Lcom/google/android/gms/ads/internal/gmsg/zzt;

    invoke-interface {p1, v0, v1}, Lcom/google/android/gms/ads/internal/js/zzaj;->zza(Ljava/lang/String;Lcom/google/android/gms/ads/internal/gmsg/zzt;)V

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbs;->zzfd()Lcom/google/android/gms/internal/zzaff;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzgf;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzaff;->zzq(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "/logScionEvent"

    iget-object v1, p0, Lcom/google/android/gms/internal/zzgf;->zzaxc:Lcom/google/android/gms/ads/internal/gmsg/zzt;

    invoke-interface {p1, v0, v1}, Lcom/google/android/gms/ads/internal/js/zzaj;->zza(Ljava/lang/String;Lcom/google/android/gms/ads/internal/gmsg/zzt;)V

    :cond_0
    return-void
.end method

.method final zzb(Lcom/google/android/gms/ads/internal/js/zzaj;)V
    .locals 2

    const-string v0, "/visibilityChanged"

    iget-object v1, p0, Lcom/google/android/gms/internal/zzgf;->zzawx:Lcom/google/android/gms/ads/internal/gmsg/zzt;

    invoke-interface {p1, v0, v1}, Lcom/google/android/gms/ads/internal/js/zzaj;->zzb(Ljava/lang/String;Lcom/google/android/gms/ads/internal/gmsg/zzt;)V

    const-string v0, "/untrackActiveViewUnit"

    iget-object v1, p0, Lcom/google/android/gms/internal/zzgf;->zzaww:Lcom/google/android/gms/ads/internal/gmsg/zzt;

    invoke-interface {p1, v0, v1}, Lcom/google/android/gms/ads/internal/js/zzaj;->zzb(Ljava/lang/String;Lcom/google/android/gms/ads/internal/gmsg/zzt;)V

    const-string v0, "/updateActiveView"

    iget-object v1, p0, Lcom/google/android/gms/internal/zzgf;->zzawv:Lcom/google/android/gms/ads/internal/gmsg/zzt;

    invoke-interface {p1, v0, v1}, Lcom/google/android/gms/ads/internal/js/zzaj;->zzb(Ljava/lang/String;Lcom/google/android/gms/ads/internal/gmsg/zzt;)V

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbs;->zzfd()Lcom/google/android/gms/internal/zzaff;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzgf;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzaff;->zzq(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "/logScionEvent"

    iget-object v1, p0, Lcom/google/android/gms/internal/zzgf;->zzaxc:Lcom/google/android/gms/ads/internal/gmsg/zzt;

    invoke-interface {p1, v0, v1}, Lcom/google/android/gms/ads/internal/js/zzaj;->zzb(Ljava/lang/String;Lcom/google/android/gms/ads/internal/gmsg/zzt;)V

    :cond_0
    return-void
.end method

.method public final zzb(Lorg/json/JSONObject;Z)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzgf;->zzaxa:Lcom/google/android/gms/ads/internal/js/zzaa;

    new-instance v1, Lcom/google/android/gms/internal/zzgi;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/zzgi;-><init>(Lcom/google/android/gms/internal/zzgf;Lorg/json/JSONObject;)V

    new-instance v2, Lcom/google/android/gms/internal/zzalj;

    invoke-direct {v2}, Lcom/google/android/gms/internal/zzalj;-><init>()V

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/zzall;->zza(Lcom/google/android/gms/internal/zzalk;Lcom/google/android/gms/internal/zzali;)V

    return-void
.end method

.method public final zzgg()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzgf;->zzaxb:Z

    return v0
.end method

.method public final zzgh()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzgf;->zzaxa:Lcom/google/android/gms/ads/internal/js/zzaa;

    new-instance v1, Lcom/google/android/gms/internal/zzgj;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/zzgj;-><init>(Lcom/google/android/gms/internal/zzgf;)V

    new-instance v2, Lcom/google/android/gms/internal/zzalj;

    invoke-direct {v2}, Lcom/google/android/gms/internal/zzalj;-><init>()V

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/zzall;->zza(Lcom/google/android/gms/internal/zzalk;Lcom/google/android/gms/internal/zzali;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzgf;->zzaxa:Lcom/google/android/gms/ads/internal/js/zzaa;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/js/zzaa;->release()V

    return-void
.end method
