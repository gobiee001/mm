.class public final Lcom/google/android/gms/internal/zzzy;
.super Lcom/google/android/gms/internal/zzagb;

# interfaces
.implements Lcom/google/android/gms/internal/zzaal;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzzv;
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private zzcef:Lcom/google/android/gms/internal/zzui;

.field private zzcey:Lcom/google/android/gms/internal/zzaat;

.field private zzcjl:Lcom/google/android/gms/internal/zzaax;

.field private zzcjm:Ljava/lang/Runnable;

.field private final zzcjn:Ljava/lang/Object;

.field private final zzcmm:Lcom/google/android/gms/internal/zzzx;

.field private final zzcmn:Lcom/google/android/gms/internal/zzaau;

.field private final zzcmo:Lcom/google/android/gms/internal/zzis;

.field private final zzcmp:Lcom/google/android/gms/internal/zzix;

.field zzcmq:Lcom/google/android/gms/internal/zzaif;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/zzaau;Lcom/google/android/gms/internal/zzzx;Lcom/google/android/gms/internal/zzix;)V
    .locals 4

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzagb;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzzy;->zzcjn:Ljava/lang/Object;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzzy;->zzcmm:Lcom/google/android/gms/internal/zzzx;

    iput-object p1, p0, Lcom/google/android/gms/internal/zzzy;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzzy;->zzcmn:Lcom/google/android/gms/internal/zzaau;

    iput-object p4, p0, Lcom/google/android/gms/internal/zzzy;->zzcmp:Lcom/google/android/gms/internal/zzix;

    new-instance v1, Lcom/google/android/gms/internal/zzis;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzzy;->zzcmp:Lcom/google/android/gms/internal/zzix;

    sget-object v0, Lcom/google/android/gms/internal/zznh;->zzbrf:Lcom/google/android/gms/internal/zzmx;

    invoke-static {}, Lcom/google/android/gms/internal/zzkb;->zzif()Lcom/google/android/gms/internal/zznf;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/google/android/gms/internal/zznf;->zzd(Lcom/google/android/gms/internal/zzmx;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-direct {v1, v2, v0}, Lcom/google/android/gms/internal/zzis;-><init>(Lcom/google/android/gms/internal/zzix;Z)V

    iput-object v1, p0, Lcom/google/android/gms/internal/zzzy;->zzcmo:Lcom/google/android/gms/internal/zzis;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzzy;->zzcmo:Lcom/google/android/gms/internal/zzis;

    new-instance v1, Lcom/google/android/gms/internal/zzzz;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/zzzz;-><init>(Lcom/google/android/gms/internal/zzzy;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzis;->zza(Lcom/google/android/gms/internal/zzit;)V

    new-instance v1, Lcom/google/android/gms/internal/zzjd;

    invoke-direct {v1}, Lcom/google/android/gms/internal/zzjd;-><init>()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzzy;->zzcmn:Lcom/google/android/gms/internal/zzaau;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzaau;->zzaty:Lcom/google/android/gms/internal/zzakd;

    iget v0, v0, Lcom/google/android/gms/internal/zzakd;->zzdej:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, v1, Lcom/google/android/gms/internal/zzjd;->zzbda:Ljava/lang/Integer;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzzy;->zzcmn:Lcom/google/android/gms/internal/zzaau;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzaau;->zzaty:Lcom/google/android/gms/internal/zzakd;

    iget v0, v0, Lcom/google/android/gms/internal/zzakd;->zzdek:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, v1, Lcom/google/android/gms/internal/zzjd;->zzbdb:Ljava/lang/Integer;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzzy;->zzcmn:Lcom/google/android/gms/internal/zzaau;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzaau;->zzaty:Lcom/google/android/gms/internal/zzakd;

    iget-boolean v0, v0, Lcom/google/android/gms/internal/zzakd;->zzdel:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, v1, Lcom/google/android/gms/internal/zzjd;->zzbdc:Ljava/lang/Integer;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzzy;->zzcmo:Lcom/google/android/gms/internal/zzis;

    new-instance v2, Lcom/google/android/gms/internal/zzaaa;

    invoke-direct {v2, v1}, Lcom/google/android/gms/internal/zzaaa;-><init>(Lcom/google/android/gms/internal/zzjd;)V

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/zzis;->zza(Lcom/google/android/gms/internal/zzit;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzzy;->zzcmn:Lcom/google/android/gms/internal/zzaau;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzaau;->zzcne:Landroid/content/pm/PackageInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzzy;->zzcmo:Lcom/google/android/gms/internal/zzis;

    new-instance v1, Lcom/google/android/gms/internal/zzaab;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/zzaab;-><init>(Lcom/google/android/gms/internal/zzzy;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzis;->zza(Lcom/google/android/gms/internal/zzit;)V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzzy;->zzcmn:Lcom/google/android/gms/internal/zzaau;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzaau;->zzauc:Lcom/google/android/gms/internal/zzjn;

    iget-boolean v1, v0, Lcom/google/android/gms/internal/zzjn;->zzbel:Z

    if-eqz v1, :cond_2

    const-string v1, "interstitial_mb"

    iget-object v2, v0, Lcom/google/android/gms/internal/zzjn;->zzbek:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzzy;->zzcmo:Lcom/google/android/gms/internal/zzis;

    sget-object v1, Lcom/google/android/gms/internal/zzaac;->zzcmt:Lcom/google/android/gms/internal/zzit;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzis;->zza(Lcom/google/android/gms/internal/zzit;)V

    :goto_1
    iget-object v0, p0, Lcom/google/android/gms/internal/zzzy;->zzcmo:Lcom/google/android/gms/internal/zzis;

    sget-object v1, Lcom/google/android/gms/internal/zziu$zza$zzb;->zzbbm:Lcom/google/android/gms/internal/zziu$zza$zzb;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzis;->zza(Lcom/google/android/gms/internal/zziu$zza$zzb;)V

    return-void

    :cond_1
    const/4 v0, 0x2

    goto :goto_0

    :cond_2
    iget-boolean v1, v0, Lcom/google/android/gms/internal/zzjn;->zzbel:Z

    if-eqz v1, :cond_3

    const-string v1, "reward_mb"

    iget-object v2, v0, Lcom/google/android/gms/internal/zzjn;->zzbek:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzzy;->zzcmo:Lcom/google/android/gms/internal/zzis;

    sget-object v1, Lcom/google/android/gms/internal/zzaad;->zzcmt:Lcom/google/android/gms/internal/zzit;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzis;->zza(Lcom/google/android/gms/internal/zzit;)V

    goto :goto_1

    :cond_3
    iget-boolean v1, v0, Lcom/google/android/gms/internal/zzjn;->zzben:Z

    if-nez v1, :cond_4

    iget-boolean v0, v0, Lcom/google/android/gms/internal/zzjn;->zzbel:Z

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/google/android/gms/internal/zzzy;->zzcmo:Lcom/google/android/gms/internal/zzis;

    sget-object v1, Lcom/google/android/gms/internal/zzaae;->zzcmt:Lcom/google/android/gms/internal/zzit;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzis;->zza(Lcom/google/android/gms/internal/zzit;)V

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lcom/google/android/gms/internal/zzzy;->zzcmo:Lcom/google/android/gms/internal/zzis;

    sget-object v1, Lcom/google/android/gms/internal/zzaaf;->zzcmt:Lcom/google/android/gms/internal/zzit;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzis;->zza(Lcom/google/android/gms/internal/zzit;)V

    goto :goto_1
.end method

.method private final zza(Lcom/google/android/gms/internal/zzaat;)Lcom/google/android/gms/internal/zzjn;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/zzaai;
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzzy;->zzcey:Lcom/google/android/gms/internal/zzaat;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzzy;->zzcey:Lcom/google/android/gms/internal/zzaat;

    iget-object v1, v1, Lcom/google/android/gms/internal/zzaat;->zzaus:Ljava/util/List;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzzy;->zzcey:Lcom/google/android/gms/internal/zzaat;

    iget-object v1, v1, Lcom/google/android/gms/internal/zzaat;->zzaus:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-le v1, v0, :cond_0

    :goto_0
    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzzy;->zzcef:Lcom/google/android/gms/internal/zzui;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzzy;->zzcef:Lcom/google/android/gms/internal/zzui;

    iget-boolean v0, v0, Lcom/google/android/gms/internal/zzui;->zzcea:Z

    if-nez v0, :cond_1

    const/4 v0, 0x0

    :goto_1
    return-object v0

    :cond_0
    move v0, v3

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/zzzy;->zzcjl:Lcom/google/android/gms/internal/zzaax;

    iget-boolean v0, v0, Lcom/google/android/gms/internal/zzaax;->zzbeo:Z

    if-eqz v0, :cond_3

    iget-object v0, p1, Lcom/google/android/gms/internal/zzaat;->zzauc:Lcom/google/android/gms/internal/zzjn;

    iget-object v1, v0, Lcom/google/android/gms/internal/zzjn;->zzbem:[Lcom/google/android/gms/internal/zzjn;

    array-length v2, v1

    move v0, v3

    :goto_2
    if-ge v0, v2, :cond_3

    aget-object v4, v1, v0

    iget-boolean v5, v4, Lcom/google/android/gms/internal/zzjn;->zzbeo:Z

    if-eqz v5, :cond_2

    new-instance v0, Lcom/google/android/gms/internal/zzjn;

    iget-object v1, p1, Lcom/google/android/gms/internal/zzaat;->zzauc:Lcom/google/android/gms/internal/zzjn;

    iget-object v1, v1, Lcom/google/android/gms/internal/zzjn;->zzbem:[Lcom/google/android/gms/internal/zzjn;

    invoke-direct {v0, v4, v1}, Lcom/google/android/gms/internal/zzjn;-><init>(Lcom/google/android/gms/internal/zzjn;[Lcom/google/android/gms/internal/zzjn;)V

    goto :goto_1

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/internal/zzzy;->zzcjl:Lcom/google/android/gms/internal/zzaax;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzaax;->zzcoz:Ljava/lang/String;

    if-nez v0, :cond_4

    new-instance v0, Lcom/google/android/gms/internal/zzaai;

    const-string v1, "The ad response must specify one of the supported ad sizes."

    invoke-direct {v0, v1, v3}, Lcom/google/android/gms/internal/zzaai;-><init>(Ljava/lang/String;I)V

    throw v0

    :cond_4
    iget-object v0, p0, Lcom/google/android/gms/internal/zzzy;->zzcjl:Lcom/google/android/gms/internal/zzaax;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzaax;->zzcoz:Ljava/lang/String;

    const-string v1, "x"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x2

    if-eq v1, v2, :cond_6

    new-instance v1, Lcom/google/android/gms/internal/zzaai;

    const-string v2, "Invalid ad size format from the ad response: "

    iget-object v0, p0, Lcom/google/android/gms/internal/zzzy;->zzcjl:Lcom/google/android/gms/internal/zzaax;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzaax;->zzcoz:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_5

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_3
    invoke-direct {v1, v0, v3}, Lcom/google/android/gms/internal/zzaai;-><init>(Ljava/lang/String;I)V

    throw v1

    :cond_5
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_3

    :cond_6
    const/4 v1, 0x0

    :try_start_0
    aget-object v1, v0, v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    const/4 v1, 0x1

    aget-object v0, v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    iget-object v0, p1, Lcom/google/android/gms/internal/zzaat;->zzauc:Lcom/google/android/gms/internal/zzjn;

    iget-object v6, v0, Lcom/google/android/gms/internal/zzjn;->zzbem:[Lcom/google/android/gms/internal/zzjn;

    array-length v7, v6

    move v2, v3

    :goto_4
    if-ge v2, v7, :cond_b

    aget-object v8, v6, v2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzzy;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v1, v0, Landroid/util/DisplayMetrics;->density:F

    iget v0, v8, Lcom/google/android/gms/internal/zzjn;->width:I

    const/4 v9, -0x1

    if-ne v0, v9, :cond_8

    iget v0, v8, Lcom/google/android/gms/internal/zzjn;->widthPixels:I

    int-to-float v0, v0

    div-float/2addr v0, v1

    float-to-int v0, v0

    :goto_5
    iget v9, v8, Lcom/google/android/gms/internal/zzjn;->height:I

    const/4 v10, -0x2

    if-ne v9, v10, :cond_9

    iget v9, v8, Lcom/google/android/gms/internal/zzjn;->heightPixels:I

    int-to-float v9, v9

    div-float v1, v9, v1

    float-to-int v1, v1

    :goto_6
    if-ne v4, v0, :cond_a

    if-ne v5, v1, :cond_a

    iget-boolean v0, v8, Lcom/google/android/gms/internal/zzjn;->zzbeo:Z

    if-nez v0, :cond_a

    new-instance v0, Lcom/google/android/gms/internal/zzjn;

    iget-object v1, p1, Lcom/google/android/gms/internal/zzaat;->zzauc:Lcom/google/android/gms/internal/zzjn;

    iget-object v1, v1, Lcom/google/android/gms/internal/zzjn;->zzbem:[Lcom/google/android/gms/internal/zzjn;

    invoke-direct {v0, v8, v1}, Lcom/google/android/gms/internal/zzjn;-><init>(Lcom/google/android/gms/internal/zzjn;[Lcom/google/android/gms/internal/zzjn;)V

    goto/16 :goto_1

    :catch_0
    move-exception v0

    new-instance v1, Lcom/google/android/gms/internal/zzaai;

    const-string v2, "Invalid ad size number from the ad response: "

    iget-object v0, p0, Lcom/google/android/gms/internal/zzzy;->zzcjl:Lcom/google/android/gms/internal/zzaax;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzaax;->zzcoz:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_7

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_7
    invoke-direct {v1, v0, v3}, Lcom/google/android/gms/internal/zzaai;-><init>(Ljava/lang/String;I)V

    throw v1

    :cond_7
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_7

    :cond_8
    iget v0, v8, Lcom/google/android/gms/internal/zzjn;->width:I

    goto :goto_5

    :cond_9
    iget v1, v8, Lcom/google/android/gms/internal/zzjn;->height:I

    goto :goto_6

    :cond_a
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_4

    :cond_b
    new-instance v1, Lcom/google/android/gms/internal/zzaai;

    const-string v2, "The ad size from the ad response was not one of the requested sizes: "

    iget-object v0, p0, Lcom/google/android/gms/internal/zzzy;->zzcjl:Lcom/google/android/gms/internal/zzaax;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzaax;->zzcoz:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_c

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_8
    invoke-direct {v1, v0, v3}, Lcom/google/android/gms/internal/zzaai;-><init>(Ljava/lang/String;I)V

    throw v1

    :cond_c
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_8
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzzy;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzzy;->zzcjn:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzzy;ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/zzzy;->zzc(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic zzb(Lcom/google/android/gms/internal/zzzy;)Lcom/google/android/gms/internal/zzaau;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzzy;->zzcmn:Lcom/google/android/gms/internal/zzaau;

    return-object v0
.end method

.method static synthetic zzc(Lcom/google/android/gms/internal/zzzy;)Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzzy;->zzcjm:Ljava/lang/Runnable;

    return-object v0
.end method

.method private final zzc(ILjava/lang/String;)V
    .locals 13

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    const/4 v0, -0x1

    if-ne p1, v0, :cond_1

    :cond_0
    invoke-static {p2}, Lcom/google/android/gms/internal/zzagf;->zzct(Ljava/lang/String;)V

    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzzy;->zzcjl:Lcom/google/android/gms/internal/zzaax;

    if-nez v0, :cond_2

    new-instance v0, Lcom/google/android/gms/internal/zzaax;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/zzaax;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzzy;->zzcjl:Lcom/google/android/gms/internal/zzaax;

    :goto_1
    iget-object v0, p0, Lcom/google/android/gms/internal/zzzy;->zzcey:Lcom/google/android/gms/internal/zzaat;

    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/google/android/gms/internal/zzzy;->zzcey:Lcom/google/android/gms/internal/zzaat;

    :goto_2
    new-instance v0, Lcom/google/android/gms/internal/zzafp;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzzy;->zzcjl:Lcom/google/android/gms/internal/zzaax;

    iget-object v3, p0, Lcom/google/android/gms/internal/zzzy;->zzcef:Lcom/google/android/gms/internal/zzui;

    const/4 v4, 0x0

    const-wide/16 v6, -0x1

    iget-object v5, p0, Lcom/google/android/gms/internal/zzzy;->zzcjl:Lcom/google/android/gms/internal/zzaax;

    iget-wide v8, v5, Lcom/google/android/gms/internal/zzaax;->zzcpa:J

    const/4 v10, 0x0

    iget-object v11, p0, Lcom/google/android/gms/internal/zzzy;->zzcmo:Lcom/google/android/gms/internal/zzis;

    const/4 v12, 0x0

    move v5, p1

    invoke-direct/range {v0 .. v12}, Lcom/google/android/gms/internal/zzafp;-><init>(Lcom/google/android/gms/internal/zzaat;Lcom/google/android/gms/internal/zzaax;Lcom/google/android/gms/internal/zzui;Lcom/google/android/gms/internal/zzjn;IJJLorg/json/JSONObject;Lcom/google/android/gms/internal/zzis;Ljava/lang/Boolean;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/zzzy;->zzcmm:Lcom/google/android/gms/internal/zzzx;

    invoke-interface {v1, v0}, Lcom/google/android/gms/internal/zzzx;->zza(Lcom/google/android/gms/internal/zzafp;)V

    return-void

    :cond_1
    invoke-static {p2}, Lcom/google/android/gms/internal/zzagf;->zzcu(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    new-instance v0, Lcom/google/android/gms/internal/zzaax;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzzy;->zzcjl:Lcom/google/android/gms/internal/zzaax;

    iget-wide v2, v1, Lcom/google/android/gms/internal/zzaax;->zzcdq:J

    invoke-direct {v0, p1, v2, v3}, Lcom/google/android/gms/internal/zzaax;-><init>(IJ)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzzy;->zzcjl:Lcom/google/android/gms/internal/zzaax;

    goto :goto_1

    :cond_3
    new-instance v0, Lcom/google/android/gms/internal/zzaat;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzzy;->zzcmn:Lcom/google/android/gms/internal/zzaau;

    const-wide/16 v2, -0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/internal/zzaat;-><init>(Lcom/google/android/gms/internal/zzaau;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object v1, v0

    goto :goto_2
.end method


# virtual methods
.method public final onStop()V
    .locals 2

    iget-object v1, p0, Lcom/google/android/gms/internal/zzzy;->zzcjn:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzzy;->zzcmq:Lcom/google/android/gms/internal/zzaif;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzzy;->zzcmq:Lcom/google/android/gms/internal/zzaif;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzaif;->cancel()V

    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method final zza(Lcom/google/android/gms/internal/zzakd;Lcom/google/android/gms/internal/zzalh;)Lcom/google/android/gms/internal/zzaif;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzakd;",
            "Lcom/google/android/gms/internal/zzalh",
            "<",
            "Lcom/google/android/gms/internal/zzaat;",
            ">;)",
            "Lcom/google/android/gms/internal/zzaif;"
        }
    .end annotation

    iget-object v1, p0, Lcom/google/android/gms/internal/zzzy;->mContext:Landroid/content/Context;

    new-instance v0, Lcom/google/android/gms/internal/zzaak;

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/zzaak;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/zzaam;->zza(Lcom/google/android/gms/internal/zzakd;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Fetching ad response from local ad request service."

    invoke-static {v0}, Lcom/google/android/gms/internal/zzagf;->zzbx(Ljava/lang/String;)V

    new-instance v0, Lcom/google/android/gms/internal/zzaaq;

    invoke-direct {v0, v1, p2, p0}, Lcom/google/android/gms/internal/zzaaq;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/zzalh;Lcom/google/android/gms/internal/zzaal;)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzaan;->zznd()Ljava/lang/Object;

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "Fetching ad response from remote ad request service."

    invoke-static {v0}, Lcom/google/android/gms/internal/zzagf;->zzbx(Ljava/lang/String;)V

    invoke-static {}, Lcom/google/android/gms/internal/zzkb;->zzia()Lcom/google/android/gms/internal/zzajr;

    invoke-static {v1}, Lcom/google/android/gms/internal/zzajr;->zzbe(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "Failed to connect to remote ad request service."

    invoke-static {v0}, Lcom/google/android/gms/internal/zzagf;->zzcu(Ljava/lang/String;)V

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/google/android/gms/internal/zzaar;

    invoke-direct {v0, v1, p1, p2, p0}, Lcom/google/android/gms/internal/zzaar;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/zzakd;Lcom/google/android/gms/internal/zzalh;Lcom/google/android/gms/internal/zzaal;)V

    goto :goto_0
.end method

.method public final zza(Lcom/google/android/gms/internal/zzaax;)V
    .locals 13

    const/4 v5, -0x2

    const/4 v10, -0x3

    const/4 v9, 0x1

    const/4 v1, 0x0

    const/4 v8, 0x0

    const-string v0, "Received ad response."

    invoke-static {v0}, Lcom/google/android/gms/internal/zzagf;->zzbx(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzzy;->zzcjl:Lcom/google/android/gms/internal/zzaax;

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbs;->zzeo()Lcom/google/android/gms/common/util/zzd;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/common/util/zzd;->elapsedRealtime()J

    move-result-wide v6

    iget-object v2, p0, Lcom/google/android/gms/internal/zzzy;->zzcjn:Ljava/lang/Object;

    monitor-enter v2

    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lcom/google/android/gms/internal/zzzy;->zzcmq:Lcom/google/android/gms/internal/zzaif;

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbs;->zzem()Lcom/google/android/gms/internal/zzaft;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/gms/internal/zzzy;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/google/android/gms/internal/zzzy;->zzcjl:Lcom/google/android/gms/internal/zzaax;

    iget-boolean v3, v3, Lcom/google/android/gms/internal/zzaax;->zzcnz:Z

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/internal/zzaft;->zzg(Landroid/content/Context;Z)Ljava/util/concurrent/Future;

    sget-object v0, Lcom/google/android/gms/internal/zznh;->zzblu:Lcom/google/android/gms/internal/zzmx;

    invoke-static {}, Lcom/google/android/gms/internal/zzkb;->zzif()Lcom/google/android/gms/internal/zznf;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/zznf;->zzd(Lcom/google/android/gms/internal/zzmx;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzzy;->zzcjl:Lcom/google/android/gms/internal/zzaax;

    iget-boolean v0, v0, Lcom/google/android/gms/internal/zzaax;->zzcol:Z

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbs;->zzem()Lcom/google/android/gms/internal/zzaft;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzzy;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzzy;->zzcey:Lcom/google/android/gms/internal/zzaat;

    iget-object v2, v2, Lcom/google/android/gms/internal/zzaat;->zzatw:Ljava/lang/String;

    const-string v3, "admob"

    invoke-virtual {v0, v3, v8}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v3

    const-string v4, "never_pool_slots"

    invoke-interface {v0, v4, v3}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4, v3}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-interface {v4, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v2, "never_pool_slots"

    invoke-interface {v0, v2, v4}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_0
    :goto_0
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/zzzy;->zzcjl:Lcom/google/android/gms/internal/zzaax;

    iget v0, v0, Lcom/google/android/gms/internal/zzaax;->errorCode:I

    if-eq v0, v5, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzzy;->zzcjl:Lcom/google/android/gms/internal/zzaax;

    iget v0, v0, Lcom/google/android/gms/internal/zzaax;->errorCode:I

    if-eq v0, v10, :cond_2

    new-instance v0, Lcom/google/android/gms/internal/zzaai;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzzy;->zzcjl:Lcom/google/android/gms/internal/zzaax;

    iget v1, v1, Lcom/google/android/gms/internal/zzaax;->errorCode:I

    const/16 v2, 0x42

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "There was a problem getting an ad response. ErrorCode: "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/zzzy;->zzcjl:Lcom/google/android/gms/internal/zzaax;

    iget v2, v2, Lcom/google/android/gms/internal/zzaax;->errorCode:I

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/zzaai;-><init>(Ljava/lang/String;I)V

    throw v0
    :try_end_1
    .catch Lcom/google/android/gms/internal/zzaai; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzaai;->getErrorCode()I

    move-result v1

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzaai;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v1, v0}, Lcom/google/android/gms/internal/zzzy;->zzc(ILjava/lang/String;)V

    sget-object v0, Lcom/google/android/gms/internal/zzahn;->zzdaw:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzzy;->zzcjm:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :goto_1
    return-void

    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :cond_1
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbs;->zzem()Lcom/google/android/gms/internal/zzaft;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzzy;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzzy;->zzcey:Lcom/google/android/gms/internal/zzaat;

    iget-object v2, v2, Lcom/google/android/gms/internal/zzaat;->zzatw:Ljava/lang/String;

    const-string v3, "admob"

    invoke-virtual {v0, v3, v8}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v3

    const-string v4, "never_pool_slots"

    invoke-interface {v0, v4, v3}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4, v3}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-interface {v4, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v2, "never_pool_slots"

    invoke-interface {v0, v2, v4}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_0

    :cond_2
    :try_start_3
    iget-object v0, p0, Lcom/google/android/gms/internal/zzzy;->zzcjl:Lcom/google/android/gms/internal/zzaax;

    iget v0, v0, Lcom/google/android/gms/internal/zzaax;->errorCode:I

    if-eq v0, v10, :cond_4

    iget-object v0, p0, Lcom/google/android/gms/internal/zzzy;->zzcjl:Lcom/google/android/gms/internal/zzaax;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzaax;->body:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance v0, Lcom/google/android/gms/internal/zzaai;

    const-string v1, "No fill from ad server."

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/zzaai;-><init>(Ljava/lang/String;I)V

    throw v0

    :cond_3
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbs;->zzem()Lcom/google/android/gms/internal/zzaft;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/gms/internal/zzzy;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/google/android/gms/internal/zzzy;->zzcjl:Lcom/google/android/gms/internal/zzaax;

    iget-boolean v3, v3, Lcom/google/android/gms/internal/zzaax;->zzcnl:Z

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/internal/zzaft;->zzf(Landroid/content/Context;Z)Ljava/util/concurrent/Future;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzzy;->zzcjl:Lcom/google/android/gms/internal/zzaax;

    iget-boolean v0, v0, Lcom/google/android/gms/internal/zzaax;->zzcow:Z
    :try_end_3
    .catch Lcom/google/android/gms/internal/zzaai; {:try_start_3 .. :try_end_3} :catch_0

    if-eqz v0, :cond_8

    :try_start_4
    new-instance v0, Lcom/google/android/gms/internal/zzui;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzzy;->zzcjl:Lcom/google/android/gms/internal/zzaax;

    iget-object v2, v2, Lcom/google/android/gms/internal/zzaax;->body:Ljava/lang/String;

    invoke-direct {v0, v2}, Lcom/google/android/gms/internal/zzui;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzzy;->zzcef:Lcom/google/android/gms/internal/zzui;

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbs;->zzem()Lcom/google/android/gms/internal/zzaft;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/gms/internal/zzzy;->zzcef:Lcom/google/android/gms/internal/zzui;

    iget-boolean v2, v2, Lcom/google/android/gms/internal/zzui;->zzcdo:Z

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/zzaft;->zzz(Z)V
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Lcom/google/android/gms/internal/zzaai; {:try_start_4 .. :try_end_4} :catch_0

    :goto_2
    :try_start_5
    iget-object v0, p0, Lcom/google/android/gms/internal/zzzy;->zzcjl:Lcom/google/android/gms/internal/zzaax;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzaax;->zzcoa:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    sget-object v0, Lcom/google/android/gms/internal/zznh;->zzbqc:Lcom/google/android/gms/internal/zzmx;

    invoke-static {}, Lcom/google/android/gms/internal/zzkb;->zzif()Lcom/google/android/gms/internal/zznf;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/zznf;->zzd(Lcom/google/android/gms/internal/zzmx;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "Received cookie from server. Setting webview cookie in CookieManager."

    invoke-static {v0}, Lcom/google/android/gms/internal/zzagf;->zzbx(Ljava/lang/String;)V

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbs;->zzek()Lcom/google/android/gms/internal/zzaht;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/gms/internal/zzzy;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/zzaht;->zzay(Landroid/content/Context;)Landroid/webkit/CookieManager;

    move-result-object v0

    if-eqz v0, :cond_4

    const-string v2, "googleads.g.doubleclick.net"

    iget-object v3, p0, Lcom/google/android/gms/internal/zzzy;->zzcjl:Lcom/google/android/gms/internal/zzaax;

    iget-object v3, v3, Lcom/google/android/gms/internal/zzaax;->zzcoa:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/webkit/CookieManager;->setCookie(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    iget-object v0, p0, Lcom/google/android/gms/internal/zzzy;->zzcey:Lcom/google/android/gms/internal/zzaat;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzaat;->zzauc:Lcom/google/android/gms/internal/zzjn;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzjn;->zzbem:[Lcom/google/android/gms/internal/zzjn;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/google/android/gms/internal/zzzy;->zzcey:Lcom/google/android/gms/internal/zzaat;

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzzy;->zza(Lcom/google/android/gms/internal/zzaat;)Lcom/google/android/gms/internal/zzjn;
    :try_end_5
    .catch Lcom/google/android/gms/internal/zzaai; {:try_start_5 .. :try_end_5} :catch_0

    move-result-object v4

    :goto_3
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbs;->zzem()Lcom/google/android/gms/internal/zzaft;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/gms/internal/zzzy;->zzcjl:Lcom/google/android/gms/internal/zzaax;

    iget-boolean v2, v2, Lcom/google/android/gms/internal/zzaax;->zzcpg:Z

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/zzaft;->zzx(Z)V

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbs;->zzem()Lcom/google/android/gms/internal/zzaft;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/gms/internal/zzzy;->zzcjl:Lcom/google/android/gms/internal/zzaax;

    iget-boolean v2, v2, Lcom/google/android/gms/internal/zzaax;->zzcpt:Z

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/zzaft;->zzy(Z)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzzy;->zzcjl:Lcom/google/android/gms/internal/zzaax;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzaax;->zzcpe:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_9

    :try_start_6
    new-instance v0, Lorg/json/JSONObject;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzzy;->zzcjl:Lcom/google/android/gms/internal/zzaax;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzaax;->zzcpe:Ljava/lang/String;

    invoke-static {v0}, Lcom/newrelic/agent/android/instrumentation/JSONObjectInstrumentation;->init(Ljava/lang/String;)Lorg/json/JSONObject;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    move-result-object v10

    :goto_4
    iget-object v0, p0, Lcom/google/android/gms/internal/zzzy;->zzcjl:Lcom/google/android/gms/internal/zzaax;

    iget v0, v0, Lcom/google/android/gms/internal/zzaax;->zzcpv:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_5

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbs;->zzei()Lcom/google/android/gms/internal/zzahn;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzzy;->zzcey:Lcom/google/android/gms/internal/zzaat;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzaat;->zzcnd:Lcom/google/android/gms/internal/zzjj;

    invoke-static {v0, v9}, Lcom/google/android/gms/internal/zzahn;->zzb(Lcom/google/android/gms/internal/zzjj;Z)V

    :cond_5
    iget-object v0, p0, Lcom/google/android/gms/internal/zzzy;->zzcjl:Lcom/google/android/gms/internal/zzaax;

    iget v0, v0, Lcom/google/android/gms/internal/zzaax;->zzcpv:I

    if-ne v0, v9, :cond_6

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    :cond_6
    iget-object v0, p0, Lcom/google/android/gms/internal/zzzy;->zzcjl:Lcom/google/android/gms/internal/zzaax;

    iget v0, v0, Lcom/google/android/gms/internal/zzaax;->zzcpv:I

    if-nez v0, :cond_a

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbs;->zzei()Lcom/google/android/gms/internal/zzahn;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzzy;->zzcey:Lcom/google/android/gms/internal/zzaat;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzaat;->zzcnd:Lcom/google/android/gms/internal/zzjj;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzahn;->zzp(Lcom/google/android/gms/internal/zzjj;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    :goto_5
    new-instance v0, Lcom/google/android/gms/internal/zzafp;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzzy;->zzcey:Lcom/google/android/gms/internal/zzaat;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzzy;->zzcjl:Lcom/google/android/gms/internal/zzaax;

    iget-object v3, p0, Lcom/google/android/gms/internal/zzzy;->zzcef:Lcom/google/android/gms/internal/zzui;

    iget-object v8, p0, Lcom/google/android/gms/internal/zzzy;->zzcjl:Lcom/google/android/gms/internal/zzaax;

    iget-wide v8, v8, Lcom/google/android/gms/internal/zzaax;->zzcpa:J

    iget-object v11, p0, Lcom/google/android/gms/internal/zzzy;->zzcmo:Lcom/google/android/gms/internal/zzis;

    invoke-direct/range {v0 .. v12}, Lcom/google/android/gms/internal/zzafp;-><init>(Lcom/google/android/gms/internal/zzaat;Lcom/google/android/gms/internal/zzaax;Lcom/google/android/gms/internal/zzui;Lcom/google/android/gms/internal/zzjn;IJJLorg/json/JSONObject;Lcom/google/android/gms/internal/zzis;Ljava/lang/Boolean;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/zzzy;->zzcmm:Lcom/google/android/gms/internal/zzzx;

    invoke-interface {v1, v0}, Lcom/google/android/gms/internal/zzzx;->zza(Lcom/google/android/gms/internal/zzafp;)V

    sget-object v0, Lcom/google/android/gms/internal/zzahn;->zzdaw:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzzy;->zzcjm:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto/16 :goto_1

    :catch_1
    move-exception v0

    :try_start_7
    const-string v1, "Could not parse mediation config."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/zzagf;->zzb(Ljava/lang/String;Ljava/lang/Throwable;)V

    new-instance v1, Lcom/google/android/gms/internal/zzaai;

    const-string v2, "Could not parse mediation config: "

    iget-object v0, p0, Lcom/google/android/gms/internal/zzzy;->zzcjl:Lcom/google/android/gms/internal/zzaax;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzaax;->body:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_7

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_6
    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lcom/google/android/gms/internal/zzaai;-><init>(Ljava/lang/String;I)V

    throw v1

    :cond_7
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_6

    :cond_8
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbs;->zzem()Lcom/google/android/gms/internal/zzaft;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/gms/internal/zzzy;->zzcjl:Lcom/google/android/gms/internal/zzaax;

    iget-boolean v2, v2, Lcom/google/android/gms/internal/zzaax;->zzcdo:Z

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/zzaft;->zzz(Z)V
    :try_end_7
    .catch Lcom/google/android/gms/internal/zzaai; {:try_start_7 .. :try_end_7} :catch_0

    goto/16 :goto_2

    :catch_2
    move-exception v0

    const-string v2, "Error parsing the JSON for Active View."

    invoke-static {v2, v0}, Lcom/google/android/gms/internal/zzagf;->zzb(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_9
    move-object v10, v1

    goto/16 :goto_4

    :cond_a
    move-object v12, v1

    goto :goto_5

    :cond_b
    move-object v4, v1

    goto/16 :goto_3
.end method

.method final synthetic zzb(Lcom/google/android/gms/internal/zzjc;)V
    .locals 2

    iget-object v0, p1, Lcom/google/android/gms/internal/zzjc;->zzbcy:Lcom/google/android/gms/internal/zzjb;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzzy;->zzcmn:Lcom/google/android/gms/internal/zzaau;

    iget-object v1, v1, Lcom/google/android/gms/internal/zzaau;->zzcne:Landroid/content/pm/PackageInfo;

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    iput-object v1, v0, Lcom/google/android/gms/internal/zzjb;->zzbcu:Ljava/lang/String;

    return-void
.end method

.method final synthetic zzc(Lcom/google/android/gms/internal/zzjc;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzzy;->zzcmn:Lcom/google/android/gms/internal/zzaau;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzaau;->zzcnq:Ljava/lang/String;

    iput-object v0, p1, Lcom/google/android/gms/internal/zzjc;->zzbcw:Ljava/lang/String;

    return-void
.end method

.method public final zzdm()V
    .locals 8

    const/4 v4, 0x0

    const-string v0, "AdLoaderBackgroundTask started."

    invoke-static {v0}, Lcom/google/android/gms/internal/zzagf;->zzbx(Ljava/lang/String;)V

    new-instance v0, Lcom/google/android/gms/internal/zzaag;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/zzaag;-><init>(Lcom/google/android/gms/internal/zzzy;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzzy;->zzcjm:Ljava/lang/Runnable;

    sget-object v1, Lcom/google/android/gms/internal/zzahn;->zzdaw:Landroid/os/Handler;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzzy;->zzcjm:Ljava/lang/Runnable;

    sget-object v0, Lcom/google/android/gms/internal/zznh;->zzbni:Lcom/google/android/gms/internal/zzmx;

    invoke-static {}, Lcom/google/android/gms/internal/zzkb;->zzif()Lcom/google/android/gms/internal/zznf;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/google/android/gms/internal/zznf;->zzd(Lcom/google/android/gms/internal/zzmx;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-virtual {v1, v2, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbs;->zzeo()Lcom/google/android/gms/common/util/zzd;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/common/util/zzd;->elapsedRealtime()J

    move-result-wide v2

    sget-object v0, Lcom/google/android/gms/internal/zznh;->zzbng:Lcom/google/android/gms/internal/zzmx;

    invoke-static {}, Lcom/google/android/gms/internal/zzkb;->zzif()Lcom/google/android/gms/internal/zznf;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/zznf;->zzd(Lcom/google/android/gms/internal/zzmx;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzzy;->zzcmn:Lcom/google/android/gms/internal/zzaau;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzaau;->zzcnd:Lcom/google/android/gms/internal/zzjj;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzjj;->extras:Landroid/os/Bundle;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzzy;->zzcmn:Lcom/google/android/gms/internal/zzaau;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzaau;->zzcnd:Lcom/google/android/gms/internal/zzjj;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzjj;->extras:Landroid/os/Bundle;

    const-string v1, "_ad"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_0

    new-instance v0, Lcom/google/android/gms/internal/zzaat;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzzy;->zzcmn:Lcom/google/android/gms/internal/zzaau;

    move-object v5, v4

    move-object v6, v4

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/internal/zzaat;-><init>(Lcom/google/android/gms/internal/zzaau;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzzy;->zzcey:Lcom/google/android/gms/internal/zzaat;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzzy;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzzy;->zzcey:Lcom/google/android/gms/internal/zzaat;

    invoke-static {v0, v1, v7}, Lcom/google/android/gms/internal/zzacg;->zza(Landroid/content/Context;Lcom/google/android/gms/internal/zzaat;Ljava/lang/String;)Lcom/google/android/gms/internal/zzaax;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzzy;->zza(Lcom/google/android/gms/internal/zzaax;)V

    :goto_0
    return-void

    :cond_0
    new-instance v7, Lcom/google/android/gms/internal/zzall;

    invoke-direct {v7}, Lcom/google/android/gms/internal/zzall;-><init>()V

    new-instance v0, Lcom/google/android/gms/internal/zzaah;

    invoke-direct {v0, p0, v7}, Lcom/google/android/gms/internal/zzaah;-><init>(Lcom/google/android/gms/internal/zzzy;Lcom/google/android/gms/internal/zzalh;)V

    invoke-static {v0}, Lcom/google/android/gms/internal/zzahh;->zza(Ljava/lang/Runnable;)Lcom/google/android/gms/internal/zzakv;

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbs;->zzfd()Lcom/google/android/gms/internal/zzaff;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzzy;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzaff;->zzw(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbs;->zzfd()Lcom/google/android/gms/internal/zzaff;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzzy;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzaff;->zzx(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbs;->zzfd()Lcom/google/android/gms/internal/zzaff;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzzy;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzaff;->zzy(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbs;->zzfd()Lcom/google/android/gms/internal/zzaff;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzzy;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1, v6}, Lcom/google/android/gms/internal/zzaff;->zzg(Landroid/content/Context;Ljava/lang/String;)V

    new-instance v0, Lcom/google/android/gms/internal/zzaat;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzzy;->zzcmn:Lcom/google/android/gms/internal/zzaau;

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/internal/zzaat;-><init>(Lcom/google/android/gms/internal/zzaau;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzzy;->zzcey:Lcom/google/android/gms/internal/zzaat;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzzy;->zzcey:Lcom/google/android/gms/internal/zzaat;

    invoke-interface {v7, v0}, Lcom/google/android/gms/internal/zzalh;->zzk(Ljava/lang/Object;)V

    goto :goto_0
.end method
