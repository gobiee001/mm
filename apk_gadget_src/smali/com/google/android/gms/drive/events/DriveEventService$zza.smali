.class final Lcom/google/android/gms/drive/events/DriveEventService$zza;
.super Landroid/os/Handler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/drive/events/DriveEventService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "zza"
.end annotation


# instance fields
.field private synthetic zzglt:Lcom/google/android/gms/drive/events/DriveEventService;


# direct methods
.method constructor <init>(Lcom/google/android/gms/drive/events/DriveEventService;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/drive/events/DriveEventService$zza;->zzglt:Lcom/google/android/gms/drive/events/DriveEventService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/drive/events/DriveEventService$zza;)Landroid/os/Message;
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/drive/events/DriveEventService$zza;->zzaot()Landroid/os/Message;

    move-result-object v0

    return-object v0
.end method

.method static synthetic zza(Lcom/google/android/gms/drive/events/DriveEventService$zza;Lcom/google/android/gms/internal/zzbrd;)Landroid/os/Message;
    .locals 1

    invoke-direct {p0, p1}, Lcom/google/android/gms/drive/events/DriveEventService$zza;->zzb(Lcom/google/android/gms/internal/zzbrd;)Landroid/os/Message;

    move-result-object v0

    return-object v0
.end method

.method private final zzaot()Landroid/os/Message;
    .locals 1

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/google/android/gms/drive/events/DriveEventService$zza;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    return-object v0
.end method

.method private final zzb(Lcom/google/android/gms/internal/zzbrd;)Landroid/os/Message;
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/drive/events/DriveEventService$zza;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 7

    const/4 v6, 0x1

    const/4 v5, 0x0

    invoke-static {}, Lcom/google/android/gms/drive/events/DriveEventService;->zzaos()Lcom/google/android/gms/common/internal/zzal;

    move-result-object v0

    const-string v1, "DriveEventService"

    const-string v2, "handleMessage message type: %s"

    new-array v3, v6, [Ljava/lang/Object;

    iget v4, p1, Landroid/os/Message;->what:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/gms/common/internal/zzal;->zzb(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    invoke-static {}, Lcom/google/android/gms/drive/events/DriveEventService;->zzaos()Lcom/google/android/gms/common/internal/zzal;

    move-result-object v0

    const-string v1, "DriveEventService"

    const-string v2, "Unexpected message type: %s"

    new-array v3, v6, [Ljava/lang/Object;

    iget v4, p1, Landroid/os/Message;->what:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/gms/common/internal/zzal;->zzc(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void

    :pswitch_0
    iget-object v1, p0, Lcom/google/android/gms/drive/events/DriveEventService$zza;->zzglt:Lcom/google/android/gms/drive/events/DriveEventService;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/internal/zzbrd;

    invoke-static {v1, v0}, Lcom/google/android/gms/drive/events/DriveEventService;->zza(Lcom/google/android/gms/drive/events/DriveEventService;Lcom/google/android/gms/internal/zzbrd;)V

    goto :goto_0

    :pswitch_1
    invoke-virtual {p0}, Lcom/google/android/gms/drive/events/DriveEventService$zza;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
