.class public final Lcom/android/internal/app/procstats/AssociationState$SourceState;
.super Ljava/lang/Object;
.source "AssociationState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/procstats/AssociationState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "SourceState"
.end annotation


# instance fields
.field mActiveCount:I

.field mActiveDuration:J

.field mActiveDurations:Lcom/android/internal/app/procstats/DurationsTable;

.field mActiveProcState:I

.field mActiveStartUptime:J

.field mCount:I

.field mDuration:J

.field mInTrackingList:Z

.field final mKey:Lcom/android/internal/app/procstats/AssociationState$SourceKey;

.field mNesting:I

.field mProcState:I

.field mProcStateSeq:I

.field mStartUptime:J

.field mTrackingUptime:J

.field final synthetic this$0:Lcom/android/internal/app/procstats/AssociationState;


# direct methods
.method constructor <init>(Lcom/android/internal/app/procstats/AssociationState;Lcom/android/internal/app/procstats/AssociationState$SourceKey;)V
    .registers 4

    iput-object p1, p0, Lcom/android/internal/app/procstats/AssociationState$SourceState;->this$0:Lcom/android/internal/app/procstats/AssociationState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/app/procstats/AssociationState$SourceState;->mProcStateSeq:I

    iput v0, p0, Lcom/android/internal/app/procstats/AssociationState$SourceState;->mProcState:I

    iput v0, p0, Lcom/android/internal/app/procstats/AssociationState$SourceState;->mActiveProcState:I

    iput-object p2, p0, Lcom/android/internal/app/procstats/AssociationState$SourceState;->mKey:Lcom/android/internal/app/procstats/AssociationState$SourceKey;

    return-void
.end method


# virtual methods
.method public getAssociationState()Lcom/android/internal/app/procstats/AssociationState;
    .registers 2

    iget-object v0, p0, Lcom/android/internal/app/procstats/AssociationState$SourceState;->this$0:Lcom/android/internal/app/procstats/AssociationState;

    return-object v0
.end method

.method public getProcessName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/android/internal/app/procstats/AssociationState$SourceState;->mKey:Lcom/android/internal/app/procstats/AssociationState$SourceKey;

    iget-object v0, v0, Lcom/android/internal/app/procstats/AssociationState$SourceKey;->mProcess:Ljava/lang/String;

    return-object v0
.end method

.method public getUid()I
    .registers 2

    iget-object v0, p0, Lcom/android/internal/app/procstats/AssociationState$SourceState;->mKey:Lcom/android/internal/app/procstats/AssociationState$SourceKey;

    iget v0, v0, Lcom/android/internal/app/procstats/AssociationState$SourceKey;->mUid:I

    return v0
.end method

.method makeDurations()V
    .registers 3

    new-instance v0, Lcom/android/internal/app/procstats/DurationsTable;

    iget-object v1, p0, Lcom/android/internal/app/procstats/AssociationState$SourceState;->this$0:Lcom/android/internal/app/procstats/AssociationState;

    # getter for: Lcom/android/internal/app/procstats/AssociationState;->mProcessStats:Lcom/android/internal/app/procstats/ProcessStats;
    invoke-static {v1}, Lcom/android/internal/app/procstats/AssociationState;->access$000(Lcom/android/internal/app/procstats/AssociationState;)Lcom/android/internal/app/procstats/ProcessStats;

    move-result-object v1

    iget-object v1, v1, Lcom/android/internal/app/procstats/ProcessStats;->mTableData:Lcom/android/internal/app/procstats/SparseMappingTable;

    invoke-direct {v0, v1}, Lcom/android/internal/app/procstats/DurationsTable;-><init>(Lcom/android/internal/app/procstats/SparseMappingTable;)V

    iput-object v0, p0, Lcom/android/internal/app/procstats/AssociationState$SourceState;->mActiveDurations:Lcom/android/internal/app/procstats/DurationsTable;

    return-void
.end method

.method startActive(J)V
    .registers 9

    iget-boolean v0, p0, Lcom/android/internal/app/procstats/AssociationState$SourceState;->mInTrackingList:Z

    if-eqz v0, :cond_55

    iget-wide v0, p0, Lcom/android/internal/app/procstats/AssociationState$SourceState;->mActiveStartUptime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_2b

    iput-wide p1, p0, Lcom/android/internal/app/procstats/AssociationState$SourceState;->mActiveStartUptime:J

    iget v0, p0, Lcom/android/internal/app/procstats/AssociationState$SourceState;->mActiveCount:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/internal/app/procstats/AssociationState$SourceState;->mActiveCount:I

    iget-object v0, p0, Lcom/android/internal/app/procstats/AssociationState$SourceState;->this$0:Lcom/android/internal/app/procstats/AssociationState;

    # operator++ for: Lcom/android/internal/app/procstats/AssociationState;->mTotalActiveNesting:I
    invoke-static {v0}, Lcom/android/internal/app/procstats/AssociationState;->access$108(Lcom/android/internal/app/procstats/AssociationState;)I

    iget-object v0, p0, Lcom/android/internal/app/procstats/AssociationState$SourceState;->this$0:Lcom/android/internal/app/procstats/AssociationState;

    # getter for: Lcom/android/internal/app/procstats/AssociationState;->mTotalActiveNesting:I
    invoke-static {v0}, Lcom/android/internal/app/procstats/AssociationState;->access$100(Lcom/android/internal/app/procstats/AssociationState;)I

    move-result v0

    if-ne v0, v1, :cond_2b

    iget-object v0, p0, Lcom/android/internal/app/procstats/AssociationState$SourceState;->this$0:Lcom/android/internal/app/procstats/AssociationState;

    # operator++ for: Lcom/android/internal/app/procstats/AssociationState;->mTotalActiveCount:I
    invoke-static {v0}, Lcom/android/internal/app/procstats/AssociationState;->access$208(Lcom/android/internal/app/procstats/AssociationState;)I

    iget-object v0, p0, Lcom/android/internal/app/procstats/AssociationState$SourceState;->this$0:Lcom/android/internal/app/procstats/AssociationState;

    # setter for: Lcom/android/internal/app/procstats/AssociationState;->mTotalActiveStartUptime:J
    invoke-static {v0, p1, p2}, Lcom/android/internal/app/procstats/AssociationState;->access$302(Lcom/android/internal/app/procstats/AssociationState;J)J

    :cond_2b
    iget v0, p0, Lcom/android/internal/app/procstats/AssociationState$SourceState;->mActiveProcState:I

    iget v1, p0, Lcom/android/internal/app/procstats/AssociationState$SourceState;->mProcState:I

    if-eq v0, v1, :cond_6c

    const/4 v1, -0x1

    if-eq v0, v1, :cond_50

    iget-wide v0, p0, Lcom/android/internal/app/procstats/AssociationState$SourceState;->mActiveDuration:J

    add-long/2addr v0, p1

    iget-wide v4, p0, Lcom/android/internal/app/procstats/AssociationState$SourceState;->mActiveStartUptime:J

    sub-long/2addr v0, v4

    iput-wide p1, p0, Lcom/android/internal/app/procstats/AssociationState$SourceState;->mActiveStartUptime:J

    cmp-long v4, v0, v2

    if-eqz v4, :cond_50

    iget-object v4, p0, Lcom/android/internal/app/procstats/AssociationState$SourceState;->mActiveDurations:Lcom/android/internal/app/procstats/DurationsTable;

    if-nez v4, :cond_47

    invoke-virtual {p0}, Lcom/android/internal/app/procstats/AssociationState$SourceState;->makeDurations()V

    :cond_47
    iget-object v4, p0, Lcom/android/internal/app/procstats/AssociationState$SourceState;->mActiveDurations:Lcom/android/internal/app/procstats/DurationsTable;

    iget v5, p0, Lcom/android/internal/app/procstats/AssociationState$SourceState;->mActiveProcState:I

    invoke-virtual {v4, v5, v0, v1}, Lcom/android/internal/app/procstats/DurationsTable;->addDuration(IJ)V

    iput-wide v2, p0, Lcom/android/internal/app/procstats/AssociationState$SourceState;->mActiveDuration:J

    :cond_50
    iget v0, p0, Lcom/android/internal/app/procstats/AssociationState$SourceState;->mProcState:I

    iput v0, p0, Lcom/android/internal/app/procstats/AssociationState$SourceState;->mActiveProcState:I

    goto :goto_6c

    :cond_55
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "startActive while not tracking: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ProcessStats"

    invoke-static {v1, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6c
    :goto_6c
    return-void
.end method

.method public stop()V
    .registers 7

    iget v0, p0, Lcom/android/internal/app/procstats/AssociationState$SourceState;->mNesting:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/internal/app/procstats/AssociationState$SourceState;->mNesting:I

    if-nez v0, :cond_18

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/internal/app/procstats/AssociationState$SourceState;->mDuration:J

    iget-wide v4, p0, Lcom/android/internal/app/procstats/AssociationState$SourceState;->mStartUptime:J

    sub-long v4, v0, v4

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/android/internal/app/procstats/AssociationState$SourceState;->mDuration:J

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/app/procstats/AssociationState$SourceState;->stopTracking(J)V

    :cond_18
    return-void
.end method

.method stopActive(J)V
    .registers 10

    iget-wide v0, p0, Lcom/android/internal/app/procstats/AssociationState$SourceState;->mActiveStartUptime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_55

    iget-boolean v0, p0, Lcom/android/internal/app/procstats/AssociationState$SourceState;->mInTrackingList:Z

    if-nez v0, :cond_23

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "stopActive while not tracking: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ProcessStats"

    invoke-static {v1, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    :cond_23
    iget-wide v0, p0, Lcom/android/internal/app/procstats/AssociationState$SourceState;->mActiveStartUptime:J

    sub-long v0, p1, v0

    iput-wide v2, p0, Lcom/android/internal/app/procstats/AssociationState$SourceState;->mActiveStartUptime:J

    iget-object v4, p0, Lcom/android/internal/app/procstats/AssociationState$SourceState;->mActiveDurations:Lcom/android/internal/app/procstats/DurationsTable;

    if-eqz v4, :cond_33

    iget v5, p0, Lcom/android/internal/app/procstats/AssociationState$SourceState;->mActiveProcState:I

    invoke-virtual {v4, v5, v0, v1}, Lcom/android/internal/app/procstats/DurationsTable;->addDuration(IJ)V

    goto :goto_38

    :cond_33
    iget-wide v4, p0, Lcom/android/internal/app/procstats/AssociationState$SourceState;->mActiveDuration:J

    add-long/2addr v4, v0

    iput-wide v4, p0, Lcom/android/internal/app/procstats/AssociationState$SourceState;->mActiveDuration:J

    :goto_38
    iget-object v4, p0, Lcom/android/internal/app/procstats/AssociationState$SourceState;->this$0:Lcom/android/internal/app/procstats/AssociationState;

    # operator-- for: Lcom/android/internal/app/procstats/AssociationState;->mTotalActiveNesting:I
    invoke-static {v4}, Lcom/android/internal/app/procstats/AssociationState;->access$110(Lcom/android/internal/app/procstats/AssociationState;)I

    iget-object v4, p0, Lcom/android/internal/app/procstats/AssociationState$SourceState;->this$0:Lcom/android/internal/app/procstats/AssociationState;

    # getter for: Lcom/android/internal/app/procstats/AssociationState;->mTotalActiveNesting:I
    invoke-static {v4}, Lcom/android/internal/app/procstats/AssociationState;->access$100(Lcom/android/internal/app/procstats/AssociationState;)I

    move-result v4

    if-nez v4, :cond_55

    iget-object v4, p0, Lcom/android/internal/app/procstats/AssociationState$SourceState;->this$0:Lcom/android/internal/app/procstats/AssociationState;

    # getter for: Lcom/android/internal/app/procstats/AssociationState;->mTotalActiveStartUptime:J
    invoke-static {v4}, Lcom/android/internal/app/procstats/AssociationState;->access$300(Lcom/android/internal/app/procstats/AssociationState;)J

    move-result-wide v5

    sub-long v5, p1, v5

    # += operator for: Lcom/android/internal/app/procstats/AssociationState;->mTotalActiveDuration:J
    invoke-static {v4, v5, v6}, Lcom/android/internal/app/procstats/AssociationState;->access$414(Lcom/android/internal/app/procstats/AssociationState;J)J

    iget-object v4, p0, Lcom/android/internal/app/procstats/AssociationState$SourceState;->this$0:Lcom/android/internal/app/procstats/AssociationState;

    # setter for: Lcom/android/internal/app/procstats/AssociationState;->mTotalActiveStartUptime:J
    invoke-static {v4, v2, v3}, Lcom/android/internal/app/procstats/AssociationState;->access$302(Lcom/android/internal/app/procstats/AssociationState;J)J

    :cond_55
    return-void
.end method

.method stopTracking(J)V
    .registers 6

    iget-object v0, p0, Lcom/android/internal/app/procstats/AssociationState$SourceState;->this$0:Lcom/android/internal/app/procstats/AssociationState;

    # operator-- for: Lcom/android/internal/app/procstats/AssociationState;->mTotalNesting:I
    invoke-static {v0}, Lcom/android/internal/app/procstats/AssociationState;->access$510(Lcom/android/internal/app/procstats/AssociationState;)I

    iget-object v0, p0, Lcom/android/internal/app/procstats/AssociationState$SourceState;->this$0:Lcom/android/internal/app/procstats/AssociationState;

    # getter for: Lcom/android/internal/app/procstats/AssociationState;->mTotalNesting:I
    invoke-static {v0}, Lcom/android/internal/app/procstats/AssociationState;->access$500(Lcom/android/internal/app/procstats/AssociationState;)I

    move-result v0

    if-nez v0, :cond_18

    iget-object v0, p0, Lcom/android/internal/app/procstats/AssociationState$SourceState;->this$0:Lcom/android/internal/app/procstats/AssociationState;

    # getter for: Lcom/android/internal/app/procstats/AssociationState;->mTotalStartUptime:J
    invoke-static {v0}, Lcom/android/internal/app/procstats/AssociationState;->access$700(Lcom/android/internal/app/procstats/AssociationState;)J

    move-result-wide v1

    sub-long v1, p1, v1

    # += operator for: Lcom/android/internal/app/procstats/AssociationState;->mTotalDuration:J
    invoke-static {v0, v1, v2}, Lcom/android/internal/app/procstats/AssociationState;->access$614(Lcom/android/internal/app/procstats/AssociationState;J)J

    :cond_18
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/app/procstats/AssociationState$SourceState;->stopActive(J)V

    iget-boolean v0, p0, Lcom/android/internal/app/procstats/AssociationState$SourceState;->mInTrackingList:Z

    if-eqz v0, :cond_58

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/app/procstats/AssociationState$SourceState;->mInTrackingList:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/app/procstats/AssociationState$SourceState;->mProcState:I

    iget-object v0, p0, Lcom/android/internal/app/procstats/AssociationState$SourceState;->this$0:Lcom/android/internal/app/procstats/AssociationState;

    # getter for: Lcom/android/internal/app/procstats/AssociationState;->mProcessStats:Lcom/android/internal/app/procstats/ProcessStats;
    invoke-static {v0}, Lcom/android/internal/app/procstats/AssociationState;->access$000(Lcom/android/internal/app/procstats/AssociationState;)Lcom/android/internal/app/procstats/ProcessStats;

    move-result-object v0

    iget-object v0, v0, Lcom/android/internal/app/procstats/ProcessStats;->mTrackingAssociations:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_33
    if-ltz v1, :cond_42

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, p0, :cond_3f

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    return-void

    :cond_3f
    add-int/lit8 v1, v1, -0x1

    goto :goto_33

    :cond_42
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Stop tracking didn\'t find in tracking list: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ProcessStats"

    invoke-static {v2, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    :cond_58
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "SourceState{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/internal/app/procstats/AssociationState$SourceState;->mKey:Lcom/android/internal/app/procstats/AssociationState$SourceKey;

    iget-object v2, v2, Lcom/android/internal/app/procstats/AssociationState$SourceKey;->mProcess:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/internal/app/procstats/AssociationState$SourceState;->mKey:Lcom/android/internal/app/procstats/AssociationState$SourceKey;

    iget v2, v2, Lcom/android/internal/app/procstats/AssociationState$SourceKey;->mUid:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/internal/app/procstats/AssociationState$SourceState;->mProcState:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_4a

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/android/internal/app/procstats/DumpUtils;->STATE_NAMES:[Ljava/lang/String;

    iget v2, p0, Lcom/android/internal/app/procstats/AssociationState$SourceState;->mProcState:I

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " #"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/app/procstats/AssociationState$SourceState;->mProcStateSeq:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :cond_4a
    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public trackProcState(IIJ)V
    .registers 6

    sget-object v0, Lcom/android/internal/app/procstats/ProcessState;->PROCESS_STATE_TO_STATE:[I

    aget p1, v0, p1

    iget v0, p0, Lcom/android/internal/app/procstats/AssociationState$SourceState;->mProcStateSeq:I

    if-eq p2, v0, :cond_d

    iput p2, p0, Lcom/android/internal/app/procstats/AssociationState$SourceState;->mProcStateSeq:I

    iput p1, p0, Lcom/android/internal/app/procstats/AssociationState$SourceState;->mProcState:I

    goto :goto_13

    :cond_d
    iget v0, p0, Lcom/android/internal/app/procstats/AssociationState$SourceState;->mProcState:I

    if-ge p1, v0, :cond_13

    iput p1, p0, Lcom/android/internal/app/procstats/AssociationState$SourceState;->mProcState:I

    :cond_13
    :goto_13
    const/16 v0, 0x9

    if-ge p1, v0, :cond_2b

    iget-boolean v0, p0, Lcom/android/internal/app/procstats/AssociationState$SourceState;->mInTrackingList:Z

    if-nez v0, :cond_2b

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/app/procstats/AssociationState$SourceState;->mInTrackingList:Z

    iput-wide p3, p0, Lcom/android/internal/app/procstats/AssociationState$SourceState;->mTrackingUptime:J

    iget-object v0, p0, Lcom/android/internal/app/procstats/AssociationState$SourceState;->this$0:Lcom/android/internal/app/procstats/AssociationState;

    # getter for: Lcom/android/internal/app/procstats/AssociationState;->mProcessStats:Lcom/android/internal/app/procstats/ProcessStats;
    invoke-static {v0}, Lcom/android/internal/app/procstats/AssociationState;->access$000(Lcom/android/internal/app/procstats/AssociationState;)Lcom/android/internal/app/procstats/ProcessStats;

    move-result-object v0

    iget-object v0, v0, Lcom/android/internal/app/procstats/ProcessStats;->mTrackingAssociations:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2b
    return-void
.end method
