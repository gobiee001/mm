.class final synthetic Lcom/google/android/gms/internal/zzboc;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/zzbo;


# static fields
.field static final zzgnw:Lcom/google/android/gms/common/internal/zzbo;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/zzboc;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzboc;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zzboc;->zzgnw:Lcom/google/android/gms/common/internal/zzbo;

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

    check-cast p1, Lcom/google/android/gms/drive/DriveApi$MetadataBufferResult;

    invoke-interface {p1}, Lcom/google/android/gms/drive/DriveApi$MetadataBufferResult;->getMetadataBuffer()Lcom/google/android/gms/drive/MetadataBuffer;

    move-result-object v0

    return-object v0
.end method
