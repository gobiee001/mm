.class public abstract Lcom/google/android/gms/internal/zzxu;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzaif;
.implements Lcom/google/android/gms/internal/zzanm;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzzv;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/zzaif",
        "<",
        "Ljava/lang/Void;",
        ">;",
        "Lcom/google/android/gms/internal/zzanm;"
    }
.end annotation


# instance fields
.field protected final mContext:Landroid/content/Context;

.field protected final zzbyk:Lcom/google/android/gms/internal/zzanh;

.field private zzcjj:Lcom/google/android/gms/internal/zzyb;

.field private zzcjk:Lcom/google/android/gms/internal/zzafp;

.field protected zzcjl:Lcom/google/android/gms/internal/zzaax;

.field private zzcjm:Ljava/lang/Runnable;

.field private zzcjn:Ljava/lang/Object;

.field private zzcjo:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method protected constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/zzafp;Lcom/google/android/gms/internal/zzanh;Lcom/google/android/gms/internal/zzyb;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzxu;->zzcjn:Ljava/lang/Object;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzxu;->zzcjo:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-object p1, p0, Lcom/google/android/gms/internal/zzxu;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzxu;->zzcjk:Lcom/google/android/gms/internal/zzafp;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzxu;->zzcjk:Lcom/google/android/gms/internal/zzafp;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzafp;->zzcxy:Lcom/google/android/gms/internal/zzaax;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzxu;->zzcjl:Lcom/google/android/gms/internal/zzaax;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzxu;->zzbyk:Lcom/google/android/gms/internal/zzanh;

    iput-object p4, p0, Lcom/google/android/gms/internal/zzxu;->zzcjj:Lcom/google/android/gms/internal/zzyb;

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzxu;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzxu;->zzcjo:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method


# virtual methods
.method public cancel()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzxu;->zzcjo:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzxu;->zzbyk:Lcom/google/android/gms/internal/zzanh;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzanh;->stopLoading()V

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbs;->zzek()Lcom/google/android/gms/internal/zzaht;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzxu;->zzbyk:Lcom/google/android/gms/internal/zzanh;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzaht;->zzi(Lcom/google/android/gms/internal/zzanh;)Z

    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzxu;->zzx(I)V

    sget-object v0, Lcom/google/android/gms/internal/zzahn;->zzdaw:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzxu;->zzcjm:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public final zza(Lcom/google/android/gms/internal/zzanh;Z)V
    .locals 2

    const/4 v0, 0x0

    const-string v1, "WebView finished loading."

    invoke-static {v1}, Lcom/google/android/gms/internal/zzagf;->zzbx(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/zzxu;->zzcjo:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v1

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    if-eqz p2, :cond_1

    const/4 v0, -0x2

    :cond_1
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzxu;->zzx(I)V

    sget-object v0, Lcom/google/android/gms/internal/zzahn;->zzdaw:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzxu;->zzcjm:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method protected abstract zznc()V
.end method

.method public final synthetic zznd()Ljava/lang/Object;
    .locals 6

    const-string v0, "Webview render task needs to be called on UI thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzbq;->zzge(Ljava/lang/String;)V

    new-instance v0, Lcom/google/android/gms/internal/zzxv;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/zzxv;-><init>(Lcom/google/android/gms/internal/zzxu;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzxu;->zzcjm:Ljava/lang/Runnable;

    sget-object v1, Lcom/google/android/gms/internal/zzahn;->zzdaw:Landroid/os/Handler;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzxu;->zzcjm:Ljava/lang/Runnable;

    sget-object v0, Lcom/google/android/gms/internal/zznh;->zzbnj:Lcom/google/android/gms/internal/zzmx;

    invoke-static {}, Lcom/google/android/gms/internal/zzkb;->zzif()Lcom/google/android/gms/internal/zznf;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/google/android/gms/internal/zznf;->zzd(Lcom/google/android/gms/internal/zzmx;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzxu;->zznc()V

    const/4 v0, 0x0

    return-object v0
.end method

.method protected zzx(I)V
    .locals 43

    const/4 v2, -0x2

    move/from16 v0, p1

    if-eq v0, v2, :cond_0

    new-instance v2, Lcom/google/android/gms/internal/zzaax;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/gms/internal/zzxu;->zzcjl:Lcom/google/android/gms/internal/zzaax;

    iget-wide v4, v3, Lcom/google/android/gms/internal/zzaax;->zzcdq:J

    move/from16 v0, p1

    invoke-direct {v2, v0, v4, v5}, Lcom/google/android/gms/internal/zzaax;-><init>(IJ)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/google/android/gms/internal/zzxu;->zzcjl:Lcom/google/android/gms/internal/zzaax;

    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gms/internal/zzxu;->zzbyk:Lcom/google/android/gms/internal/zzanh;

    invoke-interface {v2}, Lcom/google/android/gms/internal/zzanh;->zzst()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gms/internal/zzxu;->zzcjj:Lcom/google/android/gms/internal/zzyb;

    move-object/from16 v42, v0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gms/internal/zzxu;->zzcjk:Lcom/google/android/gms/internal/zzafp;

    iget-object v6, v2, Lcom/google/android/gms/internal/zzafp;->zzcqv:Lcom/google/android/gms/internal/zzaat;

    new-instance v2, Lcom/google/android/gms/internal/zzafo;

    iget-object v3, v6, Lcom/google/android/gms/internal/zzaat;->zzcnd:Lcom/google/android/gms/internal/zzjj;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gms/internal/zzxu;->zzbyk:Lcom/google/android/gms/internal/zzanh;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/gms/internal/zzxu;->zzcjl:Lcom/google/android/gms/internal/zzaax;

    iget-object v5, v5, Lcom/google/android/gms/internal/zzaax;->zzcdk:Ljava/util/List;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/google/android/gms/internal/zzxu;->zzcjl:Lcom/google/android/gms/internal/zzaax;

    iget-object v7, v7, Lcom/google/android/gms/internal/zzaax;->zzcdl:Ljava/util/List;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/google/android/gms/internal/zzxu;->zzcjl:Lcom/google/android/gms/internal/zzaax;

    iget-object v8, v8, Lcom/google/android/gms/internal/zzaax;->zzcoy:Ljava/util/List;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/google/android/gms/internal/zzxu;->zzcjl:Lcom/google/android/gms/internal/zzaax;

    iget v9, v9, Lcom/google/android/gms/internal/zzaax;->orientation:I

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/google/android/gms/internal/zzxu;->zzcjl:Lcom/google/android/gms/internal/zzaax;

    iget-wide v10, v10, Lcom/google/android/gms/internal/zzaax;->zzcdq:J

    iget-object v12, v6, Lcom/google/android/gms/internal/zzaat;->zzcng:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/gms/internal/zzxu;->zzcjl:Lcom/google/android/gms/internal/zzaax;

    iget-boolean v13, v6, Lcom/google/android/gms/internal/zzaax;->zzcow:Z

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/gms/internal/zzxu;->zzcjl:Lcom/google/android/gms/internal/zzaax;

    iget-wide v0, v6, Lcom/google/android/gms/internal/zzaax;->zzcox:J

    move-wide/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/gms/internal/zzxu;->zzcjk:Lcom/google/android/gms/internal/zzafp;

    iget-object v0, v6, Lcom/google/android/gms/internal/zzafp;->zzauc:Lcom/google/android/gms/internal/zzjn;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/gms/internal/zzxu;->zzcjl:Lcom/google/android/gms/internal/zzaax;

    iget-wide v0, v6, Lcom/google/android/gms/internal/zzaax;->zzcov:J

    move-wide/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/gms/internal/zzxu;->zzcjk:Lcom/google/android/gms/internal/zzafp;

    iget-wide v0, v6, Lcom/google/android/gms/internal/zzafp;->zzcxp:J

    move-wide/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/gms/internal/zzxu;->zzcjl:Lcom/google/android/gms/internal/zzaax;

    iget-wide v0, v6, Lcom/google/android/gms/internal/zzaax;->zzcpa:J

    move-wide/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/gms/internal/zzxu;->zzcjl:Lcom/google/android/gms/internal/zzaax;

    iget-object v0, v6, Lcom/google/android/gms/internal/zzaax;->zzcpb:Ljava/lang/String;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/gms/internal/zzxu;->zzcjk:Lcom/google/android/gms/internal/zzafp;

    iget-object v0, v6, Lcom/google/android/gms/internal/zzafp;->zzcxj:Lorg/json/JSONObject;

    move-object/from16 v29, v0

    const/16 v30, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/gms/internal/zzxu;->zzcjl:Lcom/google/android/gms/internal/zzaax;

    iget-object v0, v6, Lcom/google/android/gms/internal/zzaax;->zzcpl:Lcom/google/android/gms/internal/zzaeq;

    move-object/from16 v31, v0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/gms/internal/zzxu;->zzcjl:Lcom/google/android/gms/internal/zzaax;

    iget-object v0, v6, Lcom/google/android/gms/internal/zzaax;->zzcpm:Ljava/util/List;

    move-object/from16 v32, v0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/gms/internal/zzxu;->zzcjl:Lcom/google/android/gms/internal/zzaax;

    iget-object v0, v6, Lcom/google/android/gms/internal/zzaax;->zzcpn:Ljava/util/List;

    move-object/from16 v33, v0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/gms/internal/zzxu;->zzcjl:Lcom/google/android/gms/internal/zzaax;

    iget-boolean v0, v6, Lcom/google/android/gms/internal/zzaax;->zzcpo:Z

    move/from16 v34, v0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/gms/internal/zzxu;->zzcjl:Lcom/google/android/gms/internal/zzaax;

    iget-object v0, v6, Lcom/google/android/gms/internal/zzaax;->zzcpp:Lcom/google/android/gms/internal/zzaaz;

    move-object/from16 v35, v0

    const/16 v36, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/gms/internal/zzxu;->zzcjl:Lcom/google/android/gms/internal/zzaax;

    iget-object v0, v6, Lcom/google/android/gms/internal/zzaax;->zzcdn:Ljava/util/List;

    move-object/from16 v37, v0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/gms/internal/zzxu;->zzcjl:Lcom/google/android/gms/internal/zzaax;

    iget-object v0, v6, Lcom/google/android/gms/internal/zzaax;->zzcps:Ljava/lang/String;

    move-object/from16 v38, v0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/gms/internal/zzxu;->zzcjk:Lcom/google/android/gms/internal/zzafp;

    iget-object v0, v6, Lcom/google/android/gms/internal/zzafp;->zzcxw:Lcom/google/android/gms/internal/zzis;

    move-object/from16 v39, v0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/gms/internal/zzxu;->zzcjk:Lcom/google/android/gms/internal/zzafp;

    iget-object v6, v6, Lcom/google/android/gms/internal/zzafp;->zzcxy:Lcom/google/android/gms/internal/zzaax;

    iget-boolean v0, v6, Lcom/google/android/gms/internal/zzaax;->zzaqv:Z

    move/from16 v40, v0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/gms/internal/zzxu;->zzcjk:Lcom/google/android/gms/internal/zzafp;

    iget-boolean v0, v6, Lcom/google/android/gms/internal/zzafp;->zzcxx:Z

    move/from16 v41, v0

    move/from16 v6, p1

    invoke-direct/range {v2 .. v41}, Lcom/google/android/gms/internal/zzafo;-><init>(Lcom/google/android/gms/internal/zzjj;Lcom/google/android/gms/internal/zzanh;Ljava/util/List;ILjava/util/List;Ljava/util/List;IJLjava/lang/String;ZLcom/google/android/gms/internal/zzuh;Lcom/google/android/gms/internal/zzva;Ljava/lang/String;Lcom/google/android/gms/internal/zzui;Lcom/google/android/gms/internal/zzuk;JLcom/google/android/gms/internal/zzjn;JJJLjava/lang/String;Lorg/json/JSONObject;Lcom/google/android/gms/internal/zzou;Lcom/google/android/gms/internal/zzaeq;Ljava/util/List;Ljava/util/List;ZLcom/google/android/gms/internal/zzaaz;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Lcom/google/android/gms/internal/zzis;ZZ)V

    move-object/from16 v0, v42

    invoke-interface {v0, v2}, Lcom/google/android/gms/internal/zzyb;->zzb(Lcom/google/android/gms/internal/zzafo;)V

    return-void
.end method
