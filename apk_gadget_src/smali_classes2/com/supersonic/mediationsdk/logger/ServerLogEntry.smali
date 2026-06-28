.class Lcom/supersonic/mediationsdk/logger/ServerLogEntry;
.super Ljava/lang/Object;
.source "ServerLogEntry.java"


# instance fields
.field private mLogLevel:I

.field private mMessage:Ljava/lang/String;

.field private mTag:Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;

.field private mTimetamp:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0
    .param p1, "tag"    # Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;
    .param p2, "timestamp"    # Ljava/lang/String;
    .param p3, "message"    # Ljava/lang/String;
    .param p4, "level"    # I

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/supersonic/mediationsdk/logger/ServerLogEntry;->mTag:Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;

    .line 29
    iput-object p2, p0, Lcom/supersonic/mediationsdk/logger/ServerLogEntry;->mTimetamp:Ljava/lang/String;

    .line 30
    iput-object p3, p0, Lcom/supersonic/mediationsdk/logger/ServerLogEntry;->mMessage:Ljava/lang/String;

    .line 31
    iput p4, p0, Lcom/supersonic/mediationsdk/logger/ServerLogEntry;->mLogLevel:I

    .line 32
    return-void
.end method


# virtual methods
.method public getLogLevel()I
    .locals 1

    .prologue
    .line 59
    iget v0, p0, Lcom/supersonic/mediationsdk/logger/ServerLogEntry;->mLogLevel:I

    return v0
.end method
