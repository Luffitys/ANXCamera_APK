.class public Lcom/miui/internal/analytics/EventReader;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private mPersistenceHelper:Lcom/miui/internal/analytics/PersistenceHelper;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/internal/analytics/EventReader;->mPersistenceHelper:Lcom/miui/internal/analytics/PersistenceHelper;

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    iget-object v0, p0, Lcom/miui/internal/analytics/EventReader;->mPersistenceHelper:Lcom/miui/internal/analytics/PersistenceHelper;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/internal/analytics/EventReader;->mPersistenceHelper:Lcom/miui/internal/analytics/PersistenceHelper;

    :cond_0
    return-void
.end method

.method public open(Landroid/content/Context;)V
    .locals 0

    invoke-static {}, Lcom/miui/internal/analytics/PersistenceHelper;->getInstance()Lcom/miui/internal/analytics/PersistenceHelper;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/internal/analytics/EventReader;->mPersistenceHelper:Lcom/miui/internal/analytics/PersistenceHelper;

    return-void
.end method

.method public readEvents(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/miui/internal/analytics/EventReader;->mPersistenceHelper:Lcom/miui/internal/analytics/PersistenceHelper;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1, p2}, Lcom/miui/internal/analytics/PersistenceHelper;->readEvents(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method
