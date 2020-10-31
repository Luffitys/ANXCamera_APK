.class public Lcom/miui/internal/analytics/EventReader;
.super Ljava/lang/Object;
.source "EventReader.java"


# instance fields
.field private mPersistenceHelper:Lcom/miui/internal/analytics/PersistenceHelper;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/internal/analytics/EventReader;->mPersistenceHelper:Lcom/miui/internal/analytics/PersistenceHelper;

    return-void
.end method


# virtual methods
.method public close()V
    .registers 2

    iget-object v0, p0, Lcom/miui/internal/analytics/EventReader;->mPersistenceHelper:Lcom/miui/internal/analytics/PersistenceHelper;

    if-eqz v0, :cond_7

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/internal/analytics/EventReader;->mPersistenceHelper:Lcom/miui/internal/analytics/PersistenceHelper;

    :cond_7
    return-void
.end method

.method public open(Landroid/content/Context;)V
    .registers 3

    invoke-static {}, Lcom/miui/internal/analytics/PersistenceHelper;->getInstance()Lcom/miui/internal/analytics/PersistenceHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/internal/analytics/EventReader;->mPersistenceHelper:Lcom/miui/internal/analytics/PersistenceHelper;

    return-void
.end method

.method public readEvents(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/miui/internal/analytics/Item;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/miui/internal/analytics/Event;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/miui/internal/analytics/EventReader;->mPersistenceHelper:Lcom/miui/internal/analytics/PersistenceHelper;

    if-eqz v0, :cond_9

    invoke-virtual {v0, p1, p2}, Lcom/miui/internal/analytics/PersistenceHelper;->readEvents(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0

    :cond_9
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
