.class final synthetic Lcom/google/android/gms/internal/zzbmu;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/zzbo;


# static fields
.field static final zzgnw:Lcom/google/android/gms/common/internal/zzbo;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/zzbmu;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzbmu;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zzbmu;->zzgnw:Lcom/google/android/gms/common/internal/zzbo;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zzb(Lcom/google/android/gms/common/api/Result;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Lcom/google/android/gms/drive/DriveApi$DriveIdResult;

    invoke-interface {p1}, Lcom/google/android/gms/drive/DriveApi$DriveIdResult;->getDriveId()Lcom/google/android/gms/drive/DriveId;

    move-result-object v0

    return-object v0
.end method
