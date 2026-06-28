.class public final Lcom/google/android/gms/internal/zzbtu;
.super Ljava/lang/Object;


# static fields
.field public static final zzgud:Lcom/google/android/gms/internal/zzbtv;

.field public static final zzgue:Lcom/google/android/gms/internal/zzbtw;

.field public static final zzguf:Lcom/google/android/gms/internal/zzbty;

.field public static final zzgug:Lcom/google/android/gms/internal/zzbtx;

.field public static final zzguh:Lcom/google/android/gms/internal/zzbua;

.field public static final zzgui:Lcom/google/android/gms/internal/zzbtz;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const v3, 0x3e8fa0

    new-instance v0, Lcom/google/android/gms/internal/zzbtv;

    const-string v1, "created"

    invoke-direct {v0, v1, v3}, Lcom/google/android/gms/internal/zzbtv;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/gms/internal/zzbtu;->zzgud:Lcom/google/android/gms/internal/zzbtv;

    new-instance v0, Lcom/google/android/gms/internal/zzbtw;

    const-string v1, "lastOpenedTime"

    const v2, 0x419ce0

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/zzbtw;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/gms/internal/zzbtu;->zzgue:Lcom/google/android/gms/internal/zzbtw;

    new-instance v0, Lcom/google/android/gms/internal/zzbty;

    const-string v1, "modified"

    invoke-direct {v0, v1, v3}, Lcom/google/android/gms/internal/zzbty;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/gms/internal/zzbtu;->zzguf:Lcom/google/android/gms/internal/zzbty;

    new-instance v0, Lcom/google/android/gms/internal/zzbtx;

    const-string v1, "modifiedByMe"

    invoke-direct {v0, v1, v3}, Lcom/google/android/gms/internal/zzbtx;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/gms/internal/zzbtu;->zzgug:Lcom/google/android/gms/internal/zzbtx;

    new-instance v0, Lcom/google/android/gms/internal/zzbua;

    const-string v1, "sharedWithMe"

    invoke-direct {v0, v1, v3}, Lcom/google/android/gms/internal/zzbua;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/gms/internal/zzbtu;->zzguh:Lcom/google/android/gms/internal/zzbua;

    new-instance v0, Lcom/google/android/gms/internal/zzbtz;

    const-string v1, "recency"

    const v2, 0x7a1200

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/zzbtz;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/gms/internal/zzbtu;->zzgui:Lcom/google/android/gms/internal/zzbtz;

    return-void
.end method
