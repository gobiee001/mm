.class final Lcom/google/android/gms/internal/zzbqa;
.super Landroid/os/Handler;


# instance fields
.field private final mContext:Landroid/content/Context;


# direct methods
.method private constructor <init>(Landroid/os/Looper;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p2, p0, Lcom/google/android/gms/internal/zzbqa;->mContext:Landroid/content/Context;

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Looper;Landroid/content/Context;Lcom/google/android/gms/internal/zzbpz;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/zzbqa;-><init>(Landroid/os/Looper;Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 6

    const/4 v4, 0x1

    const/4 v5, 0x0

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    invoke-static {}, Lcom/google/android/gms/internal/zzbpy;->zzaos()Lcom/google/android/gms/common/internal/zzal;

    move-result-object v0

    const-string v1, "EventCallback"

    const-string v2, "Don\'t know how to handle this event in context %s"

    new-array v3, v4, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/google/android/gms/internal/zzbqa;->mContext:Landroid/content/Context;

    aput-object v4, v3, v5

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/gms/common/internal/zzal;->zzd(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/util/Pair;

    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Lcom/google/android/gms/drive/events/zzi;

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/drive/events/DriveEvent;

    invoke-interface {v0}, Lcom/google/android/gms/drive/events/DriveEvent;->getType()I

    move-result v2

    packed-switch v2, :pswitch_data_1

    :pswitch_1
    invoke-static {}, Lcom/google/android/gms/internal/zzbpy;->zzaos()Lcom/google/android/gms/common/internal/zzal;

    move-result-object v1

    const-string v2, "EventCallback"

    const-string v3, "Unexpected event: %s"

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v0, v4, v5

    invoke-virtual {v1, v2, v3, v4}, Lcom/google/android/gms/common/internal/zzal;->zzc(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :pswitch_2
    check-cast v1, Lcom/google/android/gms/drive/events/ChangeListener;

    check-cast v0, Lcom/google/android/gms/drive/events/ChangeEvent;

    invoke-interface {v1, v0}, Lcom/google/android/gms/drive/events/ChangeListener;->onChange(Lcom/google/android/gms/drive/events/ChangeEvent;)V

    goto :goto_0

    :pswitch_3
    check-cast v1, Lcom/google/android/gms/drive/events/CompletionListener;

    check-cast v0, Lcom/google/android/gms/drive/events/CompletionEvent;

    invoke-interface {v1, v0}, Lcom/google/android/gms/drive/events/CompletionListener;->onCompletion(Lcom/google/android/gms/drive/events/CompletionEvent;)V

    goto :goto_0

    :pswitch_4
    check-cast v0, Lcom/google/android/gms/drive/events/zzl;

    invoke-virtual {v0}, Lcom/google/android/gms/drive/events/zzl;->zzaou()Lcom/google/android/gms/common/data/DataHolder;

    move-result-object v1

    if-eqz v1, :cond_1

    new-instance v2, Lcom/google/android/gms/drive/MetadataBuffer;

    invoke-direct {v2, v1}, Lcom/google/android/gms/drive/MetadataBuffer;-><init>(Lcom/google/android/gms/common/data/DataHolder;)V

    new-instance v1, Lcom/google/android/gms/internal/zzbqb;

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/zzbqb;-><init>(Lcom/google/android/gms/drive/MetadataBuffer;)V

    :cond_1
    invoke-virtual {v0}, Lcom/google/android/gms/drive/events/zzl;->zzaov()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/drive/events/zzl;->zzaow()I

    goto :goto_0

    :pswitch_5
    check-cast v1, Lcom/google/android/gms/drive/events/zzd;

    check-cast v0, Lcom/google/android/gms/drive/events/zzb;

    invoke-interface {v1, v0}, Lcom/google/android/gms/drive/events/zzd;->zza(Lcom/google/android/gms/drive/events/zzb;)V

    goto :goto_0

    :pswitch_6
    check-cast v0, Lcom/google/android/gms/drive/events/zzn;

    invoke-virtual {v0}, Lcom/google/android/gms/drive/events/zzn;->zzaox()Lcom/google/android/gms/internal/zzbku;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/zzbkr;

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/zzbkr;-><init>(Lcom/google/android/gms/internal/zzbku;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_6
    .end packed-switch
.end method
