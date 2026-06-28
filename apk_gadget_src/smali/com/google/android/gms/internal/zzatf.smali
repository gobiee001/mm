.class public final Lcom/google/android/gms/internal/zzatf;
.super Ljava/lang/Object;


# instance fields
.field private zzear:Lcom/google/android/gms/internal/zzass;

.field private zzeas:J

.field private zzeat:I

.field private zzeau:Lcom/google/android/gms/internal/zzasp;

.field private zzeav:Z

.field private zzeaw:I

.field private zzeax:I


# direct methods
.method public constructor <init>()V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, -0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/google/android/gms/internal/zzatf;->zzeas:J

    iput v2, p0, Lcom/google/android/gms/internal/zzatf;->zzeat:I

    iput v2, p0, Lcom/google/android/gms/internal/zzatf;->zzeaw:I

    iput-boolean v3, p0, Lcom/google/android/gms/internal/zzatf;->zzeav:Z

    iput v3, p0, Lcom/google/android/gms/internal/zzatf;->zzeax:I

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/zzasp;)Lcom/google/android/gms/internal/zzatf;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzatf;->zzeau:Lcom/google/android/gms/internal/zzasp;

    return-object p0
.end method

.method public final zza(Lcom/google/android/gms/internal/zzass;)Lcom/google/android/gms/internal/zzatf;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzatf;->zzear:Lcom/google/android/gms/internal/zzass;

    return-object p0
.end method

.method public final zzaan()Lcom/google/android/gms/internal/zzate;
    .locals 10

    new-instance v0, Lcom/google/android/gms/internal/zzate;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzatf;->zzear:Lcom/google/android/gms/internal/zzass;

    iget-wide v2, p0, Lcom/google/android/gms/internal/zzatf;->zzeas:J

    iget v4, p0, Lcom/google/android/gms/internal/zzatf;->zzeat:I

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/google/android/gms/internal/zzatf;->zzeau:Lcom/google/android/gms/internal/zzasp;

    iget-boolean v7, p0, Lcom/google/android/gms/internal/zzatf;->zzeav:Z

    iget v8, p0, Lcom/google/android/gms/internal/zzatf;->zzeaw:I

    iget v9, p0, Lcom/google/android/gms/internal/zzatf;->zzeax:I

    invoke-direct/range {v0 .. v9}, Lcom/google/android/gms/internal/zzate;-><init>(Lcom/google/android/gms/internal/zzass;JILjava/lang/String;Lcom/google/android/gms/internal/zzasp;ZII)V

    return-object v0
.end method

.method public final zzao(Z)Lcom/google/android/gms/internal/zzatf;
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/gms/internal/zzatf;->zzeav:Z

    return-object p0
.end method

.method public final zzay(I)Lcom/google/android/gms/internal/zzatf;
    .locals 0

    iput p1, p0, Lcom/google/android/gms/internal/zzatf;->zzeat:I

    return-object p0
.end method

.method public final zzaz(I)Lcom/google/android/gms/internal/zzatf;
    .locals 0

    iput p1, p0, Lcom/google/android/gms/internal/zzatf;->zzeax:I

    return-object p0
.end method

.method public final zzv(J)Lcom/google/android/gms/internal/zzatf;
    .locals 1

    iput-wide p1, p0, Lcom/google/android/gms/internal/zzatf;->zzeas:J

    return-object p0
.end method
