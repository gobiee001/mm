.class public Lcom/appsomniacs/core/AnswersLogUtility;
.super Ljava/lang/Object;
.source "AnswersLogUtility.java"


# static fields
.field private static ATTRIBUTE_SUCCESS:Ljava/lang/String;

.field public static EVENT_CONTENTVIEW:Ljava/lang/String;

.field public static EVENT_LEVELEND:Ljava/lang/String;

.field public static EVENT_LEVELSTART:Ljava/lang/String;

.field public static EVENT_LOGIN:Ljava/lang/String;

.field public static EVENT_PURCHASE:Ljava/lang/String;

.field public static EVENT_SIGNUP:Ljava/lang/String;

.field public static PARAM_NAME_VALUE_PAIR_SPLIT_TOKEN:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    const-string v0, "success"

    sput-object v0, Lcom/appsomniacs/core/AnswersLogUtility;->ATTRIBUTE_SUCCESS:Ljava/lang/String;

    .line 23
    const-string v0, "<<::>>"

    sput-object v0, Lcom/appsomniacs/core/AnswersLogUtility;->PARAM_NAME_VALUE_PAIR_SPLIT_TOKEN:Ljava/lang/String;

    .line 24
    const-string v0, "LOGIN"

    sput-object v0, Lcom/appsomniacs/core/AnswersLogUtility;->EVENT_LOGIN:Ljava/lang/String;

    .line 25
    const-string v0, "SIGNUP"

    sput-object v0, Lcom/appsomniacs/core/AnswersLogUtility;->EVENT_SIGNUP:Ljava/lang/String;

    .line 26
    const-string v0, "PURCHASE"

    sput-object v0, Lcom/appsomniacs/core/AnswersLogUtility;->EVENT_PURCHASE:Ljava/lang/String;

    .line 27
    const-string v0, "LEVELSTART"

    sput-object v0, Lcom/appsomniacs/core/AnswersLogUtility;->EVENT_LEVELSTART:Ljava/lang/String;

    .line 28
    const-string v0, "LEVELEND"

    sput-object v0, Lcom/appsomniacs/core/AnswersLogUtility;->EVENT_LEVELEND:Ljava/lang/String;

    .line 29
    const-string v0, "CONTENTVIEW"

    sput-object v0, Lcom/appsomniacs/core/AnswersLogUtility;->EVENT_CONTENTVIEW:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static AddParamsToEvent(Lcom/crashlytics/android/answers/AnswersEvent;Ljava/util/HashMap;)V
    .locals 4
    .param p0, "event"    # Lcom/crashlytics/android/answers/AnswersEvent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/crashlytics/android/answers/AnswersEvent;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 88
    .local p1, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {p1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 89
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p0, v1, v2}, Lcom/crashlytics/android/answers/AnswersEvent;->putCustomAttribute(Ljava/lang/String;Ljava/lang/String;)Lcom/crashlytics/android/answers/AnswersEvent;

    goto :goto_0

    .line 91
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_0
    return-void
.end method

.method public static logEvent(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p0, "eventName"    # Ljava/lang/String;
    .param p1, "concatinatedParams"    # Ljava/lang/String;

    .prologue
    .line 34
    invoke-static {p1}, Lcom/appsomniacs/core/AnswersLogUtility;->parseLogParams(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v1

    .line 36
    .local v1, "parsedParams":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    sget-object v3, Lcom/appsomniacs/core/AnswersLogUtility;->EVENT_LOGIN:Ljava/lang/String;

    invoke-virtual {v3, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 37
    new-instance v0, Lcom/crashlytics/android/answers/LoginEvent;

    invoke-direct {v0}, Lcom/crashlytics/android/answers/LoginEvent;-><init>()V

    .line 38
    .local v0, "event":Lcom/crashlytics/android/answers/LoginEvent;
    sget-object v3, Lcom/appsomniacs/core/AnswersLogUtility;->ATTRIBUTE_SUCCESS:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 39
    sget-object v3, Lcom/appsomniacs/core/AnswersLogUtility;->ATTRIBUTE_SUCCESS:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v2

    .line 40
    .local v2, "success":Ljava/lang/Boolean;
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-virtual {v0, v3}, Lcom/crashlytics/android/answers/LoginEvent;->putSuccess(Z)Lcom/crashlytics/android/answers/LoginEvent;

    .line 41
    sget-object v3, Lcom/appsomniacs/core/AnswersLogUtility;->ATTRIBUTE_SUCCESS:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    .end local v2    # "success":Ljava/lang/Boolean;
    :cond_0
    invoke-static {v0, v1}, Lcom/appsomniacs/core/AnswersLogUtility;->AddParamsToEvent(Lcom/crashlytics/android/answers/AnswersEvent;Ljava/util/HashMap;)V

    .line 44
    invoke-static {}, Lcom/crashlytics/android/answers/Answers;->getInstance()Lcom/crashlytics/android/answers/Answers;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/crashlytics/android/answers/Answers;->logLogin(Lcom/crashlytics/android/answers/LoginEvent;)V

    .line 85
    .end local v0    # "event":Lcom/crashlytics/android/answers/LoginEvent;
    :goto_0
    return-void

    .line 45
    :cond_1
    sget-object v3, Lcom/appsomniacs/core/AnswersLogUtility;->EVENT_SIGNUP:Ljava/lang/String;

    invoke-virtual {v3, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 46
    new-instance v0, Lcom/crashlytics/android/answers/SignUpEvent;

    invoke-direct {v0}, Lcom/crashlytics/android/answers/SignUpEvent;-><init>()V

    .line 47
    .local v0, "event":Lcom/crashlytics/android/answers/SignUpEvent;
    sget-object v3, Lcom/appsomniacs/core/AnswersLogUtility;->ATTRIBUTE_SUCCESS:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 48
    sget-object v3, Lcom/appsomniacs/core/AnswersLogUtility;->ATTRIBUTE_SUCCESS:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v2

    .line 49
    .restart local v2    # "success":Ljava/lang/Boolean;
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-virtual {v0, v3}, Lcom/crashlytics/android/answers/SignUpEvent;->putSuccess(Z)Lcom/crashlytics/android/answers/SignUpEvent;

    .line 50
    sget-object v3, Lcom/appsomniacs/core/AnswersLogUtility;->ATTRIBUTE_SUCCESS:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    .end local v2    # "success":Ljava/lang/Boolean;
    :cond_2
    invoke-static {v0, v1}, Lcom/appsomniacs/core/AnswersLogUtility;->AddParamsToEvent(Lcom/crashlytics/android/answers/AnswersEvent;Ljava/util/HashMap;)V

    .line 53
    invoke-static {}, Lcom/crashlytics/android/answers/Answers;->getInstance()Lcom/crashlytics/android/answers/Answers;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/crashlytics/android/answers/Answers;->logSignUp(Lcom/crashlytics/android/answers/SignUpEvent;)V

    goto :goto_0

    .line 54
    .end local v0    # "event":Lcom/crashlytics/android/answers/SignUpEvent;
    :cond_3
    sget-object v3, Lcom/appsomniacs/core/AnswersLogUtility;->EVENT_PURCHASE:Ljava/lang/String;

    invoke-virtual {v3, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 55
    new-instance v0, Lcom/crashlytics/android/answers/PurchaseEvent;

    invoke-direct {v0}, Lcom/crashlytics/android/answers/PurchaseEvent;-><init>()V

    .line 56
    .local v0, "event":Lcom/crashlytics/android/answers/PurchaseEvent;
    sget-object v3, Lcom/appsomniacs/core/AnswersLogUtility;->ATTRIBUTE_SUCCESS:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 57
    sget-object v3, Lcom/appsomniacs/core/AnswersLogUtility;->ATTRIBUTE_SUCCESS:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v2

    .line 58
    .restart local v2    # "success":Ljava/lang/Boolean;
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-virtual {v0, v3}, Lcom/crashlytics/android/answers/PurchaseEvent;->putSuccess(Z)Lcom/crashlytics/android/answers/PurchaseEvent;

    .line 59
    sget-object v3, Lcom/appsomniacs/core/AnswersLogUtility;->ATTRIBUTE_SUCCESS:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    .end local v2    # "success":Ljava/lang/Boolean;
    :cond_4
    invoke-static {v0, v1}, Lcom/appsomniacs/core/AnswersLogUtility;->AddParamsToEvent(Lcom/crashlytics/android/answers/AnswersEvent;Ljava/util/HashMap;)V

    .line 62
    invoke-static {}, Lcom/crashlytics/android/answers/Answers;->getInstance()Lcom/crashlytics/android/answers/Answers;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/crashlytics/android/answers/Answers;->logPurchase(Lcom/crashlytics/android/answers/PurchaseEvent;)V

    goto :goto_0

    .line 63
    .end local v0    # "event":Lcom/crashlytics/android/answers/PurchaseEvent;
    :cond_5
    sget-object v3, Lcom/appsomniacs/core/AnswersLogUtility;->EVENT_LEVELSTART:Ljava/lang/String;

    invoke-virtual {v3, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 64
    new-instance v0, Lcom/crashlytics/android/answers/LevelStartEvent;

    invoke-direct {v0}, Lcom/crashlytics/android/answers/LevelStartEvent;-><init>()V

    .line 65
    .local v0, "event":Lcom/crashlytics/android/answers/LevelStartEvent;
    invoke-static {v0, v1}, Lcom/appsomniacs/core/AnswersLogUtility;->AddParamsToEvent(Lcom/crashlytics/android/answers/AnswersEvent;Ljava/util/HashMap;)V

    .line 66
    invoke-static {}, Lcom/crashlytics/android/answers/Answers;->getInstance()Lcom/crashlytics/android/answers/Answers;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/crashlytics/android/answers/Answers;->logLevelStart(Lcom/crashlytics/android/answers/LevelStartEvent;)V

    goto/16 :goto_0

    .line 67
    .end local v0    # "event":Lcom/crashlytics/android/answers/LevelStartEvent;
    :cond_6
    sget-object v3, Lcom/appsomniacs/core/AnswersLogUtility;->EVENT_LEVELEND:Ljava/lang/String;

    invoke-virtual {v3, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 68
    new-instance v0, Lcom/crashlytics/android/answers/LevelEndEvent;

    invoke-direct {v0}, Lcom/crashlytics/android/answers/LevelEndEvent;-><init>()V

    .line 69
    .local v0, "event":Lcom/crashlytics/android/answers/LevelEndEvent;
    invoke-static {v0, v1}, Lcom/appsomniacs/core/AnswersLogUtility;->AddParamsToEvent(Lcom/crashlytics/android/answers/AnswersEvent;Ljava/util/HashMap;)V

    .line 70
    invoke-static {}, Lcom/crashlytics/android/answers/Answers;->getInstance()Lcom/crashlytics/android/answers/Answers;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/crashlytics/android/answers/Answers;->logLevelEnd(Lcom/crashlytics/android/answers/LevelEndEvent;)V

    goto/16 :goto_0

    .line 71
    .end local v0    # "event":Lcom/crashlytics/android/answers/LevelEndEvent;
    :cond_7
    sget-object v3, Lcom/appsomniacs/core/AnswersLogUtility;->EVENT_CONTENTVIEW:Ljava/lang/String;

    invoke-virtual {v3, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 72
    new-instance v0, Lcom/crashlytics/android/answers/ContentViewEvent;

    invoke-direct {v0}, Lcom/crashlytics/android/answers/ContentViewEvent;-><init>()V

    .line 73
    .local v0, "event":Lcom/crashlytics/android/answers/ContentViewEvent;
    invoke-static {v0, v1}, Lcom/appsomniacs/core/AnswersLogUtility;->AddParamsToEvent(Lcom/crashlytics/android/answers/AnswersEvent;Ljava/util/HashMap;)V

    .line 74
    invoke-static {}, Lcom/crashlytics/android/answers/Answers;->getInstance()Lcom/crashlytics/android/answers/Answers;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/crashlytics/android/answers/Answers;->logContentView(Lcom/crashlytics/android/answers/ContentViewEvent;)V

    goto/16 :goto_0

    .line 81
    .end local v0    # "event":Lcom/crashlytics/android/answers/ContentViewEvent;
    :cond_8
    new-instance v0, Lcom/crashlytics/android/answers/CustomEvent;

    invoke-direct {v0, p0}, Lcom/crashlytics/android/answers/CustomEvent;-><init>(Ljava/lang/String;)V

    .line 82
    .local v0, "event":Lcom/crashlytics/android/answers/CustomEvent;
    invoke-static {v0, v1}, Lcom/appsomniacs/core/AnswersLogUtility;->AddParamsToEvent(Lcom/crashlytics/android/answers/AnswersEvent;Ljava/util/HashMap;)V

    .line 83
    invoke-static {}, Lcom/crashlytics/android/answers/Answers;->getInstance()Lcom/crashlytics/android/answers/Answers;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/crashlytics/android/answers/Answers;->logCustom(Lcom/crashlytics/android/answers/CustomEvent;)V

    goto/16 :goto_0
.end method

.method private static parseLogParams(Ljava/lang/String;)Ljava/util/HashMap;
    .locals 13
    .param p0, "params"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v12, 0x1

    const/4 v8, 0x0

    .line 94
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 95
    .local v5, "paramsMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz p0, :cond_3

    .line 96
    const-string v4, "\\n"

    .line 97
    .local v4, "paramSetLineSplitter":Ljava/lang/String;
    sget-object v1, Lcom/appsomniacs/core/AnswersLogUtility;->PARAM_NAME_VALUE_PAIR_SPLIT_TOKEN:Ljava/lang/String;

    .line 99
    .local v1, "paramNameValuePairSplitter":Ljava/lang/String;
    invoke-virtual {p0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 101
    .local v3, "paramPairs":[Ljava/lang/String;
    array-length v9, v3

    move v7, v8

    :goto_0
    if-ge v7, v9, :cond_3

    aget-object v2, v3, v7

    .line 102
    .local v2, "paramPair":Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v10

    if-ge v0, v10, :cond_2

    .line 103
    invoke-virtual {v2, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 104
    .local v6, "splitParam":[Ljava/lang/String;
    array-length v10, v6

    if-lez v10, :cond_0

    .line 105
    array-length v10, v6

    if-le v10, v12, :cond_1

    .line 106
    aget-object v10, v6, v8

    aget-object v11, v6, v12

    invoke-virtual {v5, v10, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    :cond_0
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 108
    :cond_1
    array-length v10, v6

    if-lez v10, :cond_0

    .line 109
    aget-object v10, v6, v8

    const-string v11, ""

    invoke-virtual {v5, v10, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 101
    .end local v6    # "splitParam":[Ljava/lang/String;
    :cond_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 115
    .end local v0    # "i":I
    .end local v1    # "paramNameValuePairSplitter":Ljava/lang/String;
    .end local v2    # "paramPair":Ljava/lang/String;
    .end local v3    # "paramPairs":[Ljava/lang/String;
    .end local v4    # "paramSetLineSplitter":Ljava/lang/String;
    :cond_3
    return-object v5
.end method
