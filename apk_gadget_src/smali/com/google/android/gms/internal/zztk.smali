.class public final Lcom/google/android/gms/internal/zztk;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzzv;
.end annotation


# static fields
.field private static zzcae:Lcom/google/android/gms/internal/zztk;


# instance fields
.field private zzcaf:I

.field private zzcag:I

.field private zzcah:I

.field private zzcai:I

.field private zzcaj:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/zztk;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zztk;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zztk;->zzcae:Lcom/google/android/gms/internal/zztk;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static zzlc()Lcom/google/android/gms/internal/zztk;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/zztk;->zzcae:Lcom/google/android/gms/internal/zztk;

    return-object v0
.end method


# virtual methods
.method public final asBundle()Landroid/os/Bundle;
    .locals 3

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "ipl"

    iget v2, p0, Lcom/google/android/gms/internal/zztk;->zzcaf:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "ipds"

    iget v2, p0, Lcom/google/android/gms/internal/zztk;->zzcag:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "ipde"

    iget v2, p0, Lcom/google/android/gms/internal/zztk;->zzcah:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "iph"

    iget v2, p0, Lcom/google/android/gms/internal/zztk;->zzcai:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "ipm"

    iget v2, p0, Lcom/google/android/gms/internal/zztk;->zzcaj:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object v0
.end method

.method final zzld()V
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/zztk;->zzcag:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/zztk;->zzcag:I

    return-void
.end method

.method final zzle()V
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/zztk;->zzcah:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/zztk;->zzcah:I

    return-void
.end method

.method final zzlf()V
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/zztk;->zzcai:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/zztk;->zzcai:I

    return-void
.end method

.method final zzlg()V
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/zztk;->zzcaj:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/zztk;->zzcaj:I

    return-void
.end method

.method public final zzlh()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/zztk;->zzcag:I

    return v0
.end method

.method public final zzli()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/zztk;->zzcah:I

    return v0
.end method

.method public final zzlj()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/zztk;->zzcai:I

    return v0
.end method

.method public final zzlk()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/zztk;->zzcaj:I

    return v0
.end method

.method final zzu(I)V
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/zztk;->zzcaf:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/google/android/gms/internal/zztk;->zzcaf:I

    return-void
.end method
