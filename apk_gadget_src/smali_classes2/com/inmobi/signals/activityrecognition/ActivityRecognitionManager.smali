.class public Lcom/inmobi/signals/activityrecognition/ActivityRecognitionManager;
.super Landroid/app/IntentService;
.source "ActivityRecognitionManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/inmobi/signals/activityrecognition/ActivityRecognitionManager$a;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String;

.field private static b:Ljava/lang/Object;

.field private static c:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 26
    const-class v0, Lcom/inmobi/signals/activityrecognition/ActivityRecognitionManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/inmobi/signals/activityrecognition/ActivityRecognitionManager;->a:Ljava/lang/String;

    .line 32
    sput-object v1, Lcom/inmobi/signals/activityrecognition/ActivityRecognitionManager;->b:Ljava/lang/Object;

    .line 33
    sput-object v1, Lcom/inmobi/signals/activityrecognition/ActivityRecognitionManager;->c:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 29
    const-string v0, "Activity service"

    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    .line 30
    return-void
.end method

.method public static a()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 36
    invoke-static {}, Lcom/inmobi/signals/h;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/inmobi/signals/activityrecognition/ActivityRecognitionManager;->c:Ljava/lang/Object;

    if-nez v0, :cond_0

    .line 37
    invoke-static {}, Lcom/inmobi/commons/a/a;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 38
    invoke-static {}, Lcom/inmobi/commons/a/a;->b()Landroid/content/Context;

    move-result-object v0

    .line 1052
    new-instance v1, Lcom/inmobi/signals/activityrecognition/ActivityRecognitionManager$a;

    invoke-direct {v1, v3}, Lcom/inmobi/signals/activityrecognition/ActivityRecognitionManager$a;-><init>(B)V

    new-instance v2, Lcom/inmobi/signals/activityrecognition/ActivityRecognitionManager$a;

    invoke-direct {v2, v3}, Lcom/inmobi/signals/activityrecognition/ActivityRecognitionManager$a;-><init>(B)V

    const-string v3, "com.google.android.gms.location.ActivityRecognition"

    invoke-static {v0, v1, v2, v3}, Lcom/inmobi/signals/h;->a(Landroid/content/Context;Ljava/lang/reflect/InvocationHandler;Ljava/lang/reflect/InvocationHandler;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 1054
    sput-object v0, Lcom/inmobi/signals/activityrecognition/ActivityRecognitionManager;->c:Ljava/lang/Object;

    invoke-static {v0}, Lcom/inmobi/signals/h;->a(Ljava/lang/Object;)V

    .line 41
    :cond_0
    return-void
.end method

.method static b()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 44
    invoke-static {}, Lcom/inmobi/signals/h;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/inmobi/signals/activityrecognition/ActivityRecognitionManager;->c:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 1060
    sget-object v0, Lcom/inmobi/signals/activityrecognition/ActivityRecognitionManager;->c:Ljava/lang/Object;

    invoke-static {v0}, Lcom/inmobi/signals/h;->b(Ljava/lang/Object;)V

    .line 1061
    sput-object v1, Lcom/inmobi/signals/activityrecognition/ActivityRecognitionManager;->b:Ljava/lang/Object;

    .line 1062
    sput-object v1, Lcom/inmobi/signals/activityrecognition/ActivityRecognitionManager;->c:Ljava/lang/Object;

    .line 47
    :cond_0
    return-void
.end method

.method public static c()I
    .locals 4

    .prologue
    .line 107
    const/4 v1, -0x1

    .line 109
    sget-object v0, Lcom/inmobi/signals/activityrecognition/ActivityRecognitionManager;->b:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 111
    :try_start_0
    const-string v0, "com.google.android.gms.location.DetectedActivity"

    .line 112
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 113
    const-string v2, "getType"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 115
    sget-object v2, Lcom/inmobi/signals/activityrecognition/ActivityRecognitionManager;->b:Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 116
    const/4 v1, 0x0

    :try_start_1
    sput-object v1, Lcom/inmobi/signals/activityrecognition/ActivityRecognitionManager;->b:Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_1

    .line 133
    :goto_0
    return v0

    :catch_0
    move-exception v0

    move v0, v1

    goto :goto_0

    :catch_1
    move-exception v1

    goto :goto_0

    .line 130
    :catch_2
    move-exception v0

    move v0, v1

    goto :goto_0

    :catch_3
    move-exception v1

    goto :goto_0

    :catch_4
    move-exception v0

    move v0, v1

    goto :goto_0

    :catch_5
    move-exception v1

    goto :goto_0

    :catch_6
    move-exception v0

    move v0, v1

    goto :goto_0

    :catch_7
    move-exception v1

    goto :goto_0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method static synthetic d()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 22
    sget-object v0, Lcom/inmobi/signals/activityrecognition/ActivityRecognitionManager;->c:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 22
    sget-object v0, Lcom/inmobi/signals/activityrecognition/ActivityRecognitionManager;->a:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method protected onHandleIntent(Landroid/content/Intent;)V
    .locals 5

    .prologue
    .line 67
    sget-object v0, Lcom/inmobi/signals/activityrecognition/ActivityRecognitionManager;->c:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 1075
    :try_start_0
    const-string v0, "com.google.android.gms.location.ActivityRecognitionResult"

    .line 1076
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 1078
    const-string v0, "hasResult"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Landroid/content/Intent;

    aput-object v4, v2, v3

    invoke-virtual {v1, v0, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 1080
    const/4 v2, 0x0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 1082
    if-eqz v0, :cond_0

    .line 1083
    const-string v0, "extractResult"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Landroid/content/Intent;

    aput-object v4, v2, v3

    invoke-virtual {v1, v0, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 1085
    const/4 v2, 0x0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 1086
    const-string v2, "getMostProbableActivity"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 1088
    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    sput-object v0, Lcom/inmobi/signals/activityrecognition/ActivityRecognitionManager;->b:Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1102
    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_0

    :catch_2
    move-exception v0

    goto :goto_0

    :catch_3
    move-exception v0

    goto :goto_0
.end method
