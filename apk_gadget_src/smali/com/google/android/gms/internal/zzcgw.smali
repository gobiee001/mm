.class final Lcom/google/android/gms/internal/zzcgw;
.super Ljava/lang/Object;


# instance fields
.field final mAppId:Ljava/lang/String;

.field final mName:Ljava/lang/String;

.field final zzizk:J

.field final zzizl:J

.field final zzizm:J

.field final zzizn:J

.field final zzizo:Ljava/lang/Long;

.field final zzizp:Ljava/lang/Long;

.field final zzizq:Ljava/lang/Boolean;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;JJJJLjava/lang/Long;Ljava/lang/Long;Ljava/lang/Boolean;)V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzbq;->zzgm(Ljava/lang/String;)Ljava/lang/String;

    invoke-static {p2}, Lcom/google/android/gms/common/internal/zzbq;->zzgm(Ljava/lang/String;)Ljava/lang/String;

    const-wide/16 v2, 0x0

    cmp-long v2, p3, v2

    if-ltz v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    invoke-static {v2}, Lcom/google/android/gms/common/internal/zzbq;->checkArgument(Z)V

    const-wide/16 v2, 0x0

    cmp-long v2, p5, v2

    if-ltz v2, :cond_1

    const/4 v2, 0x1

    :goto_1
    invoke-static {v2}, Lcom/google/android/gms/common/internal/zzbq;->checkArgument(Z)V

    const-wide/16 v2, 0x0

    cmp-long v2, p9, v2

    if-ltz v2, :cond_2

    const/4 v2, 0x1

    :goto_2
    invoke-static {v2}, Lcom/google/android/gms/common/internal/zzbq;->checkArgument(Z)V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzcgw;->mAppId:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzcgw;->mName:Ljava/lang/String;

    iput-wide p3, p0, Lcom/google/android/gms/internal/zzcgw;->zzizk:J

    iput-wide p5, p0, Lcom/google/android/gms/internal/zzcgw;->zzizl:J

    iput-wide p7, p0, Lcom/google/android/gms/internal/zzcgw;->zzizm:J

    iput-wide p9, p0, Lcom/google/android/gms/internal/zzcgw;->zzizn:J

    move-object/from16 v0, p11

    iput-object v0, p0, Lcom/google/android/gms/internal/zzcgw;->zzizo:Ljava/lang/Long;

    move-object/from16 v0, p12

    iput-object v0, p0, Lcom/google/android/gms/internal/zzcgw;->zzizp:Ljava/lang/Long;

    move-object/from16 v0, p13

    iput-object v0, p0, Lcom/google/android/gms/internal/zzcgw;->zzizq:Ljava/lang/Boolean;

    return-void

    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    goto :goto_2
.end method


# virtual methods
.method final zza(Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Boolean;)Lcom/google/android/gms/internal/zzcgw;
    .locals 15

    if-eqz p3, :cond_0

    invoke-virtual/range {p3 .. p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    const/16 p3, 0x0

    move-object/from16 v14, p3

    :goto_0
    new-instance v1, Lcom/google/android/gms/internal/zzcgw;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzcgw;->mAppId:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/gms/internal/zzcgw;->mName:Ljava/lang/String;

    iget-wide v4, p0, Lcom/google/android/gms/internal/zzcgw;->zzizk:J

    iget-wide v6, p0, Lcom/google/android/gms/internal/zzcgw;->zzizl:J

    iget-wide v8, p0, Lcom/google/android/gms/internal/zzcgw;->zzizm:J

    iget-wide v10, p0, Lcom/google/android/gms/internal/zzcgw;->zzizn:J

    move-object/from16 v12, p1

    move-object/from16 v13, p2

    invoke-direct/range {v1 .. v14}, Lcom/google/android/gms/internal/zzcgw;-><init>(Ljava/lang/String;Ljava/lang/String;JJJJLjava/lang/Long;Ljava/lang/Long;Ljava/lang/Boolean;)V

    return-object v1

    :cond_0
    move-object/from16 v14, p3

    goto :goto_0
.end method

.method final zzayw()Lcom/google/android/gms/internal/zzcgw;
    .locals 15

    const-wide/16 v8, 0x1

    new-instance v1, Lcom/google/android/gms/internal/zzcgw;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzcgw;->mAppId:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/gms/internal/zzcgw;->mName:Ljava/lang/String;

    iget-wide v4, p0, Lcom/google/android/gms/internal/zzcgw;->zzizk:J

    add-long/2addr v4, v8

    iget-wide v6, p0, Lcom/google/android/gms/internal/zzcgw;->zzizl:J

    add-long/2addr v6, v8

    iget-wide v8, p0, Lcom/google/android/gms/internal/zzcgw;->zzizm:J

    iget-wide v10, p0, Lcom/google/android/gms/internal/zzcgw;->zzizn:J

    iget-object v12, p0, Lcom/google/android/gms/internal/zzcgw;->zzizo:Ljava/lang/Long;

    iget-object v13, p0, Lcom/google/android/gms/internal/zzcgw;->zzizp:Ljava/lang/Long;

    iget-object v14, p0, Lcom/google/android/gms/internal/zzcgw;->zzizq:Ljava/lang/Boolean;

    invoke-direct/range {v1 .. v14}, Lcom/google/android/gms/internal/zzcgw;-><init>(Ljava/lang/String;Ljava/lang/String;JJJJLjava/lang/Long;Ljava/lang/Long;Ljava/lang/Boolean;)V

    return-object v1
.end method

.method final zzbb(J)Lcom/google/android/gms/internal/zzcgw;
    .locals 15

    new-instance v1, Lcom/google/android/gms/internal/zzcgw;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzcgw;->mAppId:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/gms/internal/zzcgw;->mName:Ljava/lang/String;

    iget-wide v4, p0, Lcom/google/android/gms/internal/zzcgw;->zzizk:J

    iget-wide v6, p0, Lcom/google/android/gms/internal/zzcgw;->zzizl:J

    iget-wide v10, p0, Lcom/google/android/gms/internal/zzcgw;->zzizn:J

    iget-object v12, p0, Lcom/google/android/gms/internal/zzcgw;->zzizo:Ljava/lang/Long;

    iget-object v13, p0, Lcom/google/android/gms/internal/zzcgw;->zzizp:Ljava/lang/Long;

    iget-object v14, p0, Lcom/google/android/gms/internal/zzcgw;->zzizq:Ljava/lang/Boolean;

    move-wide/from16 v8, p1

    invoke-direct/range {v1 .. v14}, Lcom/google/android/gms/internal/zzcgw;-><init>(Ljava/lang/String;Ljava/lang/String;JJJJLjava/lang/Long;Ljava/lang/Long;Ljava/lang/Boolean;)V

    return-object v1
.end method

.method final zzbc(J)Lcom/google/android/gms/internal/zzcgw;
    .locals 15

    new-instance v1, Lcom/google/android/gms/internal/zzcgw;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzcgw;->mAppId:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/gms/internal/zzcgw;->mName:Ljava/lang/String;

    iget-wide v4, p0, Lcom/google/android/gms/internal/zzcgw;->zzizk:J

    iget-wide v6, p0, Lcom/google/android/gms/internal/zzcgw;->zzizl:J

    iget-wide v8, p0, Lcom/google/android/gms/internal/zzcgw;->zzizm:J

    iget-object v12, p0, Lcom/google/android/gms/internal/zzcgw;->zzizo:Ljava/lang/Long;

    iget-object v13, p0, Lcom/google/android/gms/internal/zzcgw;->zzizp:Ljava/lang/Long;

    iget-object v14, p0, Lcom/google/android/gms/internal/zzcgw;->zzizq:Ljava/lang/Boolean;

    move-wide/from16 v10, p1

    invoke-direct/range {v1 .. v14}, Lcom/google/android/gms/internal/zzcgw;-><init>(Ljava/lang/String;Ljava/lang/String;JJJJLjava/lang/Long;Ljava/lang/Long;Ljava/lang/Boolean;)V

    return-object v1
.end method
