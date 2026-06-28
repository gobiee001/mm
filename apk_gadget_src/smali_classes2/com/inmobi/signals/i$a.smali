.class final Lcom/inmobi/signals/i$a;
.super Landroid/os/Handler;
.source "IceCollector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/inmobi/signals/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/inmobi/signals/m;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/os/Looper;)V
    .locals 1

    .prologue
    .line 80
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 81
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/inmobi/signals/i$a;->a:Ljava/util/List;

    .line 82
    return-void
.end method

.method static synthetic a(Lcom/inmobi/signals/i$a;Lcom/inmobi/signals/m;)V
    .locals 0

    .prologue
    .line 70
    invoke-direct {p0, p1}, Lcom/inmobi/signals/i$a;->a(Lcom/inmobi/signals/m;)V

    return-void
.end method

.method private a(Lcom/inmobi/signals/m;)V
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 162
    iget-object v0, p0, Lcom/inmobi/signals/i$a;->a:Ljava/util/List;

    if-eqz v0, :cond_2

    .line 13048
    iget-object v0, p1, Lcom/inmobi/signals/m;->a:Lcom/inmobi/signals/b/a;

    if-nez v0, :cond_0

    iget-object v0, p1, Lcom/inmobi/signals/m;->b:Ljava/util/List;

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 162
    :goto_0
    if-eqz v0, :cond_2

    .line 163
    iget-object v0, p0, Lcom/inmobi/signals/i$a;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 164
    iget-object v0, p0, Lcom/inmobi/signals/i$a;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-static {}, Lcom/inmobi/signals/o;->a()Lcom/inmobi/signals/o;

    move-result-object v2

    .line 13081
    iget-object v2, v2, Lcom/inmobi/signals/o;->a:Lcom/inmobi/signals/p;

    .line 13167
    iget-object v2, v2, Lcom/inmobi/signals/p;->a:Lcom/inmobi/signals/p$b;

    .line 13208
    iget v2, v2, Lcom/inmobi/signals/p$b;->d:I

    .line 164
    if-le v0, v2, :cond_2

    .line 167
    :try_start_0
    invoke-static {}, Lcom/inmobi/commons/core/d/c;->a()Lcom/inmobi/commons/core/d/c;

    move-result-object v0

    new-instance v2, Lcom/inmobi/commons/core/d/g;

    const-string v3, "signals"

    const-string v4, "SampleSizeExceeded"

    invoke-direct {v2, v3, v4}, Lcom/inmobi/commons/core/d/g;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lcom/inmobi/commons/core/d/c;->a(Lcom/inmobi/commons/core/d/g;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 173
    :goto_1
    iget-object v0, p0, Lcom/inmobi/signals/i$a;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-static {}, Lcom/inmobi/signals/o;->a()Lcom/inmobi/signals/o;

    move-result-object v2

    .line 14081
    iget-object v2, v2, Lcom/inmobi/signals/o;->a:Lcom/inmobi/signals/p;

    .line 14167
    iget-object v2, v2, Lcom/inmobi/signals/p;->a:Lcom/inmobi/signals/p$b;

    .line 14208
    iget v2, v2, Lcom/inmobi/signals/p$b;->d:I

    .line 173
    if-le v0, v2, :cond_2

    .line 174
    iget-object v0, p0, Lcom/inmobi/signals/i$a;->a:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_1

    :cond_1
    move v0, v1

    .line 13048
    goto :goto_0

    .line 168
    :catch_0
    move-exception v0

    .line 169
    invoke-static {}, Lcom/inmobi/signals/i;->b()Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Error in submitting telemetry event : ("

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 170
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 178
    :cond_2
    return-void
.end method

.method private static a()Z
    .locals 4

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 204
    invoke-static {}, Lcom/inmobi/commons/a/a;->b()Landroid/content/Context;

    move-result-object v0

    .line 205
    if-nez v0, :cond_0

    move v0, v1

    .line 226
    :goto_0
    return v0

    .line 206
    :cond_0
    const-string v3, "activity"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 208
    if-eqz v0, :cond_1

    .line 210
    const/4 v3, 0x1

    .line 211
    :try_start_0
    invoke-virtual {v0, v3}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v0

    .line 213
    const/4 v3, 0x0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    .line 215
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 216
    invoke-static {}, Lcom/inmobi/commons/a/a;->b()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 215
    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 217
    invoke-static {}, Lcom/inmobi/signals/i;->b()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v2

    .line 218
    goto :goto_0

    .line 223
    :catch_0
    move-exception v0

    invoke-static {}, Lcom/inmobi/signals/i;->b()Ljava/lang/String;

    :cond_1
    move v0, v1

    .line 226
    goto :goto_0
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 9

    .prologue
    const/4 v5, 0x2

    const/4 v1, 0x1

    const/4 v8, 0x3

    const/4 v0, 0x0

    .line 86
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 116
    :goto_0
    return-void

    .line 1119
    :pswitch_0
    invoke-static {}, Lcom/inmobi/signals/i;->b()Ljava/lang/String;

    .line 1120
    invoke-virtual {p0, v8}, Lcom/inmobi/signals/i$a;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 1124
    :pswitch_1
    invoke-static {}, Lcom/inmobi/signals/i;->b()Ljava/lang/String;

    .line 1126
    invoke-static {}, Lcom/inmobi/signals/activityrecognition/b;->a()Lcom/inmobi/signals/activityrecognition/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/inmobi/signals/activityrecognition/b;->b()V

    .line 1127
    invoke-virtual {p0, v8}, Lcom/inmobi/signals/i$a;->removeMessages(I)V

    .line 1128
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/inmobi/signals/i$a;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 94
    :pswitch_2
    invoke-static {}, Lcom/inmobi/signals/i;->b()Ljava/lang/String;

    .line 96
    invoke-static {}, Lcom/inmobi/signals/i$a;->a()Z

    move-result v2

    if-nez v2, :cond_0

    .line 97
    invoke-virtual {p0, v5}, Lcom/inmobi/signals/i$a;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 101
    :cond_0
    invoke-static {}, Lcom/inmobi/signals/o;->a()Lcom/inmobi/signals/o;

    move-result-object v2

    .line 2081
    iget-object v2, v2, Lcom/inmobi/signals/o;->a:Lcom/inmobi/signals/p;

    .line 2167
    iget-object v2, v2, Lcom/inmobi/signals/p;->a:Lcom/inmobi/signals/p$b;

    .line 2260
    iget-boolean v3, v2, Lcom/inmobi/signals/p$b;->q:Z

    if-eqz v3, :cond_4

    iget-boolean v2, v2, Lcom/inmobi/signals/p$b;->a:Z

    if-eqz v2, :cond_4

    move v2, v1

    .line 101
    :goto_1
    if-eqz v2, :cond_6

    .line 102
    invoke-static {}, Lcom/inmobi/signals/activityrecognition/b;->a()Lcom/inmobi/signals/activityrecognition/b;

    move-result-object v2

    .line 3055
    invoke-static {}, Lcom/inmobi/signals/activityrecognition/b;->e()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-static {}, Lcom/inmobi/signals/activityrecognition/b;->f()Z

    move-result v3

    if-nez v3, :cond_5

    .line 3132
    :cond_1
    :goto_2
    new-instance v3, Lcom/inmobi/signals/m;

    invoke-direct {v3}, Lcom/inmobi/signals/m;-><init>()V

    .line 3133
    invoke-static {}, Lcom/inmobi/signals/b/b;->a()Lcom/inmobi/signals/b/a;

    move-result-object v2

    .line 4040
    iput-object v2, v3, Lcom/inmobi/signals/m;->a:Lcom/inmobi/signals/b/a;

    .line 3134
    invoke-static {}, Lcom/inmobi/signals/LocationInfo;->a()Lcom/inmobi/signals/LocationInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/inmobi/signals/LocationInfo;->d()Ljava/util/HashMap;

    move-result-object v2

    .line 5036
    iput-object v2, v3, Lcom/inmobi/signals/m;->c:Ljava/util/Map;

    .line 3136
    invoke-static {}, Lcom/inmobi/signals/o;->a()Lcom/inmobi/signals/o;

    move-result-object v2

    .line 5081
    iget-object v2, v2, Lcom/inmobi/signals/o;->a:Lcom/inmobi/signals/p;

    .line 5167
    iget-object v2, v2, Lcom/inmobi/signals/p;->a:Lcom/inmobi/signals/p$b;

    .line 5236
    iget-boolean v4, v2, Lcom/inmobi/signals/p$b;->k:Z

    if-eqz v4, :cond_7

    iget-boolean v2, v2, Lcom/inmobi/signals/p$b;->a:Z

    if-eqz v2, :cond_7

    move v2, v1

    .line 3136
    :goto_3
    if-eqz v2, :cond_a

    .line 6135
    invoke-static {}, Lcom/inmobi/commons/a/a;->a()Z

    move-result v2

    if-nez v2, :cond_8

    .line 3136
    :cond_2
    :goto_4
    if-eqz v0, :cond_a

    .line 3137
    new-instance v0, Lcom/inmobi/signals/i$a$1;

    invoke-direct {v0, p0, v3}, Lcom/inmobi/signals/i$a$1;-><init>(Lcom/inmobi/signals/i$a;Lcom/inmobi/signals/m;)V

    .line 3153
    invoke-static {v0}, Lcom/inmobi/signals/b/c;->a(Lcom/inmobi/signals/b/c$a;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 3154
    invoke-direct {p0, v3}, Lcom/inmobi/signals/i$a;->a(Lcom/inmobi/signals/m;)V

    .line 108
    :cond_3
    :goto_5
    invoke-static {}, Lcom/inmobi/signals/o;->a()Lcom/inmobi/signals/o;

    move-result-object v0

    .line 7081
    iget-object v0, v0, Lcom/inmobi/signals/o;->a:Lcom/inmobi/signals/p;

    .line 7167
    iget-object v0, v0, Lcom/inmobi/signals/p;->a:Lcom/inmobi/signals/p$b;

    .line 7200
    iget v0, v0, Lcom/inmobi/signals/p$b;->b:I

    .line 108
    mul-int/lit16 v0, v0, 0x3e8

    int-to-long v0, v0

    invoke-virtual {p0, v8, v0, v1}, Lcom/inmobi/signals/i$a;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    :cond_4
    move v2, v0

    .line 2260
    goto :goto_1

    .line 3059
    :cond_5
    iget-object v3, v2, Lcom/inmobi/signals/activityrecognition/b;->a:Landroid/os/Handler;

    invoke-virtual {v3, v0}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v3

    if-nez v3, :cond_1

    .line 3060
    invoke-static {}, Lcom/inmobi/signals/activityrecognition/ActivityRecognitionManager;->a()V

    .line 3061
    iget-object v2, v2, Lcom/inmobi/signals/activityrecognition/b;->a:Landroid/os/Handler;

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_2

    .line 104
    :cond_6
    invoke-static {}, Lcom/inmobi/signals/activityrecognition/b;->a()Lcom/inmobi/signals/activityrecognition/b;

    move-result-object v2

    invoke-virtual {v2}, Lcom/inmobi/signals/activityrecognition/b;->b()V

    goto :goto_2

    :cond_7
    move v2, v0

    .line 5236
    goto :goto_3

    .line 6136
    :cond_8
    new-array v4, v8, [Ljava/lang/String;

    const-string v2, "android.permission.ACCESS_WIFI_STATE"

    aput-object v2, v4, v0

    const-string v2, "android.permission.CHANGE_WIFI_STATE"

    aput-object v2, v4, v1

    const-string v2, "android.permission.ACCESS_COARSE_LOCATION"

    aput-object v2, v4, v5

    move v2, v0

    .line 6141
    :goto_6
    if-ge v2, v8, :cond_9

    aget-object v5, v4, v2

    .line 6142
    invoke-static {}, Lcom/inmobi/commons/a/a;->b()Landroid/content/Context;

    move-result-object v6

    const-string v7, "signals"

    invoke-static {v6, v7, v5}, Lcom/inmobi/commons/core/utilities/e;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 6141
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_9
    move v0, v1

    .line 6146
    goto :goto_4

    .line 3157
    :cond_a
    invoke-direct {p0, v3}, Lcom/inmobi/signals/i$a;->a(Lcom/inmobi/signals/m;)V

    goto :goto_5

    .line 8181
    :pswitch_3
    new-instance v5, Lcom/inmobi/signals/l;

    invoke-direct {v5}, Lcom/inmobi/signals/l;-><init>()V

    .line 8183
    invoke-static {}, Lcom/inmobi/signals/LocationInfo;->a()Lcom/inmobi/signals/LocationInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/inmobi/signals/LocationInfo;->c()Ljava/util/HashMap;

    move-result-object v0

    .line 9038
    iput-object v0, v5, Lcom/inmobi/signals/l;->a:Ljava/util/Map;

    .line 8184
    iget-object v0, p0, Lcom/inmobi/signals/i$a;->a:Ljava/util/List;

    .line 9046
    iput-object v0, v5, Lcom/inmobi/signals/l;->c:Ljava/util/List;

    .line 8185
    invoke-static {}, Lcom/inmobi/signals/n;->a()Lcom/inmobi/signals/n;

    invoke-static {}, Lcom/inmobi/signals/n;->b()Lcom/inmobi/commons/core/utilities/b/g;

    move-result-object v0

    .line 10042
    iput-object v0, v5, Lcom/inmobi/signals/l;->b:Lcom/inmobi/commons/core/utilities/b/g;

    .line 8186
    invoke-static {}, Lcom/inmobi/signals/activityrecognition/b;->a()Lcom/inmobi/signals/activityrecognition/b;

    invoke-static {}, Lcom/inmobi/signals/activityrecognition/b;->c()Ljava/util/List;

    move-result-object v0

    .line 10050
    iput-object v0, v5, Lcom/inmobi/signals/l;->d:Ljava/util/List;

    .line 10196
    invoke-static {}, Lcom/inmobi/signals/o;->a()Lcom/inmobi/signals/o;

    move-result-object v0

    .line 11081
    iget-object v0, v0, Lcom/inmobi/signals/o;->a:Lcom/inmobi/signals/p;

    .line 11167
    iget-object v3, v0, Lcom/inmobi/signals/p;->a:Lcom/inmobi/signals/p$b;

    .line 10197
    new-instance v0, Lcom/inmobi/signals/k;

    .line 11212
    iget-object v1, v3, Lcom/inmobi/signals/p$b;->e:Ljava/lang/String;

    .line 11216
    iget v2, v3, Lcom/inmobi/signals/p$b;->f:I

    .line 11220
    iget v3, v3, Lcom/inmobi/signals/p$b;->g:I

    .line 10197
    invoke-static {}, Lcom/inmobi/signals/o;->a()Lcom/inmobi/signals/o;

    move-result-object v4

    invoke-virtual {v4}, Lcom/inmobi/signals/o;->d()Lcom/inmobi/commons/core/utilities/uid/d;

    move-result-object v4

    invoke-direct/range {v0 .. v5}, Lcom/inmobi/signals/k;-><init>(Ljava/lang/String;IILcom/inmobi/commons/core/utilities/uid/d;Lcom/inmobi/signals/l;)V

    .line 10198
    new-instance v1, Lcom/inmobi/signals/j;

    invoke-direct {v1, v0}, Lcom/inmobi/signals/j;-><init>(Lcom/inmobi/signals/k;)V

    .line 12029
    new-instance v0, Ljava/lang/Thread;

    new-instance v2, Lcom/inmobi/signals/j$1;

    invoke-direct {v2, v1}, Lcom/inmobi/signals/j$1;-><init>(Lcom/inmobi/signals/j;)V

    invoke-direct {v0, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 12094
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 12191
    invoke-static {}, Lcom/inmobi/signals/activityrecognition/b;->a()Lcom/inmobi/signals/activityrecognition/b;

    invoke-static {}, Lcom/inmobi/signals/activityrecognition/b;->d()V

    .line 12192
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/inmobi/signals/i$a;->a:Ljava/util/List;

    goto/16 :goto_0

    .line 86
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
