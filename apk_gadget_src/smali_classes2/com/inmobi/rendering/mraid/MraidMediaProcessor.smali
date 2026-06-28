.class public final Lcom/inmobi/rendering/mraid/MraidMediaProcessor;
.super Ljava/lang/Object;
.source "MraidMediaProcessor.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "ClickableViewAccessibility"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/inmobi/rendering/mraid/MraidMediaProcessor$a;,
        Lcom/inmobi/rendering/mraid/MraidMediaProcessor$HeadphonesPluggedChangeReceiver;,
        Lcom/inmobi/rendering/mraid/MraidMediaProcessor$RingerModeChangeReceiver;
    }
.end annotation


# static fields
.field private static final e:Ljava/lang/String;


# instance fields
.field public a:Lcom/inmobi/rendering/mraid/MediaRenderView;

.field public b:Lcom/inmobi/rendering/mraid/MraidMediaProcessor$RingerModeChangeReceiver;

.field public c:Lcom/inmobi/rendering/mraid/MraidMediaProcessor$a;

.field public d:Lcom/inmobi/rendering/mraid/MraidMediaProcessor$HeadphonesPluggedChangeReceiver;

.field private f:Lcom/inmobi/rendering/RenderView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    const-class v0, Lcom/inmobi/rendering/mraid/MraidMediaProcessor;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/inmobi/rendering/mraid/MraidMediaProcessor;->e:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/inmobi/rendering/RenderView;)V
    .locals 0

    .prologue
    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 104
    iput-object p1, p0, Lcom/inmobi/rendering/mraid/MraidMediaProcessor;->f:Lcom/inmobi/rendering/RenderView;

    .line 105
    return-void
.end method

.method static synthetic a(Lcom/inmobi/rendering/mraid/MraidMediaProcessor;)Lcom/inmobi/rendering/mraid/MediaRenderView;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/inmobi/rendering/mraid/MraidMediaProcessor;->a:Lcom/inmobi/rendering/mraid/MediaRenderView;

    return-object v0
.end method

.method static synthetic a(Lcom/inmobi/rendering/mraid/MraidMediaProcessor;Ljava/lang/String;I)V
    .locals 3

    .prologue
    .line 28
    .line 2266
    iget-object v0, p0, Lcom/inmobi/rendering/mraid/MraidMediaProcessor;->f:Lcom/inmobi/rendering/RenderView;

    if-eqz v0, :cond_0

    .line 2267
    iget-object v0, p0, Lcom/inmobi/rendering/mraid/MraidMediaProcessor;->f:Lcom/inmobi/rendering/RenderView;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "fireDeviceVolumeChangeEvent("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ");"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/inmobi/rendering/RenderView;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/inmobi/rendering/mraid/MraidMediaProcessor;Ljava/lang/String;Z)V
    .locals 3

    .prologue
    .line 28
    .line 1260
    iget-object v0, p0, Lcom/inmobi/rendering/mraid/MraidMediaProcessor;->f:Lcom/inmobi/rendering/RenderView;

    if-eqz v0, :cond_0

    .line 1261
    iget-object v0, p0, Lcom/inmobi/rendering/mraid/MraidMediaProcessor;->f:Lcom/inmobi/rendering/RenderView;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "fireDeviceMuteChangeEvent("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ");"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/inmobi/rendering/RenderView;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    :cond_0
    return-void
.end method

.method public static a()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 182
    invoke-static {}, Lcom/inmobi/commons/a/a;->b()Landroid/content/Context;

    move-result-object v0

    .line 183
    if-nez v0, :cond_0

    move v0, v1

    .line 185
    :goto_0
    return v0

    .line 184
    :cond_0
    const-string v2, "audio"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 185
    const/4 v2, 0x2

    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v0

    if-eq v2, v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method static synthetic b(Lcom/inmobi/rendering/mraid/MraidMediaProcessor;)Lcom/inmobi/rendering/RenderView;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/inmobi/rendering/mraid/MraidMediaProcessor;->f:Lcom/inmobi/rendering/RenderView;

    return-object v0
.end method

.method static synthetic b(Lcom/inmobi/rendering/mraid/MraidMediaProcessor;Ljava/lang/String;Z)V
    .locals 3

    .prologue
    .line 28
    .line 1272
    iget-object v0, p0, Lcom/inmobi/rendering/mraid/MraidMediaProcessor;->f:Lcom/inmobi/rendering/RenderView;

    if-eqz v0, :cond_0

    .line 1273
    iget-object v0, p0, Lcom/inmobi/rendering/mraid/MraidMediaProcessor;->f:Lcom/inmobi/rendering/RenderView;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "fireHeadphonePluggedEvent("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ");"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/inmobi/rendering/RenderView;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    :cond_0
    return-void
.end method

.method public static d()I
    .locals 2

    .prologue
    .line 226
    invoke-static {}, Lcom/inmobi/commons/a/a;->b()Landroid/content/Context;

    move-result-object v0

    .line 227
    if-nez v0, :cond_0

    const/4 v0, -0x1

    .line 229
    :goto_0
    return v0

    .line 228
    :cond_0
    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 229
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    goto :goto_0
.end method

.method public static e()Z
    .locals 2

    .prologue
    .line 234
    invoke-static {}, Lcom/inmobi/commons/a/a;->b()Landroid/content/Context;

    move-result-object v0

    .line 235
    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 237
    :goto_0
    return v0

    .line 236
    :cond_0
    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 237
    invoke-virtual {v0}, Landroid/media/AudioManager;->isWiredHeadsetOn()Z

    move-result v0

    goto :goto_0
.end method

.method static synthetic g()Ljava/lang/String;
    .locals 1

    .prologue
    .line 28
    sget-object v0, Lcom/inmobi/rendering/mraid/MraidMediaProcessor;->e:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public final b()V
    .locals 2

    .prologue
    .line 199
    invoke-static {}, Lcom/inmobi/commons/a/a;->b()Landroid/content/Context;

    move-result-object v0

    .line 200
    if-nez v0, :cond_1

    .line 205
    :cond_0
    :goto_0
    return-void

    .line 201
    :cond_1
    iget-object v1, p0, Lcom/inmobi/rendering/mraid/MraidMediaProcessor;->b:Lcom/inmobi/rendering/mraid/MraidMediaProcessor$RingerModeChangeReceiver;

    if-eqz v1, :cond_0

    .line 202
    iget-object v1, p0, Lcom/inmobi/rendering/mraid/MraidMediaProcessor;->b:Lcom/inmobi/rendering/mraid/MraidMediaProcessor$RingerModeChangeReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 203
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/inmobi/rendering/mraid/MraidMediaProcessor;->b:Lcom/inmobi/rendering/mraid/MraidMediaProcessor$RingerModeChangeReceiver;

    goto :goto_0
.end method

.method public final c()V
    .locals 2

    .prologue
    .line 217
    invoke-static {}, Lcom/inmobi/commons/a/a;->b()Landroid/content/Context;

    move-result-object v0

    .line 218
    if-nez v0, :cond_1

    .line 223
    :cond_0
    :goto_0
    return-void

    .line 219
    :cond_1
    iget-object v1, p0, Lcom/inmobi/rendering/mraid/MraidMediaProcessor;->c:Lcom/inmobi/rendering/mraid/MraidMediaProcessor$a;

    if-eqz v1, :cond_0

    .line 220
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/inmobi/rendering/mraid/MraidMediaProcessor;->c:Lcom/inmobi/rendering/mraid/MraidMediaProcessor$a;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 221
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/inmobi/rendering/mraid/MraidMediaProcessor;->c:Lcom/inmobi/rendering/mraid/MraidMediaProcessor$a;

    goto :goto_0
.end method

.method public final f()V
    .locals 2

    .prologue
    .line 251
    invoke-static {}, Lcom/inmobi/commons/a/a;->b()Landroid/content/Context;

    move-result-object v0

    .line 252
    if-nez v0, :cond_1

    .line 257
    :cond_0
    :goto_0
    return-void

    .line 253
    :cond_1
    iget-object v1, p0, Lcom/inmobi/rendering/mraid/MraidMediaProcessor;->d:Lcom/inmobi/rendering/mraid/MraidMediaProcessor$HeadphonesPluggedChangeReceiver;

    if-eqz v1, :cond_0

    .line 254
    iget-object v1, p0, Lcom/inmobi/rendering/mraid/MraidMediaProcessor;->d:Lcom/inmobi/rendering/mraid/MraidMediaProcessor$HeadphonesPluggedChangeReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 255
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/inmobi/rendering/mraid/MraidMediaProcessor;->d:Lcom/inmobi/rendering/mraid/MraidMediaProcessor$HeadphonesPluggedChangeReceiver;

    goto :goto_0
.end method
