.class public final Lcom/google/android/gms/internal/zzjk;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzzv;
.end annotation


# instance fields
.field private mExtras:Landroid/os/Bundle;

.field private zzamr:Z

.field private zzbdv:J

.field private zzbdw:I

.field private zzbdx:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private zzbdy:Z

.field private zzbdz:I

.field private zzbea:Ljava/lang/String;

.field private zzbeb:Lcom/google/android/gms/internal/zzmn;

.field private zzbec:Ljava/lang/String;

.field private zzbed:Landroid/os/Bundle;

.field private zzbee:Landroid/os/Bundle;

.field private zzbef:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private zzbeg:Ljava/lang/String;

.field private zzbeh:Ljava/lang/String;

.field private zzbei:Z

.field private zzhl:Landroid/location/Location;


# direct methods
.method public constructor <init>()V
    .locals 5

    const/4 v4, -0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/google/android/gms/internal/zzjk;->zzbdv:J

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzjk;->mExtras:Landroid/os/Bundle;

    iput v4, p0, Lcom/google/android/gms/internal/zzjk;->zzbdw:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzjk;->zzbdx:Ljava/util/List;

    iput-boolean v3, p0, Lcom/google/android/gms/internal/zzjk;->zzbdy:Z

    iput v4, p0, Lcom/google/android/gms/internal/zzjk;->zzbdz:I

    iput-boolean v3, p0, Lcom/google/android/gms/internal/zzjk;->zzamr:Z

    iput-object v2, p0, Lcom/google/android/gms/internal/zzjk;->zzbea:Ljava/lang/String;

    iput-object v2, p0, Lcom/google/android/gms/internal/zzjk;->zzbeb:Lcom/google/android/gms/internal/zzmn;

    iput-object v2, p0, Lcom/google/android/gms/internal/zzjk;->zzhl:Landroid/location/Location;

    iput-object v2, p0, Lcom/google/android/gms/internal/zzjk;->zzbec:Ljava/lang/String;

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzjk;->zzbed:Landroid/os/Bundle;

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzjk;->zzbee:Landroid/os/Bundle;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzjk;->zzbef:Ljava/util/List;

    iput-object v2, p0, Lcom/google/android/gms/internal/zzjk;->zzbeg:Ljava/lang/String;

    iput-object v2, p0, Lcom/google/android/gms/internal/zzjk;->zzbeh:Ljava/lang/String;

    iput-boolean v3, p0, Lcom/google/android/gms/internal/zzjk;->zzbei:Z

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/zzjj;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-wide v0, p1, Lcom/google/android/gms/internal/zzjj;->zzbdf:J

    iput-wide v0, p0, Lcom/google/android/gms/internal/zzjk;->zzbdv:J

    iget-object v0, p1, Lcom/google/android/gms/internal/zzjj;->extras:Landroid/os/Bundle;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzjk;->mExtras:Landroid/os/Bundle;

    iget v0, p1, Lcom/google/android/gms/internal/zzjj;->zzbdg:I

    iput v0, p0, Lcom/google/android/gms/internal/zzjk;->zzbdw:I

    iget-object v0, p1, Lcom/google/android/gms/internal/zzjj;->zzbdh:Ljava/util/List;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzjk;->zzbdx:Ljava/util/List;

    iget-boolean v0, p1, Lcom/google/android/gms/internal/zzjj;->zzbdi:Z

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzjk;->zzbdy:Z

    iget v0, p1, Lcom/google/android/gms/internal/zzjj;->zzbdj:I

    iput v0, p0, Lcom/google/android/gms/internal/zzjk;->zzbdz:I

    iget-boolean v0, p1, Lcom/google/android/gms/internal/zzjj;->zzbdk:Z

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzjk;->zzamr:Z

    iget-object v0, p1, Lcom/google/android/gms/internal/zzjj;->zzbdl:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzjk;->zzbea:Ljava/lang/String;

    iget-object v0, p1, Lcom/google/android/gms/internal/zzjj;->zzbdm:Lcom/google/android/gms/internal/zzmn;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzjk;->zzbeb:Lcom/google/android/gms/internal/zzmn;

    iget-object v0, p1, Lcom/google/android/gms/internal/zzjj;->zzbdn:Landroid/location/Location;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzjk;->zzhl:Landroid/location/Location;

    iget-object v0, p1, Lcom/google/android/gms/internal/zzjj;->zzbdo:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzjk;->zzbec:Ljava/lang/String;

    iget-object v0, p1, Lcom/google/android/gms/internal/zzjj;->zzbdp:Landroid/os/Bundle;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzjk;->zzbed:Landroid/os/Bundle;

    iget-object v0, p1, Lcom/google/android/gms/internal/zzjj;->zzbdq:Landroid/os/Bundle;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzjk;->zzbee:Landroid/os/Bundle;

    iget-object v0, p1, Lcom/google/android/gms/internal/zzjj;->zzbdr:Ljava/util/List;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzjk;->zzbef:Ljava/util/List;

    iget-object v0, p1, Lcom/google/android/gms/internal/zzjj;->zzbds:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzjk;->zzbeg:Ljava/lang/String;

    iget-object v0, p1, Lcom/google/android/gms/internal/zzjj;->zzbdt:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzjk;->zzbeh:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final zza(Landroid/location/Location;)Lcom/google/android/gms/internal/zzjk;
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzjk;->zzhl:Landroid/location/Location;

    return-object p0
.end method

.method public final zzhr()Lcom/google/android/gms/internal/zzjj;
    .locals 22

    new-instance v2, Lcom/google/android/gms/internal/zzjj;

    const/4 v3, 0x7

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/google/android/gms/internal/zzjk;->zzbdv:J

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/gms/internal/zzjk;->mExtras:Landroid/os/Bundle;

    move-object/from16 v0, p0

    iget v7, v0, Lcom/google/android/gms/internal/zzjk;->zzbdw:I

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/google/android/gms/internal/zzjk;->zzbdx:Ljava/util/List;

    move-object/from16 v0, p0

    iget-boolean v9, v0, Lcom/google/android/gms/internal/zzjk;->zzbdy:Z

    move-object/from16 v0, p0

    iget v10, v0, Lcom/google/android/gms/internal/zzjk;->zzbdz:I

    move-object/from16 v0, p0

    iget-boolean v11, v0, Lcom/google/android/gms/internal/zzjk;->zzamr:Z

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/google/android/gms/internal/zzjk;->zzbea:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/android/gms/internal/zzjk;->zzbeb:Lcom/google/android/gms/internal/zzmn;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/android/gms/internal/zzjk;->zzhl:Landroid/location/Location;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/android/gms/internal/zzjk;->zzbec:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gms/internal/zzjk;->zzbed:Landroid/os/Bundle;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gms/internal/zzjk;->zzbee:Landroid/os/Bundle;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gms/internal/zzjk;->zzbef:Ljava/util/List;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gms/internal/zzjk;->zzbeg:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gms/internal/zzjk;->zzbeh:Ljava/lang/String;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-direct/range {v2 .. v21}, Lcom/google/android/gms/internal/zzjj;-><init>(IJLandroid/os/Bundle;ILjava/util/List;ZIZLjava/lang/String;Lcom/google/android/gms/internal/zzmn;Landroid/location/Location;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/Bundle;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Z)V

    return-object v2
.end method
