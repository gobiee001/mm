.class public final Lcom/google/android/gms/internal/zzaca;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzzv;
.end annotation


# instance fields
.field public final zzcqy:Z

.field public final zzcqz:Lcom/google/android/gms/internal/zzacm;

.field public final zzcra:Lcom/google/android/gms/internal/zzin;

.field public final zzcrb:Lcom/google/android/gms/internal/zzafj;

.field public final zzcrc:Lcom/google/android/gms/internal/zzmw;

.field public final zzcrd:Lcom/google/android/gms/internal/zzacv;

.field public final zzcre:Lcom/google/android/gms/internal/zzue;

.field private zzcrf:Lcom/google/android/gms/internal/zzacw;

.field public final zzcrg:Lcom/google/android/gms/internal/zzacx;

.field public final zzcrh:Lcom/google/android/gms/internal/zzxk;

.field public final zzcri:Lcom/google/android/gms/internal/zzafn;

.field public final zzcrj:Lcom/google/android/gms/internal/zzacf;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/zzacm;Lcom/google/android/gms/internal/zzin;Lcom/google/android/gms/internal/zzafj;Lcom/google/android/gms/internal/zzmw;Lcom/google/android/gms/internal/zzacv;Lcom/google/android/gms/internal/zzue;Lcom/google/android/gms/internal/zzacw;Lcom/google/android/gms/internal/zzacx;Lcom/google/android/gms/internal/zzxk;Lcom/google/android/gms/internal/zzafn;ZLcom/google/android/gms/internal/zzacf;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzaca;->zzcqz:Lcom/google/android/gms/internal/zzacm;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzaca;->zzcra:Lcom/google/android/gms/internal/zzin;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzaca;->zzcrb:Lcom/google/android/gms/internal/zzafj;

    iput-object p4, p0, Lcom/google/android/gms/internal/zzaca;->zzcrc:Lcom/google/android/gms/internal/zzmw;

    iput-object p5, p0, Lcom/google/android/gms/internal/zzaca;->zzcrd:Lcom/google/android/gms/internal/zzacv;

    iput-object p6, p0, Lcom/google/android/gms/internal/zzaca;->zzcre:Lcom/google/android/gms/internal/zzue;

    iput-object p7, p0, Lcom/google/android/gms/internal/zzaca;->zzcrf:Lcom/google/android/gms/internal/zzacw;

    iput-object p8, p0, Lcom/google/android/gms/internal/zzaca;->zzcrg:Lcom/google/android/gms/internal/zzacx;

    iput-object p9, p0, Lcom/google/android/gms/internal/zzaca;->zzcrh:Lcom/google/android/gms/internal/zzxk;

    iput-object p10, p0, Lcom/google/android/gms/internal/zzaca;->zzcri:Lcom/google/android/gms/internal/zzafn;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzaca;->zzcqy:Z

    iput-object p12, p0, Lcom/google/android/gms/internal/zzaca;->zzcrj:Lcom/google/android/gms/internal/zzacf;

    return-void
.end method

.method public static zzk(Landroid/content/Context;)Lcom/google/android/gms/internal/zzaca;
    .locals 13

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbs;->zzfe()Lcom/google/android/gms/ads/internal/js/zzb;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/gms/ads/internal/js/zzb;->initialize(Landroid/content/Context;)V

    new-instance v12, Lcom/google/android/gms/internal/zzadb;

    invoke-direct {v12, p0}, Lcom/google/android/gms/internal/zzadb;-><init>(Landroid/content/Context;)V

    new-instance v0, Lcom/google/android/gms/internal/zzaca;

    const/4 v1, 0x0

    new-instance v2, Lcom/google/android/gms/internal/zziq;

    invoke-direct {v2}, Lcom/google/android/gms/internal/zziq;-><init>()V

    new-instance v3, Lcom/google/android/gms/internal/zzafk;

    invoke-direct {v3}, Lcom/google/android/gms/internal/zzafk;-><init>()V

    new-instance v4, Lcom/google/android/gms/internal/zzmv;

    invoke-direct {v4}, Lcom/google/android/gms/internal/zzmv;-><init>()V

    new-instance v5, Lcom/google/android/gms/internal/zzact;

    invoke-interface {v12}, Lcom/google/android/gms/internal/zzacf;->zznr()Lcom/google/android/gms/internal/zztp;

    move-result-object v6

    invoke-direct {v5, p0, v6}, Lcom/google/android/gms/internal/zzact;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/zztp;)V

    new-instance v6, Lcom/google/android/gms/internal/zzuf;

    invoke-direct {v6}, Lcom/google/android/gms/internal/zzuf;-><init>()V

    new-instance v7, Lcom/google/android/gms/internal/zzacz;

    invoke-direct {v7}, Lcom/google/android/gms/internal/zzacz;-><init>()V

    new-instance v8, Lcom/google/android/gms/internal/zzada;

    invoke-direct {v8}, Lcom/google/android/gms/internal/zzada;-><init>()V

    new-instance v9, Lcom/google/android/gms/internal/zzxj;

    invoke-direct {v9}, Lcom/google/android/gms/internal/zzxj;-><init>()V

    new-instance v10, Lcom/google/android/gms/internal/zzafl;

    invoke-direct {v10}, Lcom/google/android/gms/internal/zzafl;-><init>()V

    const/4 v11, 0x1

    invoke-direct/range {v0 .. v12}, Lcom/google/android/gms/internal/zzaca;-><init>(Lcom/google/android/gms/internal/zzacm;Lcom/google/android/gms/internal/zzin;Lcom/google/android/gms/internal/zzafj;Lcom/google/android/gms/internal/zzmw;Lcom/google/android/gms/internal/zzacv;Lcom/google/android/gms/internal/zzue;Lcom/google/android/gms/internal/zzacw;Lcom/google/android/gms/internal/zzacx;Lcom/google/android/gms/internal/zzxk;Lcom/google/android/gms/internal/zzafn;ZLcom/google/android/gms/internal/zzacf;)V

    return-object v0
.end method
