.class Lcom/supersonic/mediationsdk/events/BaseEventsManager$1;
.super Ljava/lang/Object;
.source "BaseEventsManager.java"

# interfaces
.implements Lcom/supersonic/eventsmodule/IEventsSenderResultListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/supersonic/mediationsdk/events/BaseEventsManager;->log(Lcom/supersonic/eventsmodule/EventData;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/supersonic/mediationsdk/events/BaseEventsManager;

.field final synthetic val$latestEventTimestamp:J

.field final synthetic val$mTempLocalEvents:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/supersonic/mediationsdk/events/BaseEventsManager;JLjava/util/ArrayList;)V
    .locals 0

    .prologue
    .line 132
    iput-object p1, p0, Lcom/supersonic/mediationsdk/events/BaseEventsManager$1;->this$0:Lcom/supersonic/mediationsdk/events/BaseEventsManager;

    iput-wide p2, p0, Lcom/supersonic/mediationsdk/events/BaseEventsManager$1;->val$latestEventTimestamp:J

    iput-object p4, p0, Lcom/supersonic/mediationsdk/events/BaseEventsManager$1;->val$mTempLocalEvents:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEventsSenderResult(Z)V
    .locals 6
    .param p1, "success"    # Z

    .prologue
    .line 135
    if-eqz p1, :cond_0

    .line 136
    iget-object v1, p0, Lcom/supersonic/mediationsdk/events/BaseEventsManager$1;->this$0:Lcom/supersonic/mediationsdk/events/BaseEventsManager;

    iget-object v1, v1, Lcom/supersonic/mediationsdk/events/BaseEventsManager;->mDbStorage:Lcom/supersonic/eventsmodule/DataBaseEventsStorage;

    iget-object v2, p0, Lcom/supersonic/mediationsdk/events/BaseEventsManager$1;->this$0:Lcom/supersonic/mediationsdk/events/BaseEventsManager;

    iget-object v2, v2, Lcom/supersonic/mediationsdk/events/BaseEventsManager;->mEventType:Ljava/lang/String;

    iget-wide v4, p0, Lcom/supersonic/mediationsdk/events/BaseEventsManager$1;->val$latestEventTimestamp:J

    invoke-virtual {v1, v2, v4, v5}, Lcom/supersonic/eventsmodule/DataBaseEventsStorage;->clearEvents(Ljava/lang/String;J)V

    .line 137
    iget-object v1, p0, Lcom/supersonic/mediationsdk/events/BaseEventsManager$1;->this$0:Lcom/supersonic/mediationsdk/events/BaseEventsManager;

    iget-object v1, v1, Lcom/supersonic/mediationsdk/events/BaseEventsManager;->mDbStorage:Lcom/supersonic/eventsmodule/DataBaseEventsStorage;

    iget-object v2, p0, Lcom/supersonic/mediationsdk/events/BaseEventsManager$1;->this$0:Lcom/supersonic/mediationsdk/events/BaseEventsManager;

    iget-object v2, v2, Lcom/supersonic/mediationsdk/events/BaseEventsManager;->mEventType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/supersonic/eventsmodule/DataBaseEventsStorage;->loadEvents(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 138
    .local v0, "events":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/supersonic/eventsmodule/EventData;>;"
    iget-object v1, p0, Lcom/supersonic/mediationsdk/events/BaseEventsManager$1;->this$0:Lcom/supersonic/mediationsdk/events/BaseEventsManager;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    iget-object v3, p0, Lcom/supersonic/mediationsdk/events/BaseEventsManager$1;->this$0:Lcom/supersonic/mediationsdk/events/BaseEventsManager;

    iget-object v3, v3, Lcom/supersonic/mediationsdk/events/BaseEventsManager;->mLocalEvents:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/2addr v2, v3

    iput v2, v1, Lcom/supersonic/mediationsdk/events/BaseEventsManager;->mTotalEvents:I

    .line 143
    .end local v0    # "events":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/supersonic/eventsmodule/EventData;>;"
    :goto_0
    iget-object v1, p0, Lcom/supersonic/mediationsdk/events/BaseEventsManager$1;->this$0:Lcom/supersonic/mediationsdk/events/BaseEventsManager;

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/supersonic/mediationsdk/events/BaseEventsManager;->mEventsSendInProgress:Z

    .line 144
    return-void

    .line 141
    :cond_0
    iget-object v1, p0, Lcom/supersonic/mediationsdk/events/BaseEventsManager$1;->this$0:Lcom/supersonic/mediationsdk/events/BaseEventsManager;

    iget-object v1, v1, Lcom/supersonic/mediationsdk/events/BaseEventsManager;->mDbStorage:Lcom/supersonic/eventsmodule/DataBaseEventsStorage;

    iget-object v2, p0, Lcom/supersonic/mediationsdk/events/BaseEventsManager$1;->val$mTempLocalEvents:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/supersonic/mediationsdk/events/BaseEventsManager$1;->this$0:Lcom/supersonic/mediationsdk/events/BaseEventsManager;

    iget-object v3, v3, Lcom/supersonic/mediationsdk/events/BaseEventsManager;->mEventType:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/supersonic/eventsmodule/DataBaseEventsStorage;->saveEvents(Ljava/util/ArrayList;Ljava/lang/String;)V

    goto :goto_0
.end method
