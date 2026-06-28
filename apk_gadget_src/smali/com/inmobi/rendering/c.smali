.class public Lcom/inmobi/rendering/c;
.super Ljava/lang/Object;
.source "JavaScriptBridge.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/inmobi/rendering/c$a;
    }
.end annotation


# static fields
.field static final a:[Ljava/lang/String;

.field private static final b:Ljava/lang/String;


# instance fields
.field private c:Lcom/inmobi/rendering/RenderView;

.field private d:Lcom/inmobi/ads/AdContainer$RenderingProperties;

.field private e:Lcom/inmobi/rendering/mraid/g;

.field private f:Landroid/app/DownloadManager;

.field private g:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 58
    const-class v0, Lcom/inmobi/rendering/c;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/inmobi/rendering/c;->b:Ljava/lang/String;

    .line 61
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "tel"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "sms"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "calendar"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "storePicture"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "inlineVideo"

    aput-object v2, v0, v1

    sput-object v0, Lcom/inmobi/rendering/c;->a:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/inmobi/rendering/RenderView;Lcom/inmobi/ads/AdContainer$RenderingProperties;)V
    .locals 0

    .prologue
    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    iput-object p1, p0, Lcom/inmobi/rendering/c;->c:Lcom/inmobi/rendering/RenderView;

    .line 72
    iput-object p2, p0, Lcom/inmobi/rendering/c;->d:Lcom/inmobi/ads/AdContainer$RenderingProperties;

    .line 73
    return-void
.end method

.method static synthetic a(Lcom/inmobi/rendering/c;)Lcom/inmobi/rendering/RenderView;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/inmobi/rendering/c;->c:Lcom/inmobi/rendering/RenderView;

    return-object v0
.end method

.method static synthetic a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 56
    sget-object v0, Lcom/inmobi/rendering/c;->b:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic a(Lcom/inmobi/rendering/c;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 56
    invoke-direct {p0, p1, p2}, Lcom/inmobi/rendering/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 696
    invoke-static {}, Lcom/inmobi/commons/a/a;->b()Landroid/content/Context;

    move-result-object v0

    .line 697
    if-nez v0, :cond_0

    .line 713
    :goto_0
    return-void

    .line 698
    :cond_0
    iget-object v1, p0, Lcom/inmobi/rendering/c;->f:Landroid/app/DownloadManager;

    if-nez v1, :cond_1

    .line 699
    const-string v1, "download"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/DownloadManager;

    iput-object v0, p0, Lcom/inmobi/rendering/c;->f:Landroid/app/DownloadManager;

    .line 703
    :cond_1
    :try_start_0
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 704
    new-instance v1, Landroid/app/DownloadManager$Request;

    invoke-direct {v1, v0}, Landroid/app/DownloadManager$Request;-><init>(Landroid/net/Uri;)V

    .line 705
    sget-object v2, Landroid/os/Environment;->DIRECTORY_DOWNLOADS:Ljava/lang/String;

    invoke-virtual {v0}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/app/DownloadManager$Request;->setDestinationInExternalPublicDir(Ljava/lang/String;Ljava/lang/String;)Landroid/app/DownloadManager$Request;

    .line 706
    invoke-virtual {p0, p1}, Lcom/inmobi/rendering/c;->registerBroadcastListener(Ljava/lang/String;)V

    .line 707
    iget-object v0, p0, Lcom/inmobi/rendering/c;->f:Landroid/app/DownloadManager;

    invoke-virtual {v0, v1}, Landroid/app/DownloadManager;->enqueue(Landroid/app/DownloadManager$Request;)J
    :try_end_0
    .catch Landroid/net/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 709
    :catch_0
    move-exception v0

    .line 710
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Invalid URL provided to storePicture "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/net/ParseException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 711
    iget-object v0, p0, Lcom/inmobi/rendering/c;->c:Lcom/inmobi/rendering/RenderView;

    const-string v1, "Invalid URL"

    const-string v2, "storePicture"

    invoke-virtual {v0, p1, v1, v2}, Lcom/inmobi/rendering/RenderView;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method static synthetic b(Lcom/inmobi/rendering/c;)Landroid/app/DownloadManager;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/inmobi/rendering/c;->f:Landroid/app/DownloadManager;

    return-object v0
.end method


# virtual methods
.method public asyncPing(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 921
    invoke-static {p2}, Landroid/webkit/URLUtil;->isValidUrl(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 922
    iget-object v0, p0, Lcom/inmobi/rendering/c;->c:Lcom/inmobi/rendering/RenderView;

    const-string v1, "Invalid url"

    const-string v2, "asyncPing"

    invoke-virtual {v0, p1, v1, v2}, Lcom/inmobi/rendering/RenderView;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 959
    :goto_0
    return-void

    .line 927
    :cond_0
    :try_start_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 928
    const-string v1, "command"

    const-string v2, "ping"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 929
    const-string v1, "scheme"

    invoke-static {p1}, Lcom/inmobi/ads/bk;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 930
    iget-object v1, p0, Lcom/inmobi/rendering/c;->c:Lcom/inmobi/rendering/RenderView;

    const-string v2, "ads"

    const-string v3, "CreativeInvokedAction"

    .line 13863
    iget-object v1, v1, Lcom/inmobi/rendering/RenderView;->c:Lcom/inmobi/rendering/RenderView$a;

    invoke-interface {v1, v2, v3, v0}, Lcom/inmobi/rendering/RenderView$a;->b(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 932
    new-instance v0, Lcom/inmobi/commons/core/network/NetworkRequest;

    sget-object v1, Lcom/inmobi/commons/core/network/NetworkRequest$RequestType;->GET:Lcom/inmobi/commons/core/network/NetworkRequest$RequestType;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, v1, p2, v2, v3}, Lcom/inmobi/commons/core/network/NetworkRequest;-><init>(Lcom/inmobi/commons/core/network/NetworkRequest$RequestType;Ljava/lang/String;ZLcom/inmobi/commons/core/utilities/uid/d;)V

    .line 14078
    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/inmobi/commons/core/network/NetworkRequest;->t:Z

    .line 935
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 936
    new-instance v1, Lcom/inmobi/commons/core/network/a;

    new-instance v4, Lcom/inmobi/rendering/c$5;

    invoke-direct {v4, p0, v0, v2, v3}, Lcom/inmobi/rendering/c$5;-><init>(Lcom/inmobi/rendering/c;Lcom/inmobi/commons/core/network/NetworkRequest;J)V

    invoke-direct {v1, v0, v4}, Lcom/inmobi/commons/core/network/a;-><init>(Lcom/inmobi/commons/core/network/NetworkRequest;Lcom/inmobi/commons/core/network/a$a;)V

    .line 953
    invoke-virtual {v1}, Lcom/inmobi/commons/core/network/a;->a()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 954
    :catch_0
    move-exception v0

    .line 955
    iget-object v1, p0, Lcom/inmobi/rendering/c;->c:Lcom/inmobi/rendering/RenderView;

    const-string v2, "Unexpected error"

    const-string v3, "asyncPing"

    invoke-virtual {v1, p1, v2, v3}, Lcom/inmobi/rendering/RenderView;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 956
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "SDK encountered internal error in handling asyncPing() request from creative; "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 957
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method public cancelSaveContent(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 1121
    :try_start_0
    invoke-static {}, Lcom/inmobi/rendering/RenderView;->d()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1127
    :goto_0
    return-void

    .line 1122
    :catch_0
    move-exception v0

    .line 1123
    iget-object v1, p0, Lcom/inmobi/rendering/c;->c:Lcom/inmobi/rendering/RenderView;

    const-string v2, "Unexpected error"

    const-string v3, "cancelSaveContent"

    invoke-virtual {v1, p1, v2, v3}, Lcom/inmobi/rendering/RenderView;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1124
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "SDK encountered unexpected error in handling cancelSaveContent() request from creative; "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1125
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method public close(Ljava/lang/String;)V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 613
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/inmobi/rendering/c;->c:Lcom/inmobi/rendering/RenderView;

    invoke-virtual {v1}, Lcom/inmobi/rendering/RenderView;->getContainerContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/inmobi/rendering/c$14;

    invoke-direct {v1, p0, p1}, Lcom/inmobi/rendering/c$14;-><init>(Lcom/inmobi/rendering/c;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 627
    return-void
.end method

.method public createCalendarEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 15
    .annotation build Landroid/annotation/TargetApi;
        value = 0x17
    .end annotation

    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 773
    iget-object v1, p0, Lcom/inmobi/rendering/c;->c:Lcom/inmobi/rendering/RenderView;

    if-nez v1, :cond_1

    .line 839
    :cond_0
    :goto_0
    return-void

    .line 778
    :cond_1
    iget-object v1, p0, Lcom/inmobi/rendering/c;->c:Lcom/inmobi/rendering/RenderView;

    const-string v2, "calendar"

    invoke-virtual {v1, v2}, Lcom/inmobi/rendering/RenderView;->d(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 783
    if-eqz p3, :cond_2

    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_2

    if-eqz p4, :cond_2

    .line 784
    invoke-virtual/range {p4 .. p4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_3

    .line 785
    :cond_2
    iget-object v1, p0, Lcom/inmobi/rendering/c;->c:Lcom/inmobi/rendering/RenderView;

    const-string v2, "Mandatory parameter(s) start and/or end date not supplied"

    const-string v3, "createCalendarEvent"

    move-object/from16 v0, p1

    invoke-virtual {v1, v0, v2, v3}, Lcom/inmobi/rendering/RenderView;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 793
    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "createCalendarEvent called with parameters: \nevent ID: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p2

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "; startDate: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p3

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "; endDate: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p4

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "; location: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p5

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "; description: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p6

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "; summary: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p7

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "; status: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p8

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "; transparency: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p9

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "; recurrence: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p10

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "; reminder: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p11

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 799
    invoke-static {}, Lcom/inmobi/commons/a/a;->b()Landroid/content/Context;

    move-result-object v1

    .line 800
    if-eqz v1, :cond_0

    .line 802
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x17

    if-lt v2, v3, :cond_5

    const-string v2, "android.permission.WRITE_CALENDAR"

    .line 803
    invoke-virtual {v1, v2}, Landroid/content/Context;->checkSelfPermission(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_4

    const-string v2, "android.permission.READ_CALENDAR"

    .line 804
    invoke-virtual {v1, v2}, Landroid/content/Context;->checkSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_5

    .line 805
    :cond_4
    const/4 v1, 0x2

    new-array v14, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "android.permission.WRITE_CALENDAR"

    aput-object v2, v14, v1

    const/4 v1, 0x1

    const-string v2, "android.permission.READ_CALENDAR"

    aput-object v2, v14, v1

    new-instance v1, Lcom/inmobi/rendering/c$4;

    move-object v2, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    move-object/from16 v10, p8

    move-object/from16 v11, p9

    move-object/from16 v12, p10

    move-object/from16 v13, p11

    invoke-direct/range {v1 .. v13}, Lcom/inmobi/rendering/c$4;-><init>(Lcom/inmobi/rendering/c;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v14, v1}, Lcom/inmobi/rendering/InMobiAdActivity;->a([Ljava/lang/String;Lcom/inmobi/rendering/InMobiAdActivity$b;)V

    goto/16 :goto_0

    .line 828
    :cond_5
    :try_start_0
    iget-object v1, p0, Lcom/inmobi/rendering/c;->c:Lcom/inmobi/rendering/RenderView;

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    move-object/from16 v12, p11

    invoke-virtual/range {v1 .. v12}, Lcom/inmobi/rendering/RenderView;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 831
    :catch_0
    move-exception v1

    .line 832
    iget-object v2, p0, Lcom/inmobi/rendering/c;->c:Lcom/inmobi/rendering/RenderView;

    const-string v3, "Unexpected error"

    const-string v4, "createCalendarEvent"

    move-object/from16 v0, p1

    invoke-virtual {v2, v0, v3, v4}, Lcom/inmobi/rendering/RenderView;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 833
    sget-object v2, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->ERROR:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    const-string v3, "InMobi"

    const-string v4, "Could not create calendar event; SDK encountered unexpected error"

    invoke-static {v2, v3, v4}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 835
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "SDK encountered unexpected error in handling createCalendarEvent() request from creative; "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 836
    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0
.end method

.method public disableBackButton(Ljava/lang/String;Z)V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 1274
    iget-object v0, p0, Lcom/inmobi/rendering/c;->c:Lcom/inmobi/rendering/RenderView;

    if-nez v0, :cond_0

    .line 1281
    :goto_0
    return-void

    .line 1280
    :cond_0
    iget-object v0, p0, Lcom/inmobi/rendering/c;->c:Lcom/inmobi/rendering/RenderView;

    invoke-virtual {v0, p2}, Lcom/inmobi/rendering/RenderView;->setDisableBackButton(Z)V

    goto :goto_0
.end method

.method public disableCloseRegion(Ljava/lang/String;Z)V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 968
    iget-object v0, p0, Lcom/inmobi/rendering/c;->c:Lcom/inmobi/rendering/RenderView;

    if-nez v0, :cond_0

    .line 984
    :goto_0
    return-void

    .line 972
    :cond_0
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/inmobi/rendering/c;->c:Lcom/inmobi/rendering/RenderView;

    invoke-virtual {v1}, Lcom/inmobi/rendering/RenderView;->getContainerContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/inmobi/rendering/c$6;

    invoke-direct {v1, p0, p2, p1}, Lcom/inmobi/rendering/c$6;-><init>(Lcom/inmobi/rendering/c;ZLjava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public expand(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 313
    iget-object v0, p0, Lcom/inmobi/rendering/c;->d:Lcom/inmobi/ads/AdContainer$RenderingProperties;

    .line 5070
    iget-object v0, v0, Lcom/inmobi/ads/AdContainer$RenderingProperties;->a:Lcom/inmobi/ads/AdContainer$RenderingProperties$PlacementType;

    .line 313
    sget-object v1, Lcom/inmobi/ads/AdContainer$RenderingProperties$PlacementType;->PLACEMENT_TYPE_FULLSCREEN:Lcom/inmobi/ads/AdContainer$RenderingProperties$PlacementType;

    if-eq v0, v1, :cond_0

    .line 314
    iget-object v0, p0, Lcom/inmobi/rendering/c;->c:Lcom/inmobi/rendering/RenderView;

    if-nez v0, :cond_1

    .line 343
    :cond_0
    :goto_0
    return-void

    .line 319
    :cond_1
    iget-object v0, p0, Lcom/inmobi/rendering/c;->c:Lcom/inmobi/rendering/RenderView;

    .line 5328
    iget-boolean v0, v0, Lcom/inmobi/rendering/RenderView;->o:Z

    .line 319
    if-eqz v0, :cond_3

    .line 320
    if-eqz p2, :cond_2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "http"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 321
    iget-object v0, p0, Lcom/inmobi/rendering/c;->c:Lcom/inmobi/rendering/RenderView;

    const-string v1, "Invalid URL"

    const-string v2, "expand"

    invoke-virtual {v0, p1, v1, v2}, Lcom/inmobi/rendering/RenderView;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 325
    :cond_2
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/inmobi/rendering/c;->c:Lcom/inmobi/rendering/RenderView;

    invoke-virtual {v1}, Lcom/inmobi/rendering/RenderView;->getContainerContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/inmobi/rendering/c$10;

    invoke-direct {v1, p0, p1, p2}, Lcom/inmobi/rendering/c$10;-><init>(Lcom/inmobi/rendering/c;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 340
    :cond_3
    iget-object v0, p0, Lcom/inmobi/rendering/c;->c:Lcom/inmobi/rendering/RenderView;

    const-string v1, "Creative is not visible. Ignoring request."

    const-string v2, "expand"

    invoke-virtual {v0, p1, v1, v2}, Lcom/inmobi/rendering/RenderView;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public fireAdFailed(Ljava/lang/String;)V
    .locals 4
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 203
    :try_start_0
    iget-object v0, p0, Lcom/inmobi/rendering/c;->c:Lcom/inmobi/rendering/RenderView;

    invoke-virtual {v0}, Lcom/inmobi/rendering/RenderView;->getListener()Lcom/inmobi/rendering/RenderView$a;

    move-result-object v0

    invoke-interface {v0}, Lcom/inmobi/rendering/RenderView$a;->u()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 209
    :goto_0
    return-void

    .line 204
    :catch_0
    move-exception v0

    .line 205
    iget-object v1, p0, Lcom/inmobi/rendering/c;->c:Lcom/inmobi/rendering/RenderView;

    const-string v2, "Unexpected error"

    const-string v3, "fireAdFailed"

    invoke-virtual {v1, p1, v2, v3}, Lcom/inmobi/rendering/RenderView;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "SDK encountered unexpected error in handling fireAdFailed() signal from creative; "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 207
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method public fireAdReady(Ljava/lang/String;)V
    .locals 4
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 191
    :try_start_0
    iget-object v0, p0, Lcom/inmobi/rendering/c;->c:Lcom/inmobi/rendering/RenderView;

    invoke-virtual {v0}, Lcom/inmobi/rendering/RenderView;->getListener()Lcom/inmobi/rendering/RenderView$a;

    move-result-object v0

    invoke-interface {v0}, Lcom/inmobi/rendering/RenderView$a;->s()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 197
    :goto_0
    return-void

    .line 192
    :catch_0
    move-exception v0

    .line 193
    iget-object v1, p0, Lcom/inmobi/rendering/c;->c:Lcom/inmobi/rendering/RenderView;

    const-string v2, "Unexpected error"

    const-string v3, "fireAdReady"

    invoke-virtual {v1, p1, v2, v3}, Lcom/inmobi/rendering/RenderView;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "SDK encountered unexpected error in handling fireAdReady() signal from creative; "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 195
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method public fireComplete(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 1450
    iget-object v0, p0, Lcom/inmobi/rendering/c;->c:Lcom/inmobi/rendering/RenderView;

    if-nez v0, :cond_0

    .line 1455
    :goto_0
    return-void

    .line 1454
    :cond_0
    invoke-static {}, Lcom/inmobi/rendering/RenderView;->f()V

    goto :goto_0
.end method

.method public fireSkip(Ljava/lang/String;)V
    .locals 0
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 1445
    invoke-static {}, Lcom/inmobi/rendering/RenderView;->e()V

    .line 1446
    return-void
.end method

.method public getBlob(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 1477
    iget-object v0, p0, Lcom/inmobi/rendering/c;->c:Lcom/inmobi/rendering/RenderView;

    if-nez v0, :cond_1

    .line 1482
    :cond_0
    :goto_0
    return-void

    .line 1481
    :cond_1
    iget-object v0, p0, Lcom/inmobi/rendering/c;->c:Lcom/inmobi/rendering/RenderView;

    .line 21025
    iget-object v1, v0, Lcom/inmobi/rendering/RenderView;->u:Lcom/inmobi/rendering/a;

    if-eqz v1, :cond_0

    .line 21026
    iget-object v1, v0, Lcom/inmobi/rendering/RenderView;->u:Lcom/inmobi/rendering/a;

    invoke-interface {v1, p1, p2, v0}, Lcom/inmobi/rendering/a;->a(Ljava/lang/String;Ljava/lang/String;Lcom/inmobi/rendering/b;)V

    goto :goto_0
.end method

.method public getCurrentPosition(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 245
    iget-object v0, p0, Lcom/inmobi/rendering/c;->c:Lcom/inmobi/rendering/RenderView;

    if-nez v0, :cond_0

    .line 247
    const-string v0, ""

    .line 272
    :goto_0
    return-object v0

    .line 250
    :cond_0
    iget-object v0, p0, Lcom/inmobi/rendering/c;->c:Lcom/inmobi/rendering/RenderView;

    invoke-virtual {v0}, Lcom/inmobi/rendering/RenderView;->getCurrentPositionMonitor()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 251
    :try_start_0
    iget-object v0, p0, Lcom/inmobi/rendering/c;->c:Lcom/inmobi/rendering/RenderView;

    invoke-virtual {v0}, Lcom/inmobi/rendering/RenderView;->setCurrentPositionLock()V

    .line 252
    new-instance v0, Landroid/os/Handler;

    iget-object v2, p0, Lcom/inmobi/rendering/c;->c:Lcom/inmobi/rendering/RenderView;

    invoke-virtual {v2}, Lcom/inmobi/rendering/RenderView;->getContainerContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v2, Lcom/inmobi/rendering/c$9;

    invoke-direct {v2, p0}, Lcom/inmobi/rendering/c$9;-><init>(Lcom/inmobi/rendering/c;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 263
    :goto_1
    iget-object v0, p0, Lcom/inmobi/rendering/c;->c:Lcom/inmobi/rendering/RenderView;

    .line 4344
    iget-boolean v0, v0, Lcom/inmobi/rendering/RenderView;->l:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 263
    if-eqz v0, :cond_1

    .line 265
    :try_start_1
    iget-object v0, p0, Lcom/inmobi/rendering/c;->c:Lcom/inmobi/rendering/RenderView;

    invoke-virtual {v0}, Lcom/inmobi/rendering/RenderView;->getCurrentPositionMonitor()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 268
    :catch_0
    move-exception v0

    goto :goto_1

    .line 270
    :cond_1
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 272
    iget-object v0, p0, Lcom/inmobi/rendering/c;->c:Lcom/inmobi/rendering/RenderView;

    invoke-virtual {v0}, Lcom/inmobi/rendering/RenderView;->getCurrentPosition()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 270
    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0
.end method

.method public getDefaultPosition(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 213
    iget-object v0, p0, Lcom/inmobi/rendering/c;->c:Lcom/inmobi/rendering/RenderView;

    if-nez v0, :cond_1

    .line 215
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    instance-of v1, v0, Lorg/json/JSONObject;

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    .line 240
    :goto_0
    return-object v0

    .line 215
    :cond_0
    check-cast v0, Lorg/json/JSONObject;

    invoke-static {v0}, Lcom/newrelic/agent/android/instrumentation/JSONObjectInstrumentation;->toString(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 218
    :cond_1
    iget-object v0, p0, Lcom/inmobi/rendering/c;->c:Lcom/inmobi/rendering/RenderView;

    invoke-virtual {v0}, Lcom/inmobi/rendering/RenderView;->getDefaultPositionMonitor()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 219
    :try_start_0
    iget-object v0, p0, Lcom/inmobi/rendering/c;->c:Lcom/inmobi/rendering/RenderView;

    invoke-virtual {v0}, Lcom/inmobi/rendering/RenderView;->setDefaultPositionLock()V

    .line 220
    new-instance v0, Landroid/os/Handler;

    iget-object v2, p0, Lcom/inmobi/rendering/c;->c:Lcom/inmobi/rendering/RenderView;

    invoke-virtual {v2}, Lcom/inmobi/rendering/RenderView;->getContainerContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v2, Lcom/inmobi/rendering/c$8;

    invoke-direct {v2, p0}, Lcom/inmobi/rendering/c$8;-><init>(Lcom/inmobi/rendering/c;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 231
    :goto_1
    iget-object v0, p0, Lcom/inmobi/rendering/c;->c:Lcom/inmobi/rendering/RenderView;

    .line 4340
    iget-boolean v0, v0, Lcom/inmobi/rendering/RenderView;->k:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 231
    if-eqz v0, :cond_2

    .line 233
    :try_start_1
    iget-object v0, p0, Lcom/inmobi/rendering/c;->c:Lcom/inmobi/rendering/RenderView;

    invoke-virtual {v0}, Lcom/inmobi/rendering/RenderView;->getDefaultPositionMonitor()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 236
    :catch_0
    move-exception v0

    goto :goto_1

    .line 238
    :cond_2
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 240
    iget-object v0, p0, Lcom/inmobi/rendering/c;->c:Lcom/inmobi/rendering/RenderView;

    invoke-virtual {v0}, Lcom/inmobi/rendering/RenderView;->getDefaultPosition()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 238
    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0
.end method

.method public getDeviceVolume(Ljava/lang/String;)I
    .locals 5
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    const/4 v0, -0x1

    .line 1227
    iget-object v1, p0, Lcom/inmobi/rendering/c;->c:Lcom/inmobi/rendering/RenderView;

    if-nez v1, :cond_0

    .line 1238
    :goto_0
    return v0

    .line 1232
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/inmobi/rendering/c;->c:Lcom/inmobi/rendering/RenderView;

    invoke-virtual {v1}, Lcom/inmobi/rendering/RenderView;->getMediaProcessor()Lcom/inmobi/rendering/mraid/MraidMediaProcessor;

    invoke-static {}, Lcom/inmobi/rendering/mraid/MraidMediaProcessor;->d()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    .line 1233
    :catch_0
    move-exception v1

    .line 1234
    iget-object v2, p0, Lcom/inmobi/rendering/c;->c:Lcom/inmobi/rendering/RenderView;

    const-string v3, "Unexpected error"

    const-string v4, "getDeviceVolume"

    invoke-virtual {v2, p1, v3, v4}, Lcom/inmobi/rendering/RenderView;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1235
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "SDK encountered unexpected error in handling getDeviceVolume() request from creative; "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1236
    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method public getDownloadProgress(Ljava/lang/String;)I
    .locals 5
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    const/4 v0, -0x1

    .line 1380
    iget-object v1, p0, Lcom/inmobi/rendering/c;->c:Lcom/inmobi/rendering/RenderView;

    if-nez v1, :cond_0

    .line 1392
    :goto_0
    return v0

    .line 1386
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/inmobi/rendering/c;->c:Lcom/inmobi/rendering/RenderView;

    invoke-virtual {v1}, Lcom/inmobi/rendering/RenderView;->getDownloadProgress()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    .line 1387
    :catch_0
    move-exception v1

    .line 1388
    iget-object v2, p0, Lcom/inmobi/rendering/c;->c:Lcom/inmobi/rendering/RenderView;

    const-string v3, "Unexpected error"

    const-string v4, "getDownloadProgress"

    invoke-virtual {v2, p1, v3, v4}, Lcom/inmobi/rendering/RenderView;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1389
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "SDK encountered unexpected error in handling getDownloadProgress() request from creative; "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1390
    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method public getDownloadStatus(Ljava/lang/String;)I
    .locals 5
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    const/4 v0, -0x1

    .line 1397
    iget-object v1, p0, Lcom/inmobi/rendering/c;->c:Lcom/inmobi/rendering/RenderView;

    if-nez v1, :cond_0

    .line 1409
    :goto_0
    return v0

    .line 1403
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/inmobi/rendering/c;->c:Lcom/inmobi/rendering/RenderView;

    invoke-virtual {v1}, Lcom/inmobi/rendering/RenderView;->getDownloadStatus()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    .line 1404
    :catch_0
    move-exception v1

    .line 1405
    iget-object v2, p0, Lcom/inmobi/rendering/c;->c:Lcom/inmobi/rendering/RenderView;

    const-string v3, "Unexpected error"

    const-string v4, "getDownloadStatus"

    invoke-virtual {v2, p1, v3, v4}, Lcom/inmobi/rendering/RenderView;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1406
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "SDK encountered unexpected error in handling getDownloadStatus() request from creative; "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1407
    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method public getExpandProperties(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 300
    iget-object v0, p0, Lcom/inmobi/rendering/c;->c:Lcom/inmobi/rendering/RenderView;

    if-nez v0, :cond_0

    .line 302
    const-string v0, ""

    .line 306
    :goto_0
    return-object v0

    .line 305
    :cond_0
    iget-object v0, p0, Lcom/inmobi/rendering/c;->c:Lcom/inmobi/rendering/RenderView;

    invoke-virtual {v0}, Lcom/inmobi/rendering/RenderView;->getExpandProperties()Lcom/inmobi/rendering/mraid/b;

    move-result-object v0

    .line 5067
    iget-object v0, v0, Lcom/inmobi/rendering/mraid/b;->c:Ljava/lang/String;

    goto :goto_0
.end method

.method public getMaxSize(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 527
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 529
    :try_start_0
    iget-object v1, p0, Lcom/inmobi/rendering/c;->c:Lcom/inmobi/rendering/RenderView;

    invoke-virtual {v1}, Lcom/inmobi/rendering/RenderView;->getFullScreenActivity()Landroid/app/Activity;

    move-result-object v1

    .line 530
    if-nez v1, :cond_1

    .line 531
    iget-object v1, p0, Lcom/inmobi/rendering/c;->c:Lcom/inmobi/rendering/RenderView;

    invoke-virtual {v1}, Lcom/inmobi/rendering/RenderView;->getContainerContext()Landroid/content/Context;

    move-result-object v1

    .line 532
    instance-of v1, v1, Landroid/app/Activity;

    if-nez v1, :cond_0

    .line 533
    invoke-virtual {p0, p1}, Lcom/inmobi/rendering/c;->getScreenSize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 573
    :goto_0
    return-object v1

    .line 535
    :cond_0
    iget-object v1, p0, Lcom/inmobi/rendering/c;->c:Lcom/inmobi/rendering/RenderView;

    invoke-virtual {v1}, Lcom/inmobi/rendering/RenderView;->getContainerContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    .line 538
    :cond_1
    const v3, 0x1020002

    invoke-virtual {v1, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    check-cast v1, Landroid/widget/FrameLayout;

    .line 539
    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v3

    invoke-static {v3}, Lcom/inmobi/commons/core/utilities/b/c;->b(I)I

    move-result v4

    .line 540
    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v3

    invoke-static {v3}, Lcom/inmobi/commons/core/utilities/b/c;->b(I)I

    move-result v3

    .line 545
    iget-object v5, p0, Lcom/inmobi/rendering/c;->c:Lcom/inmobi/rendering/RenderView;

    invoke-virtual {v5}, Lcom/inmobi/rendering/RenderView;->getFullScreenActivity()Landroid/app/Activity;

    move-result-object v5

    if-eqz v5, :cond_5

    if-eqz v4, :cond_2

    if-nez v3, :cond_5

    .line 546
    :cond_2
    new-instance v4, Lcom/inmobi/rendering/c$a;

    invoke-direct {v4, v1}, Lcom/inmobi/rendering/c$a;-><init>(Landroid/view/View;)V

    .line 547
    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 548
    invoke-static {v4}, Lcom/inmobi/rendering/c$a;->a(Lcom/inmobi/rendering/c$a;)Ljava/lang/Boolean;

    move-result-object v5

    monitor-enter v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 550
    :try_start_1
    invoke-static {v4}, Lcom/inmobi/rendering/c$a;->a(Lcom/inmobi/rendering/c$a;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 555
    :goto_1
    :try_start_2
    invoke-static {v4}, Lcom/inmobi/rendering/c$a;->b(Lcom/inmobi/rendering/c$a;)I

    move-result v3

    .line 556
    invoke-static {v4}, Lcom/inmobi/rendering/c$a;->c(Lcom/inmobi/rendering/c$a;)I

    move-result v1

    .line 557
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 561
    :goto_2
    :try_start_3
    const-string v4, "width"

    invoke-virtual {v2, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 562
    const-string v3, "height"

    invoke-virtual {v2, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 567
    :goto_3
    :try_start_4
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v1, "getMaxSize called:"

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    instance-of v1, v2, Lorg/json/JSONObject;

    if-nez v1, :cond_3

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_4
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 573
    :goto_5
    instance-of v1, v2, Lorg/json/JSONObject;

    if-nez v1, :cond_4

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 557
    :catchall_0
    move-exception v1

    :try_start_5
    monitor-exit v5
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    throw v1
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    .line 568
    :catch_0
    move-exception v1

    .line 569
    iget-object v3, p0, Lcom/inmobi/rendering/c;->c:Lcom/inmobi/rendering/RenderView;

    const-string v4, "Unexpected error"

    const-string v5, "getMaxSize"

    invoke-virtual {v3, p1, v4, v5}, Lcom/inmobi/rendering/RenderView;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 570
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "SDK encountered unexpected error in handling getMaxSize() request from creative; "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 571
    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_5

    .line 567
    :cond_3
    :try_start_7
    move-object v0, v2

    check-cast v0, Lorg/json/JSONObject;

    move-object v1, v0

    invoke-static {v1}, Lcom/newrelic/agent/android/instrumentation/JSONObjectInstrumentation;->toString(Lorg/json/JSONObject;)Ljava/lang/String;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0

    move-result-object v1

    goto :goto_4

    .line 573
    :cond_4
    check-cast v2, Lorg/json/JSONObject;

    invoke-static {v2}, Lcom/newrelic/agent/android/instrumentation/JSONObjectInstrumentation;->toString(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    :catch_1
    move-exception v1

    goto :goto_3

    :catch_2
    move-exception v1

    goto :goto_1

    :cond_5
    move v1, v3

    move v3, v4

    goto :goto_2
.end method

.method public getOrientation(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 1077
    invoke-static {}, Lcom/inmobi/commons/core/utilities/b/c;->b()I

    move-result v0

    .line 1078
    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 1079
    const-string v0, "0"

    .line 1087
    :goto_0
    return-object v0

    .line 1080
    :cond_0
    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 1081
    const-string v0, "90"

    goto :goto_0

    .line 1082
    :cond_1
    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 1083
    const-string v0, "180"

    goto :goto_0

    .line 1084
    :cond_2
    const/4 v1, 0x4

    if-ne v0, v1, :cond_3

    .line 1085
    const-string v0, "270"

    goto :goto_0

    .line 1087
    :cond_3
    const-string v0, "-1"

    goto :goto_0
.end method

.method public getOrientationProperties(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 427
    iget-object v0, p0, Lcom/inmobi/rendering/c;->e:Lcom/inmobi/rendering/mraid/g;

    .line 8050
    iget-object v0, v0, Lcom/inmobi/rendering/mraid/g;->d:Ljava/lang/String;

    .line 429
    return-object v0
.end method

.method public getPlacementType(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 633
    sget-object v0, Lcom/inmobi/ads/AdContainer$RenderingProperties$PlacementType;->PLACEMENT_TYPE_FULLSCREEN:Lcom/inmobi/ads/AdContainer$RenderingProperties$PlacementType;

    iget-object v1, p0, Lcom/inmobi/rendering/c;->d:Lcom/inmobi/ads/AdContainer$RenderingProperties;

    .line 10070
    iget-object v1, v1, Lcom/inmobi/ads/AdContainer$RenderingProperties;->a:Lcom/inmobi/ads/AdContainer$RenderingProperties$PlacementType;

    .line 633
    if-ne v0, v1, :cond_0

    .line 634
    const-string v0, "interstitial"

    .line 636
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "inline"

    goto :goto_0
.end method

.method public getPlatform(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 4053
    const-string v0, "android"

    .line 184
    return-object v0
.end method

.method public getPlatformVersion(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 176
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    .line 178
    return-object v0
.end method

.method public getResizeProperties(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 375
    iget-object v0, p0, Lcom/inmobi/rendering/c;->c:Lcom/inmobi/rendering/RenderView;

    if-nez v0, :cond_0

    .line 377
    const-string v0, ""

    .line 381
    :goto_0
    return-object v0

    .line 380
    :cond_0
    iget-object v0, p0, Lcom/inmobi/rendering/c;->c:Lcom/inmobi/rendering/RenderView;

    invoke-virtual {v0}, Lcom/inmobi/rendering/RenderView;->getResizeProperties()Lcom/inmobi/rendering/mraid/h;

    move-result-object v0

    .line 381
    if-nez v0, :cond_1

    const-string v0, ""

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Lcom/inmobi/rendering/mraid/h;->a()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getScreenSize(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 504
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 506
    :try_start_0
    const-string v1, "width"

    invoke-static {}, Lcom/inmobi/commons/core/utilities/b/c;->a()Lcom/inmobi/commons/core/utilities/b/d;

    move-result-object v2

    .line 9019
    iget v2, v2, Lcom/inmobi/commons/core/utilities/b/d;->a:I

    .line 506
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 507
    const-string v1, "height"

    invoke-static {}, Lcom/inmobi/commons/core/utilities/b/c;->a()Lcom/inmobi/commons/core/utilities/b/d;

    move-result-object v2

    .line 10015
    iget v2, v2, Lcom/inmobi/commons/core/utilities/b/d;->b:I

    .line 507
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 515
    :goto_0
    instance-of v1, v0, Lorg/json/JSONObject;

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    .line 517
    :goto_1
    return-object v0

    .line 510
    :catch_0
    move-exception v1

    .line 511
    iget-object v2, p0, Lcom/inmobi/rendering/c;->c:Lcom/inmobi/rendering/RenderView;

    const-string v3, "Unexpected error"

    const-string v4, "getScreenSize"

    invoke-virtual {v2, p1, v3, v4}, Lcom/inmobi/rendering/RenderView;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 512
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "SDK encountered unexpected error while getting screen dimensions; "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 513
    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 515
    :cond_0
    check-cast v0, Lorg/json/JSONObject;

    invoke-static {v0}, Lcom/newrelic/agent/android/instrumentation/JSONObjectInstrumentation;->toString(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 514
    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method public getSdkVersion(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 13045
    const-string v0, "7.0.2"

    .line 865
    return-object v0
.end method

.method public getState(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 497
    iget-object v0, p0, Lcom/inmobi/rendering/c;->c:Lcom/inmobi/rendering/RenderView;

    invoke-virtual {v0}, Lcom/inmobi/rendering/RenderView;->getState()Lcom/inmobi/rendering/RenderView$RenderViewState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/inmobi/rendering/RenderView$RenderViewState;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    .line 499
    return-object v0
.end method

.method public getVersion(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 7049
    const-string v0, "2.0"

    .line 348
    return-object v0
.end method

.method public incentCompleted(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 1034
    if-nez p2, :cond_0

    .line 1036
    :try_start_0
    iget-object v0, p0, Lcom/inmobi/rendering/c;->c:Lcom/inmobi/rendering/RenderView;

    invoke-virtual {v0}, Lcom/inmobi/rendering/RenderView;->getListener()Lcom/inmobi/rendering/RenderView$a;

    move-result-object v0

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-interface {v0, v1}, Lcom/inmobi/rendering/RenderView$a;->a(Ljava/util/HashMap;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1072
    :goto_0
    return-void

    .line 1037
    :catch_0
    move-exception v0

    .line 1038
    iget-object v1, p0, Lcom/inmobi/rendering/c;->c:Lcom/inmobi/rendering/RenderView;

    const-string v2, "Unexpected error"

    const-string v3, "incentCompleted"

    invoke-virtual {v1, p1, v2, v3}, Lcom/inmobi/rendering/RenderView;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1039
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "SDK encountered unexpected error in handling onUserInteraction() signal from creative; "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1040
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 1047
    :cond_0
    :try_start_1
    new-instance v0, Lorg/json/JSONObject;

    invoke-static {p2}, Lcom/newrelic/agent/android/instrumentation/JSONObjectInstrumentation;->init(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 1048
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 1049
    invoke-virtual {v1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v3

    .line 1051
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1052
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1053
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    .line 1054
    invoke-virtual {v2, v0, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    .line 1065
    :try_start_2
    iget-object v0, p0, Lcom/inmobi/rendering/c;->c:Lcom/inmobi/rendering/RenderView;

    invoke-virtual {v0}, Lcom/inmobi/rendering/RenderView;->getListener()Lcom/inmobi/rendering/RenderView$a;

    move-result-object v0

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-interface {v0, v1}, Lcom/inmobi/rendering/RenderView$a;->a(Ljava/util/HashMap;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_0

    .line 1066
    :catch_2
    move-exception v0

    .line 1067
    iget-object v1, p0, Lcom/inmobi/rendering/c;->c:Lcom/inmobi/rendering/RenderView;

    const-string v2, "Unexpected error"

    const-string v3, "incentCompleted"

    invoke-virtual {v1, p1, v2, v3}, Lcom/inmobi/rendering/RenderView;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1068
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "SDK encountered unexpected error in handling onUserInteraction() signal from creative; "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1069
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 1057
    :cond_1
    :try_start_3
    iget-object v0, p0, Lcom/inmobi/rendering/c;->c:Lcom/inmobi/rendering/RenderView;

    invoke-virtual {v0}, Lcom/inmobi/rendering/RenderView;->getListener()Lcom/inmobi/rendering/RenderView$a;

    move-result-object v0

    invoke-interface {v0, v2}, Lcom/inmobi/rendering/RenderView$a;->a(Ljava/util/HashMap;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    .line 1058
    :catch_3
    move-exception v0

    .line 1059
    :try_start_4
    iget-object v1, p0, Lcom/inmobi/rendering/c;->c:Lcom/inmobi/rendering/RenderView;

    const-string v2, "Unexpected error"

    const-string v3, "incentCompleted"

    invoke-virtual {v1, p1, v2, v3}, Lcom/inmobi/rendering/RenderView;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1060
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "SDK encountered unexpected error in handling onUserInteraction() signal from creative; "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1061
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_1

    goto/16 :goto_0
.end method

.method public isBackButtonDisabled(Ljava/lang/String;)Z
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 1285
    iget-object v0, p0, Lcom/inmobi/rendering/c;->c:Lcom/inmobi/rendering/RenderView;

    if-nez v0, :cond_0

    .line 1287
    const/4 v0, 0x0

    .line 1290
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/inmobi/rendering/c;->c:Lcom/inmobi/rendering/RenderView;

    .line 16956
    iget-boolean v0, v0, Lcom/inmobi/rendering/RenderView;->q:Z

    goto :goto_0
.end method

.method public isDeviceMuted(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 1131
    iget-object v0, p0, Lcom/inmobi/rendering/c;->c:Lcom/inmobi/rendering/RenderView;

    if-nez v0, :cond_0

    .line 1133
    const-string v0, "false"

    .line 1143
    :goto_0
    return-object v0

    .line 1136
    :cond_0
    const/4 v0, 0x0

    .line 1138
    :try_start_0
    iget-object v1, p0, Lcom/inmobi/rendering/c;->c:Lcom/inmobi/rendering/RenderView;

    invoke-virtual {v1}, Lcom/inmobi/rendering/RenderView;->getMediaProcessor()Lcom/inmobi/rendering/mraid/MraidMediaProcessor;

    invoke-static {}, Lcom/inmobi/rendering/mraid/MraidMediaProcessor;->a()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 1143
    :goto_1
    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1139
    :catch_0
    move-exception v1

    .line 1140
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "SDK encountered unexpected error in checking if device is muted; "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1141
    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1
.end method

.method public isHeadphonePlugged(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 1148
    iget-object v0, p0, Lcom/inmobi/rendering/c;->c:Lcom/inmobi/rendering/RenderView;

    if-nez v0, :cond_0

    .line 1150
    const-string v0, "false"

    .line 1160
    :goto_0
    return-object v0

    .line 1153
    :cond_0
    const/4 v0, 0x0

    .line 1155
    :try_start_0
    iget-object v1, p0, Lcom/inmobi/rendering/c;->c:Lcom/inmobi/rendering/RenderView;

    invoke-virtual {v1}, Lcom/inmobi/rendering/RenderView;->getMediaProcessor()Lcom/inmobi/rendering/mraid/MraidMediaProcessor;

    invoke-static {}, Lcom/inmobi/rendering/mraid/MraidMediaProcessor;->e()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 1160
    :goto_1
    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1156
    :catch_0
    move-exception v1

    .line 1157
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "SDK encountered unexpected error in checking if headphones are plugged-in; "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1158
    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1
.end method

.method public isViewable(Ljava/lang/String;)Z
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 439
    iget-object v0, p0, Lcom/inmobi/rendering/c;->c:Lcom/inmobi/rendering/RenderView;

    if-nez v0, :cond_0

    .line 441
    const/4 v0, 0x0

    .line 444
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/inmobi/rendering/c;->c:Lcom/inmobi/rendering/RenderView;

    .line 8328
    iget-boolean v0, v0, Lcom/inmobi/rendering/RenderView;->o:Z

    goto :goto_0
.end method

.method public log(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 172
    return-void
.end method

.method public onOrientationChange(Ljava/lang/String;)V
    .locals 0
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 435
    return-void
.end method

.method public onUserInteraction(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 990
    if-nez p2, :cond_0

    .line 992
    :try_start_0
    iget-object v0, p0, Lcom/inmobi/rendering/c;->c:Lcom/inmobi/rendering/RenderView;

    invoke-virtual {v0}, Lcom/inmobi/rendering/RenderView;->getListener()Lcom/inmobi/rendering/RenderView$a;

    move-result-object v0

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-interface {v0, v1}, Lcom/inmobi/rendering/RenderView$a;->b(Ljava/util/HashMap;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1028
    :goto_0
    return-void

    .line 993
    :catch_0
    move-exception v0

    .line 994
    iget-object v1, p0, Lcom/inmobi/rendering/c;->c:Lcom/inmobi/rendering/RenderView;

    const-string v2, "Unexpected error"

    const-string v3, "onUserInteraction"

    invoke-virtual {v1, p1, v2, v3}, Lcom/inmobi/rendering/RenderView;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 995
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "SDK encountered unexpected error in handling onUserInteraction() signal from creative; "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 996
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 1002
    :cond_0
    :try_start_1
    new-instance v0, Lorg/json/JSONObject;

    invoke-static {p2}, Lcom/newrelic/agent/android/instrumentation/JSONObjectInstrumentation;->init(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 1003
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 1004
    invoke-virtual {v1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v3

    .line 1006
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1007
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1008
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    .line 1009
    invoke-virtual {v2, v0, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    .line 1020
    :try_start_2
    iget-object v0, p0, Lcom/inmobi/rendering/c;->c:Lcom/inmobi/rendering/RenderView;

    invoke-virtual {v0}, Lcom/inmobi/rendering/RenderView;->getListener()Lcom/inmobi/rendering/RenderView$a;

    move-result-object v0

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-interface {v0, v1}, Lcom/inmobi/rendering/RenderView$a;->b(Ljava/util/HashMap;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_0

    .line 1021
    :catch_2
    move-exception v0

    .line 1022
    iget-object v1, p0, Lcom/inmobi/rendering/c;->c:Lcom/inmobi/rendering/RenderView;

    const-string v2, "Unexpected error"

    const-string v3, "onUserInteraction"

    invoke-virtual {v1, p1, v2, v3}, Lcom/inmobi/rendering/RenderView;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1023
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "SDK encountered unexpected error in handling onUserInteraction() signal from creative; "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1025
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 1012
    :cond_1
    :try_start_3
    iget-object v0, p0, Lcom/inmobi/rendering/c;->c:Lcom/inmobi/rendering/RenderView;

    invoke-virtual {v0}, Lcom/inmobi/rendering/RenderView;->getListener()Lcom/inmobi/rendering/RenderView$a;

    move-result-object v0

    invoke-interface {v0, v2}, Lcom/inmobi/rendering/RenderView$a;->b(Ljava/util/HashMap;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    .line 1013
    :catch_3
    move-exception v0

    .line 1014
    :try_start_4
    iget-object v1, p0, Lcom/inmobi/rendering/c;->c:Lcom/inmobi/rendering/RenderView;

    const-string v2, "Unexpected error"

    const-string v3, "onUserInteraction"

    invoke-virtual {v1, p1, v2, v3}, Lcom/inmobi/rendering/RenderView;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1015
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "SDK encountered unexpected error in handling onUserInteraction() signal from creative; "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1016
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_1

    goto/16 :goto_0
.end method

.method public open(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 77
    iget-object v0, p0, Lcom/inmobi/rendering/c;->c:Lcom/inmobi/rendering/RenderView;

    if-nez v0, :cond_0

    .line 96
    :goto_0
    return-void

    .line 82
    :cond_0
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/inmobi/rendering/c;->c:Lcom/inmobi/rendering/RenderView;

    invoke-virtual {v1}, Lcom/inmobi/rendering/RenderView;->getContainerContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/inmobi/rendering/c$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/inmobi/rendering/c$1;-><init>(Lcom/inmobi/rendering/c;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public openEmbedded(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 100
    iget-object v0, p0, Lcom/inmobi/rendering/c;->c:Lcom/inmobi/rendering/RenderView;

    if-nez v0, :cond_0

    .line 119
    :goto_0
    return-void

    .line 105
    :cond_0
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/inmobi/rendering/c;->c:Lcom/inmobi/rendering/RenderView;

    invoke-virtual {v1}, Lcom/inmobi/rendering/RenderView;->getContainerContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/inmobi/rendering/c$7;

    invoke-direct {v1, p0, p1, p2}, Lcom/inmobi/rendering/c$7;-><init>(Lcom/inmobi/rendering/c;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public openExternal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 881
    iget-object v0, p0, Lcom/inmobi/rendering/c;->c:Lcom/inmobi/rendering/RenderView;

    if-nez v0, :cond_0

    .line 915
    :goto_0
    return-void

    .line 888
    :cond_0
    if-eqz p2, :cond_1

    const-string v0, "http"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p2}, Landroid/webkit/URLUtil;->isValidUrl(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    .line 889
    :goto_1
    if-eqz v0, :cond_3

    .line 890
    if-eqz p3, :cond_2

    const-string v0, "http"

    invoke-virtual {p3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {p3}, Landroid/webkit/URLUtil;->isValidUrl(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 891
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "openExternal called with invalid url ("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 892
    iget-object v0, p0, Lcom/inmobi/rendering/c;->c:Lcom/inmobi/rendering/RenderView;

    const-string v1, "Invalid URL"

    const-string v2, "openExternal"

    invoke-virtual {v0, p1, v1, v2}, Lcom/inmobi/rendering/RenderView;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 888
    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    .line 895
    :cond_2
    :try_start_0
    iget-object v0, p0, Lcom/inmobi/rendering/c;->c:Lcom/inmobi/rendering/RenderView;

    const-string v1, "openExternal"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, p3, v2}, Lcom/inmobi/rendering/RenderView;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 896
    :catch_0
    move-exception v0

    .line 897
    iget-object v1, p0, Lcom/inmobi/rendering/c;->c:Lcom/inmobi/rendering/RenderView;

    const-string v2, "Unexpected error"

    const-string v3, "openExternal"

    invoke-virtual {v1, p1, v2, v3}, Lcom/inmobi/rendering/RenderView;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 898
    sget-object v1, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->ERROR:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    const-string v2, "InMobi"

    const-string v3, "Could not open URL; SDK encountered an unexpected error"

    invoke-static {v1, v2, v3}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 900
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "SDK encountered unexpected error in handling openExternal() request from creative; "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 901
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 906
    :cond_3
    :try_start_1
    iget-object v0, p0, Lcom/inmobi/rendering/c;->c:Lcom/inmobi/rendering/RenderView;

    const-string v1, "openExternal"

    invoke-virtual {v0, v1, p1, p2, p3}, Lcom/inmobi/rendering/RenderView;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 907
    :catch_1
    move-exception v0

    .line 908
    iget-object v1, p0, Lcom/inmobi/rendering/c;->c:Lcom/inmobi/rendering/RenderView;

    const-string v2, "Unexpected error"

    const-string v3, "openExternal"

    invoke-virtual {v1, p1, v2, v3}, Lcom/inmobi/rendering/RenderView;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 909
    sget-object v1, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->ERROR:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    const-string v2, "InMobi"

    const-string v3, "Could not open URL; SDK encountered an unexpected error"

    invoke-static {v1, v2, v3}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 911
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "SDK encountered unexpected error in handling openExternal() request from creative; "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 912
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0
.end method

.method public ping(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 4
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 123
    iget-object v0, p0, Lcom/inmobi/rendering/c;->c:Lcom/inmobi/rendering/RenderView;

    if-nez v0, :cond_0

    .line 143
    :goto_0
    return-void

    .line 128
    :cond_0
    if-eqz p2, :cond_1

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p2}, Landroid/webkit/URLUtil;->isValidUrl(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 129
    :cond_1
    iget-object v0, p0, Lcom/inmobi/rendering/c;->c:Lcom/inmobi/rendering/RenderView;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Invalid URL:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ping"

    invoke-virtual {v0, p1, v1, v2}, Lcom/inmobi/rendering/RenderView;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 133
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "JavaScript called ping() URL: >>> "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " <<<"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 135
    :try_start_0
    invoke-static {}, Lcom/inmobi/rendering/a/c;->a()Lcom/inmobi/rendering/a/c;

    move-result-object v0

    .line 2140
    new-instance v1, Lcom/inmobi/rendering/a/c$1;

    invoke-direct {v1, v0, p2, p3}, Lcom/inmobi/rendering/a/c$1;-><init>(Lcom/inmobi/rendering/a/c;Ljava/lang/String;Z)V

    .line 2156
    invoke-virtual {v1}, Lcom/inmobi/rendering/a/c$1;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 136
    :catch_0
    move-exception v0

    .line 137
    iget-object v1, p0, Lcom/inmobi/rendering/c;->c:Lcom/inmobi/rendering/RenderView;

    const-string v2, "Unexpected error"

    const-string v3, "ping"

    invoke-virtual {v1, p1, v2, v3}, Lcom/inmobi/rendering/RenderView;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    sget-object v1, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->ERROR:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    const-string v2, "InMobi"

    const-string v3, "Failed to fire ping; SDK encountered unexpected error"

    invoke-static {v1, v2, v3}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "SDK encountered unexpected error in handling ping() request from creative; "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 141
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method public pingInWebView(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 4
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 147
    iget-object v0, p0, Lcom/inmobi/rendering/c;->c:Lcom/inmobi/rendering/RenderView;

    if-nez v0, :cond_0

    .line 167
    :goto_0
    return-void

    .line 152
    :cond_0
    if-eqz p2, :cond_1

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p2}, Landroid/webkit/URLUtil;->isValidUrl(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 153
    :cond_1
    iget-object v0, p0, Lcom/inmobi/rendering/c;->c:Lcom/inmobi/rendering/RenderView;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Invalid URL:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "pingInWebView"

    invoke-virtual {v0, p1, v1, v2}, Lcom/inmobi/rendering/RenderView;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 157
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "JavaScript called pingInWebView() URL: >>> "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " <<<"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 159
    :try_start_0
    invoke-static {}, Lcom/inmobi/rendering/a/c;->a()Lcom/inmobi/rendering/a/c;

    move-result-object v0

    .line 2181
    new-instance v1, Lcom/inmobi/rendering/a/c$3;

    invoke-direct {v1, v0, p2, p3}, Lcom/inmobi/rendering/a/c$3;-><init>(Lcom/inmobi/rendering/a/c;Ljava/lang/String;Z)V

    .line 2197
    invoke-virtual {v1}, Lcom/inmobi/rendering/a/c$3;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 160
    :catch_0
    move-exception v0

    .line 161
    iget-object v1, p0, Lcom/inmobi/rendering/c;->c:Lcom/inmobi/rendering/RenderView;

    const-string v2, "Unexpected error"

    const-string v3, "pingInWebView"

    invoke-virtual {v1, p1, v2, v3}, Lcom/inmobi/rendering/RenderView;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    sget-object v1, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->ERROR:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    const-string v2, "InMobi"

    const-string v3, "Failed to fire ping; SDK encountered unexpected error"

    invoke-static {v1, v2, v3}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "SDK encountered unexpected error in handling pingInWebView() request from creative; "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 165
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method public playVideo(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 466
    iget-object v0, p0, Lcom/inmobi/rendering/c;->c:Lcom/inmobi/rendering/RenderView;

    if-nez v0, :cond_0

    .line 493
    :goto_0
    return-void

    .line 471
    :cond_0
    if-eqz p2, :cond_1

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "http"

    .line 472
    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "mp4"

    .line 473
    invoke-virtual {p2, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "avi"

    invoke-virtual {p2, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "m4v"

    invoke-virtual {p2, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 474
    :cond_1
    iget-object v0, p0, Lcom/inmobi/rendering/c;->c:Lcom/inmobi/rendering/RenderView;

    const-string v1, "Null or empty or invalid media playback URL supplied"

    const-string v2, "playVideo"

    invoke-virtual {v0, p1, v1, v2}, Lcom/inmobi/rendering/RenderView;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 478
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "JavaScript called: playVideo ("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 479
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/inmobi/rendering/c;->c:Lcom/inmobi/rendering/RenderView;

    invoke-virtual {v1}, Lcom/inmobi/rendering/RenderView;->getContainerContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/inmobi/rendering/c$13;

    invoke-direct {v1, p0, p1, p2}, Lcom/inmobi/rendering/c$13;-><init>(Lcom/inmobi/rendering/c;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public postToSocial(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 843
    iget-object v0, p0, Lcom/inmobi/rendering/c;->c:Lcom/inmobi/rendering/RenderView;

    if-nez v0, :cond_1

    .line 11237
    :cond_0
    :goto_0
    return-void

    .line 848
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "postToSocial called with parameters: socialType: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "; text: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "; link: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "; image URL: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 852
    :try_start_0
    iget-object v0, p0, Lcom/inmobi/rendering/c;->c:Lcom/inmobi/rendering/RenderView;

    .line 10425
    const-string v1, "postToSocial"

    invoke-virtual {v0, v1}, Lcom/inmobi/rendering/RenderView;->d(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 10430
    iget-object v1, v0, Lcom/inmobi/rendering/RenderView;->i:Lcom/inmobi/rendering/mraid/i;

    invoke-virtual {v0}, Lcom/inmobi/rendering/RenderView;->getContainerContext()Landroid/content/Context;

    move-result-object v2

    .line 11194
    if-eqz p3, :cond_2

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_2

    if-eqz p4, :cond_2

    .line 11195
    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "http"

    invoke-virtual {p4, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    if-eqz p5, :cond_2

    .line 11196
    invoke-virtual {p5}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "http"

    invoke-virtual {p5, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, ".jpg"

    invoke-virtual {p5, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 11197
    :cond_2
    iget-object v0, v1, Lcom/inmobi/rendering/mraid/i;->a:Lcom/inmobi/rendering/RenderView;

    const-string v1, "Attempting to share with null/empty/invalid parameters"

    const-string v2, "postToSocial"

    invoke-virtual {v0, p1, v1, v2}, Lcom/inmobi/rendering/RenderView;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 853
    :catch_0
    move-exception v0

    .line 854
    iget-object v1, p0, Lcom/inmobi/rendering/c;->c:Lcom/inmobi/rendering/RenderView;

    const-string v2, "Unexpected error"

    const-string v3, "postToSocial"

    invoke-virtual {v1, p1, v2, v3}, Lcom/inmobi/rendering/RenderView;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 855
    sget-object v1, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->ERROR:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    const-string v2, "InMobi"

    const-string v3, "Could not post to social network; SDK encountered an unexpected error"

    invoke-static {v1, v2, v3}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 857
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "SDK encountered an unexpected error in handling the postToSocial() request from creative; "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 858
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 11203
    :cond_3
    const/4 v0, 0x0

    .line 11204
    packed-switch p2, :pswitch_data_0

    .line 11228
    :try_start_1
    iget-object v0, v1, Lcom/inmobi/rendering/mraid/i;->a:Lcom/inmobi/rendering/RenderView;

    const-string v1, "Unsupported type of social network"

    const-string v2, "postToSocial"

    invoke-virtual {v0, p1, v1, v2}, Lcom/inmobi/rendering/RenderView;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 11209
    :pswitch_0
    invoke-static {}, Lcom/inmobi/rendering/mraid/i;->a()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 11210
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 11211
    new-instance v1, Lcom/google/android/gms/plus/PlusShare$Builder;

    invoke-direct {v1, v2}, Lcom/google/android/gms/plus/PlusShare$Builder;-><init>(Landroid/content/Context;)V

    const-string v3, "text/plain"

    .line 11212
    invoke-virtual {v1, v3}, Lcom/google/android/gms/plus/PlusShare$Builder;->setType(Ljava/lang/String;)Lcom/google/android/gms/plus/PlusShare$Builder;

    move-result-object v1

    .line 11213
    invoke-virtual {v1, v0}, Lcom/google/android/gms/plus/PlusShare$Builder;->setText(Ljava/lang/CharSequence;)Lcom/google/android/gms/plus/PlusShare$Builder;

    move-result-object v0

    .line 11214
    invoke-static {p5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/plus/PlusShare$Builder;->setContentUrl(Landroid/net/Uri;)Lcom/google/android/gms/plus/PlusShare$Builder;

    move-result-object v0

    .line 11215
    invoke-virtual {v0}, Lcom/google/android/gms/plus/PlusShare$Builder;->getIntent()Landroid/content/Intent;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    .line 11232
    :cond_4
    :goto_1
    :pswitch_1
    if-eqz v0, :cond_5

    .line 11234
    :try_start_2
    invoke-static {v2, v0}, Lcom/inmobi/commons/a/a;->a(Landroid/content/Context;Landroid/content/Intent;)V
    :try_end_2
    .catch Landroid/content/ActivityNotFoundException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_0

    :catch_1
    move-exception v0

    .line 11239
    :cond_5
    :try_start_3
    invoke-static {v2, p2, p3, p4, p5}, Lcom/inmobi/rendering/mraid/i;->a(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 11219
    :pswitch_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 11220
    const-string v3, "com.twitter.android"

    .line 11221
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 11222
    const-string v4, "text/plain"

    invoke-virtual {v0, v4}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 11223
    invoke-virtual {v0, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 11224
    const-string v3, "android.intent.extra.TEXT"

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_1

    .line 11204
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public registerBackButtonPressedEventListener(Ljava/lang/String;)V
    .locals 4
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 1295
    iget-object v0, p0, Lcom/inmobi/rendering/c;->c:Lcom/inmobi/rendering/RenderView;

    if-nez v0, :cond_0

    .line 1307
    :goto_0
    return-void

    .line 1301
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/inmobi/rendering/c;->c:Lcom/inmobi/rendering/RenderView;

    .line 16960
    iput-object p1, v0, Lcom/inmobi/rendering/RenderView;->r:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1302
    :catch_0
    move-exception v0

    .line 1303
    iget-object v1, p0, Lcom/inmobi/rendering/c;->c:Lcom/inmobi/rendering/RenderView;

    const-string v2, "Unexpected error"

    const-string v3, "registerBackButtonPressedEventListener"

    invoke-virtual {v1, p1, v2, v3}, Lcom/inmobi/rendering/RenderView;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1304
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "SDK encountered unexpected error in handling registerBackButtonPressedEventListener() request from creative; "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1305
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method public registerBroadcastListener(Ljava/lang/String;)V
    .locals 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 717
    invoke-static {}, Lcom/inmobi/commons/a/a;->b()Landroid/content/Context;

    move-result-object v0

    .line 718
    if-nez v0, :cond_1

    .line 756
    :cond_0
    :goto_0
    return-void

    .line 719
    :cond_1
    iget-object v1, p0, Lcom/inmobi/rendering/c;->g:Landroid/content/BroadcastReceiver;

    if-nez v1, :cond_0

    .line 720
    new-instance v1, Lcom/inmobi/rendering/c$3;

    invoke-direct {v1, p0, p1}, Lcom/inmobi/rendering/c$3;-><init>(Lcom/inmobi/rendering/c;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/inmobi/rendering/c;->g:Landroid/content/BroadcastReceiver;

    .line 753
    iget-object v1, p0, Lcom/inmobi/rendering/c;->g:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.DOWNLOAD_COMPLETE"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    goto :goto_0
.end method

.method public registerDeviceMuteEventListener(Ljava/lang/String;)V
    .locals 4
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 1165
    iget-object v0, p0, Lcom/inmobi/rendering/c;->c:Lcom/inmobi/rendering/RenderView;

    if-nez v0, :cond_1

    .line 1176
    :cond_0
    :goto_0
    return-void

    .line 1170
    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/inmobi/rendering/c;->c:Lcom/inmobi/rendering/RenderView;

    invoke-virtual {v0}, Lcom/inmobi/rendering/RenderView;->getMediaProcessor()Lcom/inmobi/rendering/mraid/MraidMediaProcessor;

    move-result-object v0

    .line 16189
    invoke-static {}, Lcom/inmobi/commons/a/a;->b()Landroid/content/Context;

    move-result-object v1

    .line 16190
    if-eqz v1, :cond_0

    .line 16191
    iget-object v2, v0, Lcom/inmobi/rendering/mraid/MraidMediaProcessor;->b:Lcom/inmobi/rendering/mraid/MraidMediaProcessor$RingerModeChangeReceiver;

    if-nez v2, :cond_0

    .line 16192
    new-instance v2, Lcom/inmobi/rendering/mraid/MraidMediaProcessor$RingerModeChangeReceiver;

    invoke-direct {v2, v0, p1}, Lcom/inmobi/rendering/mraid/MraidMediaProcessor$RingerModeChangeReceiver;-><init>(Lcom/inmobi/rendering/mraid/MraidMediaProcessor;Ljava/lang/String;)V

    iput-object v2, v0, Lcom/inmobi/rendering/mraid/MraidMediaProcessor;->b:Lcom/inmobi/rendering/mraid/MraidMediaProcessor$RingerModeChangeReceiver;

    .line 16193
    iget-object v0, v0, Lcom/inmobi/rendering/mraid/MraidMediaProcessor;->b:Lcom/inmobi/rendering/mraid/MraidMediaProcessor$RingerModeChangeReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.media.RINGER_MODE_CHANGED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1171
    :catch_0
    move-exception v0

    .line 1172
    iget-object v1, p0, Lcom/inmobi/rendering/c;->c:Lcom/inmobi/rendering/RenderView;

    const-string v2, "Unexpected error"

    const-string v3, "registerDeviceMuteEventListener"

    invoke-virtual {v1, p1, v2, v3}, Lcom/inmobi/rendering/RenderView;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1173
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "SDK encountered unexpected error in handling registerDeviceMuteEventListener() request from creative; "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1174
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method public registerDeviceVolumeChangeEventListener(Ljava/lang/String;)V
    .locals 4
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 1196
    iget-object v0, p0, Lcom/inmobi/rendering/c;->c:Lcom/inmobi/rendering/RenderView;

    if-nez v0, :cond_1

    .line 1207
    :cond_0
    :goto_0
    return-void

    .line 1201
    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/inmobi/rendering/c;->c:Lcom/inmobi/rendering/RenderView;

    invoke-virtual {v0}, Lcom/inmobi/rendering/RenderView;->getMediaProcessor()Lcom/inmobi/rendering/mraid/MraidMediaProcessor;

    move-result-object v0

    .line 16208
    invoke-static {}, Lcom/inmobi/commons/a/a;->b()Landroid/content/Context;

    move-result-object v1

    .line 16209
    if-eqz v1, :cond_0

    .line 16210
    iget-object v2, v0, Lcom/inmobi/rendering/mraid/MraidMediaProcessor;->c:Lcom/inmobi/rendering/mraid/MraidMediaProcessor$a;

    if-nez v2, :cond_0

    .line 16211
    new-instance v2, Lcom/inmobi/rendering/mraid/MraidMediaProcessor$a;

    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    invoke-direct {v2, v0, p1, v1, v3}, Lcom/inmobi/rendering/mraid/MraidMediaProcessor$a;-><init>(Lcom/inmobi/rendering/mraid/MraidMediaProcessor;Ljava/lang/String;Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v2, v0, Lcom/inmobi/rendering/mraid/MraidMediaProcessor;->c:Lcom/inmobi/rendering/mraid/MraidMediaProcessor$a;

    .line 16212
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/provider/Settings$System;->CONTENT_URI:Landroid/net/Uri;

    const/4 v3, 0x1

    iget-object v0, v0, Lcom/inmobi/rendering/mraid/MraidMediaProcessor;->c:Lcom/inmobi/rendering/mraid/MraidMediaProcessor$a;

    invoke-virtual {v1, v2, v3, v0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1202
    :catch_0
    move-exception v0

    .line 1203
    iget-object v1, p0, Lcom/inmobi/rendering/c;->c:Lcom/inmobi/rendering/RenderView;

    const-string v2, "Unexpected error"

    const-string v3, "registerDeviceVolumeChangeEventListener"

    invoke-virtual {v1, p1, v2, v3}, Lcom/inmobi/rendering/RenderView;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1204
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "SDK encountered unexpected error in handling registerDeviceVolumeChangeEventListener() request from creative; "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1205
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method public registerDownloaderCallbacks(Ljava/lang/String;)V
    .locals 4
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 1348
    iget-object v0, p0, Lcom/inmobi/rendering/c;->c:Lcom/inmobi/rendering/RenderView;

    if-nez v0, :cond_1

    .line 1360
    :cond_0
    :goto_0
    return-void

    .line 1354
    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/inmobi/rendering/c;->c:Lcom/inmobi/rendering/RenderView;

    .line 18925
    invoke-virtual {v1}, Lcom/inmobi/rendering/RenderView;->getReferenceContainer()Lcom/inmobi/ads/AdContainer;

    move-result-object v0

    .line 18926
    instance-of v2, v0, Lcom/inmobi/ads/ac;

    if-eqz v2, :cond_0

    .line 18927
    check-cast v0, Lcom/inmobi/ads/ac;

    invoke-virtual {v0, v1}, Lcom/inmobi/ads/ac;->a(Lcom/inmobi/rendering/RenderView;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1355
    :catch_0
    move-exception v0

    .line 1356
    iget-object v1, p0, Lcom/inmobi/rendering/c;->c:Lcom/inmobi/rendering/RenderView;

    const-string v2, "Unexpected error"

    const-string v3, "registerDownloaderCallbacks"

    invoke-virtual {v1, p1, v2, v3}, Lcom/inmobi/rendering/RenderView;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1357
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "SDK encountered unexpected error in handling registerDownloaderCallbacks() request from creative; "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1358
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method public registerHeadphonePluggedEventListener(Ljava/lang/String;)V
    .locals 4
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 1243
    iget-object v0, p0, Lcom/inmobi/rendering/c;->c:Lcom/inmobi/rendering/RenderView;

    if-nez v0, :cond_1

    .line 1254
    :cond_0
    :goto_0
    return-void

    .line 1248
    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/inmobi/rendering/c;->c:Lcom/inmobi/rendering/RenderView;

    invoke-virtual {v0}, Lcom/inmobi/rendering/RenderView;->getMediaProcessor()Lcom/inmobi/rendering/mraid/MraidMediaProcessor;

    move-result-object v0

    .line 16241
    invoke-static {}, Lcom/inmobi/commons/a/a;->b()Landroid/content/Context;

    move-result-object v1

    .line 16242
    if-eqz v1, :cond_0

    .line 16243
    iget-object v2, v0, Lcom/inmobi/rendering/mraid/MraidMediaProcessor;->d:Lcom/inmobi/rendering/mraid/MraidMediaProcessor$HeadphonesPluggedChangeReceiver;

    if-nez v2, :cond_0

    .line 16244
    new-instance v2, Lcom/inmobi/rendering/mraid/MraidMediaProcessor$HeadphonesPluggedChangeReceiver;

    invoke-direct {v2, v0, p1}, Lcom/inmobi/rendering/mraid/MraidMediaProcessor$HeadphonesPluggedChangeReceiver;-><init>(Lcom/inmobi/rendering/mraid/MraidMediaProcessor;Ljava/lang/String;)V

    iput-object v2, v0, Lcom/inmobi/rendering/mraid/MraidMediaProcessor;->d:Lcom/inmobi/rendering/mraid/MraidMediaProcessor$HeadphonesPluggedChangeReceiver;

    .line 16245
    iget-object v0, v0, Lcom/inmobi/rendering/mraid/MraidMediaProcessor;->d:Lcom/inmobi/rendering/mraid/MraidMediaProcessor$HeadphonesPluggedChangeReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.HEADSET_PLUG"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1249
    :catch_0
    move-exception v0

    .line 1250
    iget-object v1, p0, Lcom/inmobi/rendering/c;->c:Lcom/inmobi/rendering/RenderView;

    const-string v2, "Unexpected error"

    const-string v3, "registerHeadphonePluggedEventListener"

    invoke-virtual {v1, p1, v2, v3}, Lcom/inmobi/rendering/RenderView;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1251
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "SDK encountered unexpected error in handling registerHeadphonePluggedEventListener() request from creative; "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1252
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method public resize(Ljava/lang/String;)V
    .locals 3
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 388
    iget-object v0, p0, Lcom/inmobi/rendering/c;->d:Lcom/inmobi/ads/AdContainer$RenderingProperties;

    .line 7070
    iget-object v0, v0, Lcom/inmobi/ads/AdContainer$RenderingProperties;->a:Lcom/inmobi/ads/AdContainer$RenderingProperties$PlacementType;

    .line 388
    sget-object v1, Lcom/inmobi/ads/AdContainer$RenderingProperties$PlacementType;->PLACEMENT_TYPE_FULLSCREEN:Lcom/inmobi/ads/AdContainer$RenderingProperties$PlacementType;

    if-eq v0, v1, :cond_0

    .line 389
    iget-object v0, p0, Lcom/inmobi/rendering/c;->c:Lcom/inmobi/rendering/RenderView;

    if-nez v0, :cond_1

    .line 413
    :cond_0
    :goto_0
    return-void

    .line 394
    :cond_1
    iget-object v0, p0, Lcom/inmobi/rendering/c;->c:Lcom/inmobi/rendering/RenderView;

    .line 7328
    iget-boolean v0, v0, Lcom/inmobi/rendering/RenderView;->o:Z

    .line 394
    if-eqz v0, :cond_2

    .line 395
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/inmobi/rendering/c;->c:Lcom/inmobi/rendering/RenderView;

    invoke-virtual {v1}, Lcom/inmobi/rendering/RenderView;->getContainerContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/inmobi/rendering/c$11;

    invoke-direct {v1, p0, p1}, Lcom/inmobi/rendering/c$11;-><init>(Lcom/inmobi/rendering/c;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 410
    :cond_2
    iget-object v0, p0, Lcom/inmobi/rendering/c;->c:Lcom/inmobi/rendering/RenderView;

    const-string v1, "Creative is not visible. Ignoring request."

    const-string v2, "resize"

    invoke-virtual {v0, p1, v1, v2}, Lcom/inmobi/rendering/RenderView;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public saveBlob(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 1468
    iget-object v0, p0, Lcom/inmobi/rendering/c;->c:Lcom/inmobi/rendering/RenderView;

    if-nez v0, :cond_1

    .line 1473
    :cond_0
    :goto_0
    return-void

    .line 1472
    :cond_1
    iget-object v0, p0, Lcom/inmobi/rendering/c;->c:Lcom/inmobi/rendering/RenderView;

    .line 21018
    iget-object v1, v0, Lcom/inmobi/rendering/RenderView;->u:Lcom/inmobi/rendering/a;

    if-eqz v1, :cond_0

    .line 21019
    iget-object v0, v0, Lcom/inmobi/rendering/RenderView;->u:Lcom/inmobi/rendering/a;

    invoke-interface {v0, p2}, Lcom/inmobi/rendering/a;->f(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public saveContent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 1092
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p3, :cond_0

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_4

    .line 1094
    :cond_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 1096
    :try_start_0
    const-string v1, "url"

    if-nez p3, :cond_1

    const-string p3, ""

    :cond_1
    invoke-virtual {v0, v1, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1097
    const-string v1, "reason"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_2

    .line 1101
    :goto_0
    instance-of v1, v0, Lorg/json/JSONObject;

    if-nez v1, :cond_3

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1
    const-string v1, "\""

    const-string v2, "\\\""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 1103
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "sendSaveContentResult(\"saveContent_"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-nez p2, :cond_2

    const-string p2, ""

    :cond_2
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\", \'failed\', \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\");"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1104
    iget-object v1, p0, Lcom/inmobi/rendering/c;->c:Lcom/inmobi/rendering/RenderView;

    invoke-virtual {v1, p1, v0}, Lcom/inmobi/rendering/RenderView;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 14825
    :goto_2
    return-void

    .line 1101
    :cond_3
    check-cast v0, Lorg/json/JSONObject;

    invoke-static {v0}, Lcom/newrelic/agent/android/instrumentation/JSONObjectInstrumentation;->toString(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 1109
    :cond_4
    :try_start_1
    iget-object v1, p0, Lcom/inmobi/rendering/c;->c:Lcom/inmobi/rendering/RenderView;

    .line 14813
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "saveContent called: content ID: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "; URL: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14814
    const-string v0, "saveContent"

    invoke-virtual {v1, v0}, Lcom/inmobi/rendering/RenderView;->d(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 14816
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 14818
    :try_start_2
    const-string v2, "url"

    invoke-virtual {v0, v2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 14819
    const-string v2, "reason"

    const/4 v3, 0x5

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 14822
    :goto_3
    :try_start_3
    instance-of v2, v0, Lorg/json/JSONObject;

    if-nez v2, :cond_5

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_4
    const-string v2, "\""

    const-string v3, "\\\""

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 14823
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "sendSaveContentResult(\"saveContent_"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\", \'failed\', \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\");"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 14824
    invoke-virtual {v1, p1, v0}, Lcom/inmobi/rendering/RenderView;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_2

    .line 1110
    :catch_0
    move-exception v0

    .line 1111
    iget-object v1, p0, Lcom/inmobi/rendering/c;->c:Lcom/inmobi/rendering/RenderView;

    const-string v2, "Unexpected error"

    const-string v3, "saveContent"

    invoke-virtual {v1, p1, v2, v3}, Lcom/inmobi/rendering/RenderView;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1112
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "SDK encountered unexpected error in handling saveContent() request from creative; "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1113
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_2

    .line 14822
    :cond_5
    :try_start_4
    check-cast v0, Lorg/json/JSONObject;

    invoke-static {v0}, Lcom/newrelic/agent/android/instrumentation/JSONObjectInstrumentation;->toString(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    .line 14827
    :cond_6
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 14828
    invoke-interface {v0, p3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 14829
    new-instance v2, Lcom/inmobi/ads/cache/b;

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v1, v1, Lcom/inmobi/rendering/RenderView;->w:Lcom/inmobi/ads/cache/f;

    invoke-direct {v2, v3, v0, v1, p2}, Lcom/inmobi/ads/cache/b;-><init>(Ljava/lang/String;Ljava/util/Set;Lcom/inmobi/ads/cache/f;Ljava/lang/String;)V

    .line 15095
    iput-object p1, v2, Lcom/inmobi/ads/cache/b;->g:Ljava/lang/String;

    .line 14832
    invoke-static {}, Lcom/inmobi/ads/cache/AssetStore;->a()Lcom/inmobi/ads/cache/AssetStore;

    move-result-object v0

    .line 15467
    iget-object v1, v0, Lcom/inmobi/ads/cache/AssetStore;->c:Ljava/util/concurrent/ExecutorService;

    new-instance v3, Lcom/inmobi/ads/cache/AssetStore$4;

    invoke-direct {v3, v0, v2}, Lcom/inmobi/ads/cache/AssetStore$4;-><init>(Lcom/inmobi/ads/cache/AssetStore;Lcom/inmobi/ads/cache/b;)V

    invoke-interface {v1, v3}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto/16 :goto_2

    :catch_1
    move-exception v2

    goto :goto_3

    :catch_2
    move-exception v1

    goto/16 :goto_0
.end method

.method public setCloseEndCardTracker(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 1415
    iget-object v0, p0, Lcom/inmobi/rendering/c;->c:Lcom/inmobi/rendering/RenderView;

    if-nez v0, :cond_0

    .line 1427
    :goto_0
    return-void

    .line 1421
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/inmobi/rendering/c;->c:Lcom/inmobi/rendering/RenderView;

    invoke-virtual {v0, p2}, Lcom/inmobi/rendering/RenderView;->setCloseEndCardTracker(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1422
    :catch_0
    move-exception v0

    .line 1423
    iget-object v1, p0, Lcom/inmobi/rendering/c;->c:Lcom/inmobi/rendering/RenderView;

    const-string v2, "Unexpected error"

    const-string v3, "getDownloadStatus"

    invoke-virtual {v1, p1, v2, v3}, Lcom/inmobi/rendering/RenderView;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1424
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "SDK encountered unexpected error in handling getDownloadStatus() request from creative; "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1425
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method public setExpandProperties(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 279
    iget-object v0, p0, Lcom/inmobi/rendering/c;->c:Lcom/inmobi/rendering/RenderView;

    if-nez v0, :cond_1

    .line 296
    :cond_0
    :goto_0
    return-void

    .line 284
    :cond_1
    iget-object v0, p0, Lcom/inmobi/rendering/c;->c:Lcom/inmobi/rendering/RenderView;

    invoke-virtual {v0}, Lcom/inmobi/rendering/RenderView;->getState()Lcom/inmobi/rendering/RenderView$RenderViewState;

    move-result-object v0

    sget-object v1, Lcom/inmobi/rendering/RenderView$RenderViewState;->EXPANDED:Lcom/inmobi/rendering/RenderView$RenderViewState;

    if-eq v0, v1, :cond_0

    .line 290
    :try_start_0
    invoke-static {p2}, Lcom/inmobi/rendering/mraid/b;->a(Ljava/lang/String;)Lcom/inmobi/rendering/mraid/b;

    move-result-object v0

    .line 291
    iget-object v1, p0, Lcom/inmobi/rendering/c;->c:Lcom/inmobi/rendering/RenderView;

    invoke-virtual {v1, v0}, Lcom/inmobi/rendering/RenderView;->setExpandProperties(Lcom/inmobi/rendering/mraid/b;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 292
    :catch_0
    move-exception v0

    .line 293
    iget-object v1, p0, Lcom/inmobi/rendering/c;->c:Lcom/inmobi/rendering/RenderView;

    const-string v2, "Unexpected error"

    const-string v3, "setExpandProperties"

    invoke-virtual {v1, p1, v2, v3}, Lcom/inmobi/rendering/RenderView;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 294
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "SDK encountered unexpected error in setExpandProperties(); "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method public setOrientationProperties(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 419
    iget-object v0, p0, Lcom/inmobi/rendering/c;->c:Lcom/inmobi/rendering/RenderView;

    invoke-virtual {v0}, Lcom/inmobi/rendering/RenderView;->getOrientationProperties()Lcom/inmobi/rendering/mraid/g;

    move-result-object v0

    .line 420
    invoke-static {p2, v0}, Lcom/inmobi/rendering/mraid/g;->a(Ljava/lang/String;Lcom/inmobi/rendering/mraid/g;)Lcom/inmobi/rendering/mraid/g;

    move-result-object v0

    iput-object v0, p0, Lcom/inmobi/rendering/c;->e:Lcom/inmobi/rendering/mraid/g;

    .line 421
    iget-object v0, p0, Lcom/inmobi/rendering/c;->c:Lcom/inmobi/rendering/RenderView;

    iget-object v1, p0, Lcom/inmobi/rendering/c;->e:Lcom/inmobi/rendering/mraid/g;

    invoke-virtual {v0, v1}, Lcom/inmobi/rendering/RenderView;->setOrientationProperties(Lcom/inmobi/rendering/mraid/g;)V

    .line 422
    return-void
.end method

.method public setResizeProperties(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 353
    iget-object v0, p0, Lcom/inmobi/rendering/c;->c:Lcom/inmobi/rendering/RenderView;

    if-nez v0, :cond_0

    .line 371
    :goto_0
    return-void

    .line 363
    :cond_0
    iget-object v0, p0, Lcom/inmobi/rendering/c;->c:Lcom/inmobi/rendering/RenderView;

    invoke-virtual {v0}, Lcom/inmobi/rendering/RenderView;->getResizeProperties()Lcom/inmobi/rendering/mraid/h;

    move-result-object v0

    .line 364
    invoke-static {p2, v0}, Lcom/inmobi/rendering/mraid/h;->a(Ljava/lang/String;Lcom/inmobi/rendering/mraid/h;)Lcom/inmobi/rendering/mraid/h;

    move-result-object v0

    .line 366
    if-nez v0, :cond_1

    .line 367
    iget-object v1, p0, Lcom/inmobi/rendering/c;->c:Lcom/inmobi/rendering/RenderView;

    const-string v2, "setResizeProperties"

    const-string v3, "All mandatory fields are not present"

    invoke-virtual {v1, p1, v2, v3}, Lcom/inmobi/rendering/RenderView;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 370
    :cond_1
    iget-object v1, p0, Lcom/inmobi/rendering/c;->c:Lcom/inmobi/rendering/RenderView;

    invoke-virtual {v1, v0}, Lcom/inmobi/rendering/RenderView;->setResizeProperties(Lcom/inmobi/rendering/mraid/h;)V

    goto :goto_0
.end method

.method public showAlert(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 964
    return-void
.end method

.method public showEndCard(Ljava/lang/String;)V
    .locals 3
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 1459
    iget-object v0, p0, Lcom/inmobi/rendering/c;->c:Lcom/inmobi/rendering/RenderView;

    if-nez v0, :cond_1

    .line 1464
    :cond_0
    :goto_0
    return-void

    .line 1463
    :cond_1
    iget-object v0, p0, Lcom/inmobi/rendering/c;->c:Lcom/inmobi/rendering/RenderView;

    .line 19995
    invoke-virtual {v0}, Lcom/inmobi/rendering/RenderView;->getReferenceContainer()Lcom/inmobi/ads/AdContainer;

    move-result-object v0

    .line 19996
    instance-of v1, v0, Lcom/inmobi/ads/ac;

    if-eqz v1, :cond_0

    .line 19997
    check-cast v0, Lcom/inmobi/ads/ac;

    .line 20653
    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v2, Lcom/inmobi/ads/ac$6;

    invoke-direct {v2, v0}, Lcom/inmobi/ads/ac$6;-><init>(Lcom/inmobi/ads/ac;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public startDownloader(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 1328
    iget-object v0, p0, Lcom/inmobi/rendering/c;->c:Lcom/inmobi/rendering/RenderView;

    if-nez v0, :cond_1

    .line 17916
    :cond_0
    :goto_0
    return-void

    .line 1334
    :cond_1
    :try_start_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1335
    iget-object v0, p0, Lcom/inmobi/rendering/c;->c:Lcom/inmobi/rendering/RenderView;

    const-string v1, "Invalid URL"

    const-string v2, "startDownloader"

    invoke-virtual {v0, p1, v1, v2}, Lcom/inmobi/rendering/RenderView;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1339
    :catch_0
    move-exception v0

    .line 1340
    iget-object v1, p0, Lcom/inmobi/rendering/c;->c:Lcom/inmobi/rendering/RenderView;

    const-string v2, "Unexpected error"

    const-string v3, "startDownloader"

    invoke-virtual {v1, p1, v2, v3}, Lcom/inmobi/rendering/RenderView;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1341
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "SDK encountered unexpected error in handling startDownloader() request from creative; "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1342
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 1337
    :cond_2
    :try_start_1
    iget-object v1, p0, Lcom/inmobi/rendering/c;->c:Lcom/inmobi/rendering/RenderView;

    .line 17914
    invoke-virtual {v1}, Lcom/inmobi/rendering/RenderView;->getReferenceContainer()Lcom/inmobi/ads/AdContainer;

    move-result-object v0

    .line 17915
    instance-of v2, v0, Lcom/inmobi/ads/ac;

    if-eqz v2, :cond_3

    .line 17916
    check-cast v0, Lcom/inmobi/ads/ac;

    .line 18357
    invoke-static {p2, p3, p4}, Lcom/inmobi/ads/NativeAsset;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/inmobi/ads/NativeAsset;

    .line 18362
    invoke-virtual {v0, v1}, Lcom/inmobi/ads/ac;->a(Lcom/inmobi/rendering/RenderView;)V

    goto :goto_0

    .line 17917
    :cond_3
    instance-of v0, v0, Lcom/inmobi/rendering/RenderView;

    if-eqz v0, :cond_0

    .line 17918
    invoke-static {p2, p3, p4}, Lcom/inmobi/ads/NativeAsset;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/inmobi/ads/NativeAsset;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public storePicture(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 644
    iget-object v0, p0, Lcom/inmobi/rendering/c;->c:Lcom/inmobi/rendering/RenderView;

    const-string v1, "storePicture"

    invoke-virtual {v0, v1}, Lcom/inmobi/rendering/RenderView;->d(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 693
    :cond_0
    :goto_0
    return-void

    .line 649
    :cond_1
    if-eqz p2, :cond_2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_3

    .line 650
    :cond_2
    iget-object v0, p0, Lcom/inmobi/rendering/c;->c:Lcom/inmobi/rendering/RenderView;

    const-string v1, "Null or empty URL supplied"

    const-string v2, "storePicture"

    invoke-virtual {v0, p1, v1, v2}, Lcom/inmobi/rendering/RenderView;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 654
    :cond_3
    const-string v0, "http"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "HTTP"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 655
    iget-object v0, p0, Lcom/inmobi/rendering/c;->c:Lcom/inmobi/rendering/RenderView;

    const-string v1, "Invalid URL scheme - only HTTP(S) is supported"

    const-string v2, "storePicture"

    invoke-virtual {v0, p1, v1, v2}, Lcom/inmobi/rendering/RenderView;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 659
    :cond_4
    invoke-static {}, Lcom/inmobi/commons/a/a;->b()Landroid/content/Context;

    move-result-object v0

    .line 660
    if-eqz v0, :cond_0

    .line 661
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    if-lt v1, v2, :cond_5

    const-string v1, "android.permission.WRITE_EXTERNAL_STORAGE"

    .line 662
    invoke-virtual {v0, v1}, Landroid/content/Context;->checkSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_5

    .line 663
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "android.permission.WRITE_EXTERNAL_STORAGE"

    aput-object v2, v0, v1

    new-instance v1, Lcom/inmobi/rendering/c$2;

    invoke-direct {v1, p0, p1, p2}, Lcom/inmobi/rendering/c$2;-><init>(Lcom/inmobi/rendering/c;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/inmobi/rendering/InMobiAdActivity;->a([Ljava/lang/String;Lcom/inmobi/rendering/InMobiAdActivity$b;)V

    goto :goto_0

    .line 684
    :cond_5
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/inmobi/rendering/c;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 685
    :catch_0
    move-exception v0

    .line 686
    iget-object v1, p0, Lcom/inmobi/rendering/c;->c:Lcom/inmobi/rendering/RenderView;

    const-string v2, "Unexpected error"

    const-string v3, "storePicture"

    invoke-virtual {v1, p1, v2, v3}, Lcom/inmobi/rendering/RenderView;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 687
    sget-object v1, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->ERROR:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    const-string v2, "InMobi"

    const-string v3, "Failed to store picture to gallery; SDK encountered an unexpected error"

    invoke-static {v1, v2, v3}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 689
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "SDK encountered unexpected error in handling storePicture() request from creative; "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 690
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method public supports(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 871
    sget-object v0, Lcom/inmobi/rendering/c;->a:[Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/inmobi/rendering/c;->c:Lcom/inmobi/rendering/RenderView;

    invoke-virtual {v0, p2}, Lcom/inmobi/rendering/RenderView;->d(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 872
    const-string v0, "false"

    .line 874
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/inmobi/rendering/c;->c:Lcom/inmobi/rendering/RenderView;

    invoke-virtual {v0, p2}, Lcom/inmobi/rendering/RenderView;->d(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public unRegisterBroadcastListener()V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 760
    invoke-static {}, Lcom/inmobi/commons/a/a;->b()Landroid/content/Context;

    move-result-object v0

    .line 761
    if-nez v0, :cond_1

    .line 766
    :cond_0
    :goto_0
    return-void

    .line 762
    :cond_1
    iget-object v1, p0, Lcom/inmobi/rendering/c;->g:Landroid/content/BroadcastReceiver;

    if-eqz v1, :cond_0

    .line 763
    iget-object v1, p0, Lcom/inmobi/rendering/c;->g:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 764
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/inmobi/rendering/c;->g:Landroid/content/BroadcastReceiver;

    goto :goto_0
.end method

.method public unregisterBackButtonPressedEventListener(Ljava/lang/String;)V
    .locals 4
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 1311
    iget-object v0, p0, Lcom/inmobi/rendering/c;->c:Lcom/inmobi/rendering/RenderView;

    if-nez v0, :cond_0

    .line 1323
    :goto_0
    return-void

    .line 1317
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/inmobi/rendering/c;->c:Lcom/inmobi/rendering/RenderView;

    .line 16964
    const/4 v1, 0x0

    iput-object v1, v0, Lcom/inmobi/rendering/RenderView;->r:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1318
    :catch_0
    move-exception v0

    .line 1319
    iget-object v1, p0, Lcom/inmobi/rendering/c;->c:Lcom/inmobi/rendering/RenderView;

    const-string v2, "Unexpected error"

    const-string v3, "unregisterBackButtonPressedEventListener"

    invoke-virtual {v1, p1, v2, v3}, Lcom/inmobi/rendering/RenderView;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1320
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "SDK encountered unexpected error in handling unregisterBackButtonPressedEventListener() request from creative; "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1321
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method public unregisterDeviceMuteEventListener(Ljava/lang/String;)V
    .locals 4
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 1180
    iget-object v0, p0, Lcom/inmobi/rendering/c;->c:Lcom/inmobi/rendering/RenderView;

    if-nez v0, :cond_0

    .line 1192
    :goto_0
    return-void

    .line 1186
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/inmobi/rendering/c;->c:Lcom/inmobi/rendering/RenderView;

    invoke-virtual {v0}, Lcom/inmobi/rendering/RenderView;->getMediaProcessor()Lcom/inmobi/rendering/mraid/MraidMediaProcessor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/inmobi/rendering/mraid/MraidMediaProcessor;->b()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1187
    :catch_0
    move-exception v0

    .line 1188
    iget-object v1, p0, Lcom/inmobi/rendering/c;->c:Lcom/inmobi/rendering/RenderView;

    const-string v2, "Unexpected error"

    const-string v3, "unRegisterDeviceMuteEventListener"

    invoke-virtual {v1, p1, v2, v3}, Lcom/inmobi/rendering/RenderView;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1189
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "SDK encountered unexpected error in handling unregisterDeviceMuteEventListener() request from creative; "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1190
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method public unregisterDeviceVolumeChangeEventListener(Ljava/lang/String;)V
    .locals 4
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 1211
    iget-object v0, p0, Lcom/inmobi/rendering/c;->c:Lcom/inmobi/rendering/RenderView;

    if-nez v0, :cond_0

    .line 1223
    :goto_0
    return-void

    .line 1217
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/inmobi/rendering/c;->c:Lcom/inmobi/rendering/RenderView;

    invoke-virtual {v0}, Lcom/inmobi/rendering/RenderView;->getMediaProcessor()Lcom/inmobi/rendering/mraid/MraidMediaProcessor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/inmobi/rendering/mraid/MraidMediaProcessor;->c()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1218
    :catch_0
    move-exception v0

    .line 1219
    iget-object v1, p0, Lcom/inmobi/rendering/c;->c:Lcom/inmobi/rendering/RenderView;

    const-string v2, "Unexpected error"

    const-string v3, "unregisterDeviceVolumeChangeEventListener"

    invoke-virtual {v1, p1, v2, v3}, Lcom/inmobi/rendering/RenderView;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1220
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "SDK encountered unexpected error in handling unregisterDeviceVolumeChangeEventListener() request from creative; "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1221
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method public unregisterDownloaderCallbacks(Ljava/lang/String;)V
    .locals 4
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 1364
    iget-object v0, p0, Lcom/inmobi/rendering/c;->c:Lcom/inmobi/rendering/RenderView;

    if-nez v0, :cond_1

    .line 1376
    :cond_0
    :goto_0
    return-void

    .line 1370
    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/inmobi/rendering/c;->c:Lcom/inmobi/rendering/RenderView;

    .line 18932
    invoke-virtual {v1}, Lcom/inmobi/rendering/RenderView;->getReferenceContainer()Lcom/inmobi/ads/AdContainer;

    move-result-object v0

    .line 18933
    instance-of v2, v0, Lcom/inmobi/ads/ac;

    if-eqz v2, :cond_0

    .line 18934
    check-cast v0, Lcom/inmobi/ads/ac;

    .line 19374
    iget-object v2, v0, Lcom/inmobi/ads/ac;->x:Ljava/util/List;

    if-eqz v2, :cond_0

    .line 19375
    iget-object v0, v0, Lcom/inmobi/ads/ac;->x:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1371
    :catch_0
    move-exception v0

    .line 1372
    iget-object v1, p0, Lcom/inmobi/rendering/c;->c:Lcom/inmobi/rendering/RenderView;

    const-string v2, "Unexpected error"

    const-string v3, "unregisterDownloaderCallbacks"

    invoke-virtual {v1, p1, v2, v3}, Lcom/inmobi/rendering/RenderView;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1373
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "SDK encountered unexpected error in handling unregisterDownloaderCallbacks() request from creative; "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1374
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method public unregisterHeadphonePluggedEventListener(Ljava/lang/String;)V
    .locals 4
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 1258
    iget-object v0, p0, Lcom/inmobi/rendering/c;->c:Lcom/inmobi/rendering/RenderView;

    if-nez v0, :cond_0

    .line 1270
    :goto_0
    return-void

    .line 1264
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/inmobi/rendering/c;->c:Lcom/inmobi/rendering/RenderView;

    invoke-virtual {v0}, Lcom/inmobi/rendering/RenderView;->getMediaProcessor()Lcom/inmobi/rendering/mraid/MraidMediaProcessor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/inmobi/rendering/mraid/MraidMediaProcessor;->f()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1265
    :catch_0
    move-exception v0

    .line 1266
    iget-object v1, p0, Lcom/inmobi/rendering/c;->c:Lcom/inmobi/rendering/RenderView;

    const-string v2, "Unexpected error"

    const-string v3, "unregisterHeadphonePluggedEventListener"

    invoke-virtual {v1, p1, v2, v3}, Lcom/inmobi/rendering/RenderView;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1267
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "SDK encountered unexpected error in handling unregisterHeadphonePluggedEventListener() request from creative; "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1268
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method public useCustomClose(Ljava/lang/String;Z)V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 450
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/inmobi/rendering/c;->c:Lcom/inmobi/rendering/RenderView;

    invoke-virtual {v1}, Lcom/inmobi/rendering/RenderView;->getContainerContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/inmobi/rendering/c$12;

    invoke-direct {v1, p0, p2, p1}, Lcom/inmobi/rendering/c$12;-><init>(Lcom/inmobi/rendering/c;ZLjava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 462
    return-void
.end method
