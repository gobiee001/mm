.class public final Lcom/google/android/gms/drive/Drive;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/drive/Drive$zza;,
        Lcom/google/android/gms/drive/Drive$zzb;
    }
.end annotation


# static fields
.field public static final API:Lcom/google/android/gms/common/api/Api;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/Api",
            "<",
            "Lcom/google/android/gms/common/api/Api$ApiOptions$NoOptions;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final DriveApi:Lcom/google/android/gms/drive/DriveApi;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final DrivePreferencesApi:Lcom/google/android/gms/drive/DrivePreferencesApi;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final SCOPE_APPFOLDER:Lcom/google/android/gms/common/api/Scope;

.field public static final SCOPE_FILE:Lcom/google/android/gms/common/api/Scope;

.field public static final zzebf:Lcom/google/android/gms/common/api/Api$zzf;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/Api$zzf",
            "<",
            "Lcom/google/android/gms/internal/zzbmo;",
            ">;"
        }
    .end annotation
.end field

.field private static final zzebg:Lcom/google/android/gms/common/api/Api$zza;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/Api$zza",
            "<",
            "Lcom/google/android/gms/internal/zzbmo;",
            "Lcom/google/android/gms/common/api/Api$ApiOptions$NoOptions;",
            ">;"
        }
    .end annotation
.end field

.field private static final zzgix:Lcom/google/android/gms/common/api/Api$zza;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/Api$zza",
            "<",
            "Lcom/google/android/gms/internal/zzbmo;",
            "Lcom/google/android/gms/drive/Drive$zzb;",
            ">;"
        }
    .end annotation
.end field

.field private static final zzgiy:Lcom/google/android/gms/common/api/Api$zza;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/Api$zza",
            "<",
            "Lcom/google/android/gms/internal/zzbmo;",
            "Lcom/google/android/gms/drive/Drive$zza;",
            ">;"
        }
    .end annotation
.end field

.field private static zzgiz:Lcom/google/android/gms/common/api/Scope;

.field private static zzgja:Lcom/google/android/gms/common/api/Scope;

.field private static zzgjb:Lcom/google/android/gms/common/api/Api;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/Api",
            "<",
            "Lcom/google/android/gms/drive/Drive$zzb;",
            ">;"
        }
    .end annotation
.end field

.field public static final zzgjc:Lcom/google/android/gms/common/api/Api;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/Api",
            "<",
            "Lcom/google/android/gms/drive/Drive$zza;",
            ">;"
        }
    .end annotation
.end field

.field private static zzgjd:Lcom/google/android/gms/drive/zzk;

.field private static zzgje:Lcom/google/android/gms/drive/zzm;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/google/android/gms/common/api/Api$zzf;

    invoke-direct {v0}, Lcom/google/android/gms/common/api/Api$zzf;-><init>()V

    sput-object v0, Lcom/google/android/gms/drive/Drive;->zzebf:Lcom/google/android/gms/common/api/Api$zzf;

    new-instance v0, Lcom/google/android/gms/drive/zzf;

    invoke-direct {v0}, Lcom/google/android/gms/drive/zzf;-><init>()V

    sput-object v0, Lcom/google/android/gms/drive/Drive;->zzebg:Lcom/google/android/gms/common/api/Api$zza;

    new-instance v0, Lcom/google/android/gms/drive/zzg;

    invoke-direct {v0}, Lcom/google/android/gms/drive/zzg;-><init>()V

    sput-object v0, Lcom/google/android/gms/drive/Drive;->zzgix:Lcom/google/android/gms/common/api/Api$zza;

    new-instance v0, Lcom/google/android/gms/drive/zzh;

    invoke-direct {v0}, Lcom/google/android/gms/drive/zzh;-><init>()V

    sput-object v0, Lcom/google/android/gms/drive/Drive;->zzgiy:Lcom/google/android/gms/common/api/Api$zza;

    new-instance v0, Lcom/google/android/gms/common/api/Scope;

    const-string v1, "https://www.googleapis.com/auth/drive.file"

    invoke-direct {v0, v1}, Lcom/google/android/gms/common/api/Scope;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/drive/Drive;->SCOPE_FILE:Lcom/google/android/gms/common/api/Scope;

    new-instance v0, Lcom/google/android/gms/common/api/Scope;

    const-string v1, "https://www.googleapis.com/auth/drive.appdata"

    invoke-direct {v0, v1}, Lcom/google/android/gms/common/api/Scope;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/drive/Drive;->SCOPE_APPFOLDER:Lcom/google/android/gms/common/api/Scope;

    new-instance v0, Lcom/google/android/gms/common/api/Scope;

    const-string v1, "https://www.googleapis.com/auth/drive"

    invoke-direct {v0, v1}, Lcom/google/android/gms/common/api/Scope;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/drive/Drive;->zzgiz:Lcom/google/android/gms/common/api/Scope;

    new-instance v0, Lcom/google/android/gms/common/api/Scope;

    const-string v1, "https://www.googleapis.com/auth/drive.apps"

    invoke-direct {v0, v1}, Lcom/google/android/gms/common/api/Scope;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/drive/Drive;->zzgja:Lcom/google/android/gms/common/api/Scope;

    new-instance v0, Lcom/google/android/gms/common/api/Api;

    const-string v1, "Drive.API"

    sget-object v2, Lcom/google/android/gms/drive/Drive;->zzebg:Lcom/google/android/gms/common/api/Api$zza;

    sget-object v3, Lcom/google/android/gms/drive/Drive;->zzebf:Lcom/google/android/gms/common/api/Api$zzf;

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/common/api/Api;-><init>(Ljava/lang/String;Lcom/google/android/gms/common/api/Api$zza;Lcom/google/android/gms/common/api/Api$zzf;)V

    sput-object v0, Lcom/google/android/gms/drive/Drive;->API:Lcom/google/android/gms/common/api/Api;

    new-instance v0, Lcom/google/android/gms/common/api/Api;

    const-string v1, "Drive.INTERNAL_API"

    sget-object v2, Lcom/google/android/gms/drive/Drive;->zzgix:Lcom/google/android/gms/common/api/Api$zza;

    sget-object v3, Lcom/google/android/gms/drive/Drive;->zzebf:Lcom/google/android/gms/common/api/Api$zzf;

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/common/api/Api;-><init>(Ljava/lang/String;Lcom/google/android/gms/common/api/Api$zza;Lcom/google/android/gms/common/api/Api$zzf;)V

    sput-object v0, Lcom/google/android/gms/drive/Drive;->zzgjb:Lcom/google/android/gms/common/api/Api;

    new-instance v0, Lcom/google/android/gms/common/api/Api;

    const-string v1, "Drive.API_CONNECTIONLESS"

    sget-object v2, Lcom/google/android/gms/drive/Drive;->zzgiy:Lcom/google/android/gms/common/api/Api$zza;

    sget-object v3, Lcom/google/android/gms/drive/Drive;->zzebf:Lcom/google/android/gms/common/api/Api$zzf;

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/common/api/Api;-><init>(Ljava/lang/String;Lcom/google/android/gms/common/api/Api$zza;Lcom/google/android/gms/common/api/Api$zzf;)V

    sput-object v0, Lcom/google/android/gms/drive/Drive;->zzgjc:Lcom/google/android/gms/common/api/Api;

    new-instance v0, Lcom/google/android/gms/internal/zzbls;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzbls;-><init>()V

    sput-object v0, Lcom/google/android/gms/drive/Drive;->DriveApi:Lcom/google/android/gms/drive/DriveApi;

    new-instance v0, Lcom/google/android/gms/internal/zzbnh;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzbnh;-><init>()V

    sput-object v0, Lcom/google/android/gms/drive/Drive;->zzgjd:Lcom/google/android/gms/drive/zzk;

    new-instance v0, Lcom/google/android/gms/internal/zzbpv;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzbpv;-><init>()V

    sput-object v0, Lcom/google/android/gms/drive/Drive;->zzgje:Lcom/google/android/gms/drive/zzm;

    new-instance v0, Lcom/google/android/gms/internal/zzbnr;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzbnr;-><init>()V

    sput-object v0, Lcom/google/android/gms/drive/Drive;->DrivePreferencesApi:Lcom/google/android/gms/drive/DrivePreferencesApi;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDriveClient(Landroid/app/Activity;Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;)Lcom/google/android/gms/drive/DriveClient;
    .locals 2

    invoke-static {p1}, Lcom/google/android/gms/drive/Drive;->zza(Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;)V

    new-instance v0, Lcom/google/android/gms/internal/zzbmt;

    new-instance v1, Lcom/google/android/gms/drive/Drive$zza;

    invoke-direct {v1, p1}, Lcom/google/android/gms/drive/Drive$zza;-><init>(Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;)V

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/internal/zzbmt;-><init>(Landroid/app/Activity;Lcom/google/android/gms/drive/Drive$zza;)V

    return-object v0
.end method

.method public static getDriveClient(Landroid/content/Context;Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;)Lcom/google/android/gms/drive/DriveClient;
    .locals 2

    invoke-static {p1}, Lcom/google/android/gms/drive/Drive;->zza(Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;)V

    new-instance v0, Lcom/google/android/gms/internal/zzbmt;

    new-instance v1, Lcom/google/android/gms/drive/Drive$zza;

    invoke-direct {v1, p1}, Lcom/google/android/gms/drive/Drive$zza;-><init>(Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;)V

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/internal/zzbmt;-><init>(Landroid/content/Context;Lcom/google/android/gms/drive/Drive$zza;)V

    return-object v0
.end method

.method public static getDriveResourceClient(Landroid/app/Activity;Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;)Lcom/google/android/gms/drive/DriveResourceClient;
    .locals 2

    invoke-static {p1}, Lcom/google/android/gms/drive/Drive;->zza(Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;)V

    new-instance v0, Lcom/google/android/gms/internal/zzbnx;

    new-instance v1, Lcom/google/android/gms/drive/Drive$zza;

    invoke-direct {v1, p1}, Lcom/google/android/gms/drive/Drive$zza;-><init>(Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;)V

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/internal/zzbnx;-><init>(Landroid/app/Activity;Lcom/google/android/gms/drive/Drive$zza;)V

    return-object v0
.end method

.method public static getDriveResourceClient(Landroid/content/Context;Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;)Lcom/google/android/gms/drive/DriveResourceClient;
    .locals 2

    invoke-static {p1}, Lcom/google/android/gms/drive/Drive;->zza(Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;)V

    new-instance v0, Lcom/google/android/gms/internal/zzbnx;

    new-instance v1, Lcom/google/android/gms/drive/Drive$zza;

    invoke-direct {v1, p1}, Lcom/google/android/gms/drive/Drive$zza;-><init>(Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;)V

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/internal/zzbnx;-><init>(Landroid/content/Context;Lcom/google/android/gms/drive/Drive$zza;)V

    return-object v0
.end method

.method private static zza(Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;)V
    .locals 2

    invoke-static {p0}, Lcom/google/android/gms/common/internal/zzbq;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;->zzabb()Ljava/util/Set;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/drive/Drive;->SCOPE_FILE:Lcom/google/android/gms/common/api/Scope;

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/google/android/gms/drive/Drive;->SCOPE_APPFOLDER:Lcom/google/android/gms/common/api/Scope;

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/google/android/gms/drive/Drive;->zzgiz:Lcom/google/android/gms/common/api/Scope;

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/google/android/gms/drive/Drive;->zzgja:Lcom/google/android/gms/common/api/Scope;

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    const-string v1, "You must request a Drive scope in order to interact with the Drive API."

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/zzbq;->checkArgument(ZLjava/lang/Object;)V

    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
