.class final Lcom/google/android/gms/internal/zzbmk;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/drive/DriveApi$zza;


# instance fields
.field private final mStatus:Lcom/google/android/gms/common/api/Status;

.field private final zzgng:Lcom/google/android/gms/drive/TransferPreferences;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/common/api/Status;Lcom/google/android/gms/drive/TransferPreferences;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzbmk;->mStatus:Lcom/google/android/gms/common/api/Status;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzbmk;->zzgng:Lcom/google/android/gms/drive/TransferPreferences;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/common/api/Status;Lcom/google/android/gms/drive/TransferPreferences;Lcom/google/android/gms/internal/zzblt;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/zzbmk;-><init>(Lcom/google/android/gms/common/api/Status;Lcom/google/android/gms/drive/TransferPreferences;)V

    return-void
.end method


# virtual methods
.method public final getStatus()Lcom/google/android/gms/common/api/Status;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbmk;->mStatus:Lcom/google/android/gms/common/api/Status;

    return-object v0
.end method

.method public final zzaoa()Lcom/google/android/gms/drive/TransferPreferences;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbmk;->zzgng:Lcom/google/android/gms/drive/TransferPreferences;

    return-object v0
.end method
