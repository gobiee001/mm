.class public final Lcom/google/android/gms/internal/zzafp;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzzv;
.end annotation


# instance fields
.field public final errorCode:I

.field public final zzauc:Lcom/google/android/gms/internal/zzjn;

.field public final zzcqv:Lcom/google/android/gms/internal/zzaat;

.field public final zzcxj:Lorg/json/JSONObject;

.field public final zzcxl:Lcom/google/android/gms/internal/zzui;

.field public final zzcxp:J

.field public final zzcxq:J

.field public final zzcxw:Lcom/google/android/gms/internal/zzis;

.field public final zzcxx:Z

.field public final zzcxy:Lcom/google/android/gms/internal/zzaax;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/zzaat;Lcom/google/android/gms/internal/zzaax;Lcom/google/android/gms/internal/zzui;Lcom/google/android/gms/internal/zzjn;IJJLorg/json/JSONObject;Lcom/google/android/gms/internal/zzis;Ljava/lang/Boolean;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzafp;->zzcqv:Lcom/google/android/gms/internal/zzaat;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzafp;->zzcxy:Lcom/google/android/gms/internal/zzaax;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzafp;->zzcxl:Lcom/google/android/gms/internal/zzui;

    iput-object p4, p0, Lcom/google/android/gms/internal/zzafp;->zzauc:Lcom/google/android/gms/internal/zzjn;

    iput p5, p0, Lcom/google/android/gms/internal/zzafp;->errorCode:I

    iput-wide p6, p0, Lcom/google/android/gms/internal/zzafp;->zzcxp:J

    iput-wide p8, p0, Lcom/google/android/gms/internal/zzafp;->zzcxq:J

    iput-object p10, p0, Lcom/google/android/gms/internal/zzafp;->zzcxj:Lorg/json/JSONObject;

    iput-object p11, p0, Lcom/google/android/gms/internal/zzafp;->zzcxw:Lcom/google/android/gms/internal/zzis;

    if-eqz p12, :cond_0

    invoke-virtual {p12}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzafp;->zzcxx:Z

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbs;->zzei()Lcom/google/android/gms/internal/zzahn;

    iget-object v0, p1, Lcom/google/android/gms/internal/zzaat;->zzcnd:Lcom/google/android/gms/internal/zzjj;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzahn;->zzp(Lcom/google/android/gms/internal/zzjj;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzafp;->zzcxx:Z

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzafp;->zzcxx:Z

    goto :goto_0
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/zzaat;Lcom/google/android/gms/internal/zzaax;Lcom/google/android/gms/internal/zzui;Lcom/google/android/gms/internal/zzjn;IJJLorg/json/JSONObject;Lcom/google/android/gms/internal/zzix;)V
    .locals 4

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzafp;->zzcqv:Lcom/google/android/gms/internal/zzaat;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzafp;->zzcxy:Lcom/google/android/gms/internal/zzaax;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzafp;->zzcxl:Lcom/google/android/gms/internal/zzui;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzafp;->zzauc:Lcom/google/android/gms/internal/zzjn;

    iput p5, p0, Lcom/google/android/gms/internal/zzafp;->errorCode:I

    iput-wide p6, p0, Lcom/google/android/gms/internal/zzafp;->zzcxp:J

    iput-wide p8, p0, Lcom/google/android/gms/internal/zzafp;->zzcxq:J

    iput-object v0, p0, Lcom/google/android/gms/internal/zzafp;->zzcxj:Lorg/json/JSONObject;

    new-instance v1, Lcom/google/android/gms/internal/zzis;

    sget-object v0, Lcom/google/android/gms/internal/zznh;->zzbrf:Lcom/google/android/gms/internal/zzmx;

    invoke-static {}, Lcom/google/android/gms/internal/zzkb;->zzif()Lcom/google/android/gms/internal/zznf;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/zznf;->zzd(Lcom/google/android/gms/internal/zzmx;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-direct {v1, p11, v0}, Lcom/google/android/gms/internal/zzis;-><init>(Lcom/google/android/gms/internal/zzix;Z)V

    iput-object v1, p0, Lcom/google/android/gms/internal/zzafp;->zzcxw:Lcom/google/android/gms/internal/zzis;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzafp;->zzcxx:Z

    return-void
.end method
