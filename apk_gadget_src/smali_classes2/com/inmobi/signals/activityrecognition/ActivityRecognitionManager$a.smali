.class final Lcom/inmobi/signals/activityrecognition/ActivityRecognitionManager$a;
.super Ljava/lang/Object;
.source "ActivityRecognitionManager.java"

# interfaces
.implements Ljava/lang/reflect/InvocationHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/inmobi/signals/activityrecognition/ActivityRecognitionManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 136
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(B)V
    .locals 0

    .prologue
    .line 136
    invoke-direct {p0}, Lcom/inmobi/signals/activityrecognition/ActivityRecognitionManager$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    const/4 v4, 0x0

    .line 179
    if-eqz p3, :cond_2

    .line 180
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "onConnected"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1139
    invoke-static {}, Lcom/inmobi/commons/a/a;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1140
    new-instance v1, Landroid/content/Intent;

    invoke-static {}, Lcom/inmobi/commons/a/a;->b()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/inmobi/signals/activityrecognition/ActivityRecognitionManager;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1142
    invoke-static {}, Lcom/inmobi/commons/a/a;->b()Landroid/content/Context;

    move-result-object v2

    const/high16 v3, 0x8000000

    invoke-static {v2, v4, v1, v3}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 1145
    :try_start_0
    const-string v2, "com.google.android.gms.location.ActivityRecognition"

    .line 1146
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 1147
    const-string v3, "ActivityRecognitionApi"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 1148
    const-string v3, "com.google.android.gms.common.api.GoogleApiClient"

    .line 1149
    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    .line 1150
    const-string v4, "com.google.android.gms.location.ActivityRecognitionApi"

    .line 1151
    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    .line 1153
    const-string v5, "requestActivityUpdates"

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Class;

    const/4 v7, 0x0

    aput-object v3, v6, v7

    const/4 v3, 0x1

    sget-object v7, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v7, v6, v3

    const/4 v3, 0x2

    const-class v7, Landroid/app/PendingIntent;

    aput-object v7, v6, v3

    invoke-virtual {v4, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 1155
    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {}, Lcom/inmobi/signals/activityrecognition/ActivityRecognitionManager;->d()Ljava/lang/Object;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const/16 v6, 0x3e8

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x2

    aput-object v1, v4, v5

    invoke-virtual {v3, v2, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_4

    .line 190
    :cond_0
    :goto_0
    return-object v0

    .line 1157
    :catch_0
    move-exception v1

    invoke-static {}, Lcom/inmobi/signals/activityrecognition/ActivityRecognitionManager;->e()Ljava/lang/String;

    goto :goto_0

    .line 1160
    :catch_1
    move-exception v1

    invoke-static {}, Lcom/inmobi/signals/activityrecognition/ActivityRecognitionManager;->e()Ljava/lang/String;

    goto :goto_0

    .line 1163
    :catch_2
    move-exception v1

    invoke-static {}, Lcom/inmobi/signals/activityrecognition/ActivityRecognitionManager;->e()Ljava/lang/String;

    goto :goto_0

    .line 1166
    :catch_3
    move-exception v1

    invoke-static {}, Lcom/inmobi/signals/activityrecognition/ActivityRecognitionManager;->e()Ljava/lang/String;

    goto :goto_0

    .line 1169
    :catch_4
    move-exception v1

    invoke-static {}, Lcom/inmobi/signals/activityrecognition/ActivityRecognitionManager;->e()Ljava/lang/String;

    goto :goto_0

    .line 185
    :cond_1
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "onConnectionSuspended"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 190
    :cond_2
    invoke-virtual {p2, p0, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method
