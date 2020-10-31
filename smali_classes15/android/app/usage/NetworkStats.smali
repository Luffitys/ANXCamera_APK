.class public final Landroid/app/usage/NetworkStats;
.super Ljava/lang/Object;
.source "NetworkStats.java"

# interfaces
.implements Ljava/lang/AutoCloseable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/usage/NetworkStats$Bucket;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "NetworkStats"


# instance fields
.field private final mCloseGuard:Ldalvik/system/CloseGuard;

.field private final mEndTimeStamp:J

.field private mEnumerationIndex:I

.field private mHistory:Landroid/net/NetworkStatsHistory;

.field private mRecycledHistoryEntry:Landroid/net/NetworkStatsHistory$Entry;

.field private mRecycledSummaryEntry:Landroid/net/NetworkStats$Entry;

.field private mSession:Landroid/net/INetworkStatsSession;

.field private final mStartTimeStamp:J

.field private mState:I

.field private mSummary:Landroid/net/NetworkStats;

.field private mTag:I

.field private mTemplate:Landroid/net/NetworkTemplate;

.field private mUidOrUidIndex:I

.field private mUids:[I


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/net/NetworkTemplate;IJJLandroid/net/INetworkStatsService;)V
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;,
            Ljava/lang/SecurityException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Ldalvik/system/CloseGuard;->get()Ldalvik/system/CloseGuard;

    move-result-object v0

    iput-object v0, p0, Landroid/app/usage/NetworkStats;->mCloseGuard:Ldalvik/system/CloseGuard;

    const/4 v0, 0x0

    iput v0, p0, Landroid/app/usage/NetworkStats;->mTag:I

    const/4 v1, -0x1

    iput v1, p0, Landroid/app/usage/NetworkStats;->mState:I

    const/4 v1, 0x0

    iput-object v1, p0, Landroid/app/usage/NetworkStats;->mSummary:Landroid/net/NetworkStats;

    iput-object v1, p0, Landroid/app/usage/NetworkStats;->mHistory:Landroid/net/NetworkStatsHistory;

    iput v0, p0, Landroid/app/usage/NetworkStats;->mEnumerationIndex:I

    iput-object v1, p0, Landroid/app/usage/NetworkStats;->mRecycledSummaryEntry:Landroid/net/NetworkStats$Entry;

    iput-object v1, p0, Landroid/app/usage/NetworkStats;->mRecycledHistoryEntry:Landroid/net/NetworkStatsHistory$Entry;

    invoke-virtual {p1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p8, p3, v0}, Landroid/net/INetworkStatsService;->openSessionForUsageStats(ILjava/lang/String;)Landroid/net/INetworkStatsSession;

    move-result-object v0

    iput-object v0, p0, Landroid/app/usage/NetworkStats;->mSession:Landroid/net/INetworkStatsSession;

    iget-object v0, p0, Landroid/app/usage/NetworkStats;->mCloseGuard:Ldalvik/system/CloseGuard;

    const-string v1, "close"

    invoke-virtual {v0, v1}, Ldalvik/system/CloseGuard;->open(Ljava/lang/String;)V

    iput-object p2, p0, Landroid/app/usage/NetworkStats;->mTemplate:Landroid/net/NetworkTemplate;

    iput-wide p4, p0, Landroid/app/usage/NetworkStats;->mStartTimeStamp:J

    iput-wide p6, p0, Landroid/app/usage/NetworkStats;->mEndTimeStamp:J

    return-void
.end method

.method private fillBucketFromSummaryEntry(Landroid/app/usage/NetworkStats$Bucket;)V
    .registers 4

    iget-object v0, p0, Landroid/app/usage/NetworkStats;->mRecycledSummaryEntry:Landroid/net/NetworkStats$Entry;

    iget v0, v0, Landroid/net/NetworkStats$Entry;->uid:I

    # invokes: Landroid/app/usage/NetworkStats$Bucket;->convertUid(I)I
    invoke-static {v0}, Landroid/app/usage/NetworkStats$Bucket;->access$200(I)I

    move-result v0

    # setter for: Landroid/app/usage/NetworkStats$Bucket;->mUid:I
    invoke-static {p1, v0}, Landroid/app/usage/NetworkStats$Bucket;->access$102(Landroid/app/usage/NetworkStats$Bucket;I)I

    iget-object v0, p0, Landroid/app/usage/NetworkStats;->mRecycledSummaryEntry:Landroid/net/NetworkStats$Entry;

    iget v0, v0, Landroid/net/NetworkStats$Entry;->tag:I

    # invokes: Landroid/app/usage/NetworkStats$Bucket;->convertTag(I)I
    invoke-static {v0}, Landroid/app/usage/NetworkStats$Bucket;->access$400(I)I

    move-result v0

    # setter for: Landroid/app/usage/NetworkStats$Bucket;->mTag:I
    invoke-static {p1, v0}, Landroid/app/usage/NetworkStats$Bucket;->access$302(Landroid/app/usage/NetworkStats$Bucket;I)I

    iget-object v0, p0, Landroid/app/usage/NetworkStats;->mRecycledSummaryEntry:Landroid/net/NetworkStats$Entry;

    iget v0, v0, Landroid/net/NetworkStats$Entry;->set:I

    # invokes: Landroid/app/usage/NetworkStats$Bucket;->convertState(I)I
    invoke-static {v0}, Landroid/app/usage/NetworkStats$Bucket;->access$600(I)I

    move-result v0

    # setter for: Landroid/app/usage/NetworkStats$Bucket;->mState:I
    invoke-static {p1, v0}, Landroid/app/usage/NetworkStats$Bucket;->access$502(Landroid/app/usage/NetworkStats$Bucket;I)I

    iget-object v0, p0, Landroid/app/usage/NetworkStats;->mRecycledSummaryEntry:Landroid/net/NetworkStats$Entry;

    iget v0, v0, Landroid/net/NetworkStats$Entry;->defaultNetwork:I

    # invokes: Landroid/app/usage/NetworkStats$Bucket;->convertDefaultNetworkStatus(I)I
    invoke-static {v0}, Landroid/app/usage/NetworkStats$Bucket;->access$800(I)I

    move-result v0

    # setter for: Landroid/app/usage/NetworkStats$Bucket;->mDefaultNetworkStatus:I
    invoke-static {p1, v0}, Landroid/app/usage/NetworkStats$Bucket;->access$702(Landroid/app/usage/NetworkStats$Bucket;I)I

    iget-object v0, p0, Landroid/app/usage/NetworkStats;->mRecycledSummaryEntry:Landroid/net/NetworkStats$Entry;

    iget v0, v0, Landroid/net/NetworkStats$Entry;->metered:I

    # invokes: Landroid/app/usage/NetworkStats$Bucket;->convertMetered(I)I
    invoke-static {v0}, Landroid/app/usage/NetworkStats$Bucket;->access$1000(I)I

    move-result v0

    # setter for: Landroid/app/usage/NetworkStats$Bucket;->mMetered:I
    invoke-static {p1, v0}, Landroid/app/usage/NetworkStats$Bucket;->access$902(Landroid/app/usage/NetworkStats$Bucket;I)I

    iget-object v0, p0, Landroid/app/usage/NetworkStats;->mRecycledSummaryEntry:Landroid/net/NetworkStats$Entry;

    iget v0, v0, Landroid/net/NetworkStats$Entry;->roaming:I

    # invokes: Landroid/app/usage/NetworkStats$Bucket;->convertRoaming(I)I
    invoke-static {v0}, Landroid/app/usage/NetworkStats$Bucket;->access$1200(I)I

    move-result v0

    # setter for: Landroid/app/usage/NetworkStats$Bucket;->mRoaming:I
    invoke-static {p1, v0}, Landroid/app/usage/NetworkStats$Bucket;->access$1102(Landroid/app/usage/NetworkStats$Bucket;I)I

    iget-wide v0, p0, Landroid/app/usage/NetworkStats;->mStartTimeStamp:J

    # setter for: Landroid/app/usage/NetworkStats$Bucket;->mBeginTimeStamp:J
    invoke-static {p1, v0, v1}, Landroid/app/usage/NetworkStats$Bucket;->access$1302(Landroid/app/usage/NetworkStats$Bucket;J)J

    iget-wide v0, p0, Landroid/app/usage/NetworkStats;->mEndTimeStamp:J

    # setter for: Landroid/app/usage/NetworkStats$Bucket;->mEndTimeStamp:J
    invoke-static {p1, v0, v1}, Landroid/app/usage/NetworkStats$Bucket;->access$1402(Landroid/app/usage/NetworkStats$Bucket;J)J

    iget-object v0, p0, Landroid/app/usage/NetworkStats;->mRecycledSummaryEntry:Landroid/net/NetworkStats$Entry;

    iget-wide v0, v0, Landroid/net/NetworkStats$Entry;->rxBytes:J

    # setter for: Landroid/app/usage/NetworkStats$Bucket;->mRxBytes:J
    invoke-static {p1, v0, v1}, Landroid/app/usage/NetworkStats$Bucket;->access$1502(Landroid/app/usage/NetworkStats$Bucket;J)J

    iget-object v0, p0, Landroid/app/usage/NetworkStats;->mRecycledSummaryEntry:Landroid/net/NetworkStats$Entry;

    iget-wide v0, v0, Landroid/net/NetworkStats$Entry;->rxPackets:J

    # setter for: Landroid/app/usage/NetworkStats$Bucket;->mRxPackets:J
    invoke-static {p1, v0, v1}, Landroid/app/usage/NetworkStats$Bucket;->access$1602(Landroid/app/usage/NetworkStats$Bucket;J)J

    iget-object v0, p0, Landroid/app/usage/NetworkStats;->mRecycledSummaryEntry:Landroid/net/NetworkStats$Entry;

    iget-wide v0, v0, Landroid/net/NetworkStats$Entry;->txBytes:J

    # setter for: Landroid/app/usage/NetworkStats$Bucket;->mTxBytes:J
    invoke-static {p1, v0, v1}, Landroid/app/usage/NetworkStats$Bucket;->access$1702(Landroid/app/usage/NetworkStats$Bucket;J)J

    iget-object v0, p0, Landroid/app/usage/NetworkStats;->mRecycledSummaryEntry:Landroid/net/NetworkStats$Entry;

    iget-wide v0, v0, Landroid/net/NetworkStats$Entry;->txPackets:J

    # setter for: Landroid/app/usage/NetworkStats$Bucket;->mTxPackets:J
    invoke-static {p1, v0, v1}, Landroid/app/usage/NetworkStats$Bucket;->access$1802(Landroid/app/usage/NetworkStats$Bucket;J)J

    return-void
.end method

.method private getNextHistoryBucket(Landroid/app/usage/NetworkStats$Bucket;)Z
    .registers 6

    if-eqz p1, :cond_80

    iget-object v0, p0, Landroid/app/usage/NetworkStats;->mHistory:Landroid/net/NetworkStatsHistory;

    if-eqz v0, :cond_80

    iget v1, p0, Landroid/app/usage/NetworkStats;->mEnumerationIndex:I

    invoke-virtual {v0}, Landroid/net/NetworkStatsHistory;->size()I

    move-result v0

    if-ge v1, v0, :cond_72

    iget-object v0, p0, Landroid/app/usage/NetworkStats;->mHistory:Landroid/net/NetworkStatsHistory;

    iget v1, p0, Landroid/app/usage/NetworkStats;->mEnumerationIndex:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Landroid/app/usage/NetworkStats;->mEnumerationIndex:I

    iget-object v2, p0, Landroid/app/usage/NetworkStats;->mRecycledHistoryEntry:Landroid/net/NetworkStatsHistory$Entry;

    invoke-virtual {v0, v1, v2}, Landroid/net/NetworkStatsHistory;->getValues(ILandroid/net/NetworkStatsHistory$Entry;)Landroid/net/NetworkStatsHistory$Entry;

    move-result-object v0

    iput-object v0, p0, Landroid/app/usage/NetworkStats;->mRecycledHistoryEntry:Landroid/net/NetworkStatsHistory$Entry;

    invoke-direct {p0}, Landroid/app/usage/NetworkStats;->getUid()I

    move-result v0

    # invokes: Landroid/app/usage/NetworkStats$Bucket;->convertUid(I)I
    invoke-static {v0}, Landroid/app/usage/NetworkStats$Bucket;->access$200(I)I

    move-result v0

    # setter for: Landroid/app/usage/NetworkStats$Bucket;->mUid:I
    invoke-static {p1, v0}, Landroid/app/usage/NetworkStats$Bucket;->access$102(Landroid/app/usage/NetworkStats$Bucket;I)I

    iget v0, p0, Landroid/app/usage/NetworkStats;->mTag:I

    # invokes: Landroid/app/usage/NetworkStats$Bucket;->convertTag(I)I
    invoke-static {v0}, Landroid/app/usage/NetworkStats$Bucket;->access$400(I)I

    move-result v0

    # setter for: Landroid/app/usage/NetworkStats$Bucket;->mTag:I
    invoke-static {p1, v0}, Landroid/app/usage/NetworkStats$Bucket;->access$302(Landroid/app/usage/NetworkStats$Bucket;I)I

    iget v0, p0, Landroid/app/usage/NetworkStats;->mState:I

    # setter for: Landroid/app/usage/NetworkStats$Bucket;->mState:I
    invoke-static {p1, v0}, Landroid/app/usage/NetworkStats$Bucket;->access$502(Landroid/app/usage/NetworkStats$Bucket;I)I

    const/4 v0, -0x1

    # setter for: Landroid/app/usage/NetworkStats$Bucket;->mDefaultNetworkStatus:I
    invoke-static {p1, v0}, Landroid/app/usage/NetworkStats$Bucket;->access$702(Landroid/app/usage/NetworkStats$Bucket;I)I

    # setter for: Landroid/app/usage/NetworkStats$Bucket;->mMetered:I
    invoke-static {p1, v0}, Landroid/app/usage/NetworkStats$Bucket;->access$902(Landroid/app/usage/NetworkStats$Bucket;I)I

    # setter for: Landroid/app/usage/NetworkStats$Bucket;->mRoaming:I
    invoke-static {p1, v0}, Landroid/app/usage/NetworkStats$Bucket;->access$1102(Landroid/app/usage/NetworkStats$Bucket;I)I

    iget-object v0, p0, Landroid/app/usage/NetworkStats;->mRecycledHistoryEntry:Landroid/net/NetworkStatsHistory$Entry;

    iget-wide v0, v0, Landroid/net/NetworkStatsHistory$Entry;->bucketStart:J

    # setter for: Landroid/app/usage/NetworkStats$Bucket;->mBeginTimeStamp:J
    invoke-static {p1, v0, v1}, Landroid/app/usage/NetworkStats$Bucket;->access$1302(Landroid/app/usage/NetworkStats$Bucket;J)J

    iget-object v0, p0, Landroid/app/usage/NetworkStats;->mRecycledHistoryEntry:Landroid/net/NetworkStatsHistory$Entry;

    iget-wide v0, v0, Landroid/net/NetworkStatsHistory$Entry;->bucketStart:J

    iget-object v2, p0, Landroid/app/usage/NetworkStats;->mRecycledHistoryEntry:Landroid/net/NetworkStatsHistory$Entry;

    iget-wide v2, v2, Landroid/net/NetworkStatsHistory$Entry;->bucketDuration:J

    add-long/2addr v0, v2

    # setter for: Landroid/app/usage/NetworkStats$Bucket;->mEndTimeStamp:J
    invoke-static {p1, v0, v1}, Landroid/app/usage/NetworkStats$Bucket;->access$1402(Landroid/app/usage/NetworkStats$Bucket;J)J

    iget-object v0, p0, Landroid/app/usage/NetworkStats;->mRecycledHistoryEntry:Landroid/net/NetworkStatsHistory$Entry;

    iget-wide v0, v0, Landroid/net/NetworkStatsHistory$Entry;->rxBytes:J

    # setter for: Landroid/app/usage/NetworkStats$Bucket;->mRxBytes:J
    invoke-static {p1, v0, v1}, Landroid/app/usage/NetworkStats$Bucket;->access$1502(Landroid/app/usage/NetworkStats$Bucket;J)J

    iget-object v0, p0, Landroid/app/usage/NetworkStats;->mRecycledHistoryEntry:Landroid/net/NetworkStatsHistory$Entry;

    iget-wide v0, v0, Landroid/net/NetworkStatsHistory$Entry;->rxPackets:J

    # setter for: Landroid/app/usage/NetworkStats$Bucket;->mRxPackets:J
    invoke-static {p1, v0, v1}, Landroid/app/usage/NetworkStats$Bucket;->access$1602(Landroid/app/usage/NetworkStats$Bucket;J)J

    iget-object v0, p0, Landroid/app/usage/NetworkStats;->mRecycledHistoryEntry:Landroid/net/NetworkStatsHistory$Entry;

    iget-wide v0, v0, Landroid/net/NetworkStatsHistory$Entry;->txBytes:J

    # setter for: Landroid/app/usage/NetworkStats$Bucket;->mTxBytes:J
    invoke-static {p1, v0, v1}, Landroid/app/usage/NetworkStats$Bucket;->access$1702(Landroid/app/usage/NetworkStats$Bucket;J)J

    iget-object v0, p0, Landroid/app/usage/NetworkStats;->mRecycledHistoryEntry:Landroid/net/NetworkStatsHistory$Entry;

    iget-wide v0, v0, Landroid/net/NetworkStatsHistory$Entry;->txPackets:J

    # setter for: Landroid/app/usage/NetworkStats$Bucket;->mTxPackets:J
    invoke-static {p1, v0, v1}, Landroid/app/usage/NetworkStats$Bucket;->access$1802(Landroid/app/usage/NetworkStats$Bucket;J)J

    const/4 v0, 0x1

    return v0

    :cond_72
    invoke-direct {p0}, Landroid/app/usage/NetworkStats;->hasNextUid()Z

    move-result v0

    if-eqz v0, :cond_80

    invoke-direct {p0}, Landroid/app/usage/NetworkStats;->stepHistory()V

    invoke-direct {p0, p1}, Landroid/app/usage/NetworkStats;->getNextHistoryBucket(Landroid/app/usage/NetworkStats$Bucket;)Z

    move-result v0

    return v0

    :cond_80
    const/4 v0, 0x0

    return v0
.end method

.method private getNextSummaryBucket(Landroid/app/usage/NetworkStats$Bucket;)Z
    .registers 5

    if-eqz p1, :cond_21

    iget v0, p0, Landroid/app/usage/NetworkStats;->mEnumerationIndex:I

    iget-object v1, p0, Landroid/app/usage/NetworkStats;->mSummary:Landroid/net/NetworkStats;

    invoke-virtual {v1}, Landroid/net/NetworkStats;->size()I

    move-result v1

    if-ge v0, v1, :cond_21

    iget-object v0, p0, Landroid/app/usage/NetworkStats;->mSummary:Landroid/net/NetworkStats;

    iget v1, p0, Landroid/app/usage/NetworkStats;->mEnumerationIndex:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Landroid/app/usage/NetworkStats;->mEnumerationIndex:I

    iget-object v2, p0, Landroid/app/usage/NetworkStats;->mRecycledSummaryEntry:Landroid/net/NetworkStats$Entry;

    invoke-virtual {v0, v1, v2}, Landroid/net/NetworkStats;->getValues(ILandroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats$Entry;

    move-result-object v0

    iput-object v0, p0, Landroid/app/usage/NetworkStats;->mRecycledSummaryEntry:Landroid/net/NetworkStats$Entry;

    invoke-direct {p0, p1}, Landroid/app/usage/NetworkStats;->fillBucketFromSummaryEntry(Landroid/app/usage/NetworkStats$Bucket;)V

    const/4 v0, 0x1

    return v0

    :cond_21
    const/4 v0, 0x0

    return v0
.end method

.method private getUid()I
    .registers 4

    invoke-direct {p0}, Landroid/app/usage/NetworkStats;->isUidEnumeration()Z

    move-result v0

    if-eqz v0, :cond_36

    iget v0, p0, Landroid/app/usage/NetworkStats;->mUidOrUidIndex:I

    if-ltz v0, :cond_12

    iget-object v1, p0, Landroid/app/usage/NetworkStats;->mUids:[I

    array-length v2, v1

    if-ge v0, v2, :cond_12

    aget v0, v1, v0

    return v0

    :cond_12
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Index="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Landroid/app/usage/NetworkStats;->mUidOrUidIndex:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " mUids.length="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroid/app/usage/NetworkStats;->mUids:[I

    array-length v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_36
    iget v0, p0, Landroid/app/usage/NetworkStats;->mUidOrUidIndex:I

    return v0
.end method

.method private hasNextUid()Z
    .registers 4

    invoke-direct {p0}, Landroid/app/usage/NetworkStats;->isUidEnumeration()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_10

    iget v0, p0, Landroid/app/usage/NetworkStats;->mUidOrUidIndex:I

    add-int/2addr v0, v1

    iget-object v2, p0, Landroid/app/usage/NetworkStats;->mUids:[I

    array-length v2, v2

    if-ge v0, v2, :cond_10

    goto :goto_11

    :cond_10
    const/4 v1, 0x0

    :goto_11
    return v1
.end method

.method private isUidEnumeration()Z
    .registers 2

    iget-object v0, p0, Landroid/app/usage/NetworkStats;->mUids:[I

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method private setSingleUidTagState(III)V
    .registers 4

    iput p1, p0, Landroid/app/usage/NetworkStats;->mUidOrUidIndex:I

    iput p2, p0, Landroid/app/usage/NetworkStats;->mTag:I

    iput p3, p0, Landroid/app/usage/NetworkStats;->mState:I

    return-void
.end method

.method private stepHistory()V
    .registers 12

    invoke-direct {p0}, Landroid/app/usage/NetworkStats;->hasNextUid()Z

    move-result v0

    if-eqz v0, :cond_2b

    invoke-direct {p0}, Landroid/app/usage/NetworkStats;->stepUid()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/app/usage/NetworkStats;->mHistory:Landroid/net/NetworkStatsHistory;

    :try_start_c
    iget-object v1, p0, Landroid/app/usage/NetworkStats;->mSession:Landroid/net/INetworkStatsSession;

    iget-object v2, p0, Landroid/app/usage/NetworkStats;->mTemplate:Landroid/net/NetworkTemplate;

    invoke-direct {p0}, Landroid/app/usage/NetworkStats;->getUid()I

    move-result v3

    const/4 v4, -0x1

    const/4 v5, 0x0

    const/4 v6, -0x1

    iget-wide v7, p0, Landroid/app/usage/NetworkStats;->mStartTimeStamp:J

    iget-wide v9, p0, Landroid/app/usage/NetworkStats;->mEndTimeStamp:J

    invoke-interface/range {v1 .. v10}, Landroid/net/INetworkStatsSession;->getHistoryIntervalForUid(Landroid/net/NetworkTemplate;IIIIJJ)Landroid/net/NetworkStatsHistory;

    move-result-object v0

    iput-object v0, p0, Landroid/app/usage/NetworkStats;->mHistory:Landroid/net/NetworkStatsHistory;
    :try_end_21
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_21} :catch_22

    goto :goto_28

    :catch_22
    move-exception v0

    const-string v1, "NetworkStats"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_28
    const/4 v0, 0x0

    iput v0, p0, Landroid/app/usage/NetworkStats;->mEnumerationIndex:I

    :cond_2b
    return-void
.end method

.method private stepUid()V
    .registers 2

    iget-object v0, p0, Landroid/app/usage/NetworkStats;->mUids:[I

    if-eqz v0, :cond_a

    iget v0, p0, Landroid/app/usage/NetworkStats;->mUidOrUidIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/app/usage/NetworkStats;->mUidOrUidIndex:I

    :cond_a
    return-void
.end method


# virtual methods
.method public close()V
    .registers 3

    iget-object v0, p0, Landroid/app/usage/NetworkStats;->mSession:Landroid/net/INetworkStatsSession;

    if-eqz v0, :cond_e

    :try_start_4
    invoke-interface {v0}, Landroid/net/INetworkStatsSession;->close()V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_7} :catch_8

    goto :goto_e

    :catch_8
    move-exception v0

    const-string v1, "NetworkStats"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_e
    :goto_e
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/app/usage/NetworkStats;->mSession:Landroid/net/INetworkStatsSession;

    iget-object v0, p0, Landroid/app/usage/NetworkStats;->mCloseGuard:Ldalvik/system/CloseGuard;

    if-eqz v0, :cond_18

    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->close()V

    :cond_18
    return-void
.end method

.method protected finalize()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Landroid/app/usage/NetworkStats;->mCloseGuard:Ldalvik/system/CloseGuard;

    if-eqz v0, :cond_9

    iget-object v0, p0, Landroid/app/usage/NetworkStats;->mCloseGuard:Ldalvik/system/CloseGuard;

    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->warnIfOpen()V

    :cond_9
    invoke-virtual {p0}, Landroid/app/usage/NetworkStats;->close()V
    :try_end_c
    .catchall {:try_start_0 .. :try_end_c} :catchall_11

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    nop

    return-void

    :catchall_11
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method getDeviceSummaryForNetwork()Landroid/app/usage/NetworkStats$Bucket;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Landroid/app/usage/NetworkStats;->mSession:Landroid/net/INetworkStatsSession;

    iget-object v1, p0, Landroid/app/usage/NetworkStats;->mTemplate:Landroid/net/NetworkTemplate;

    iget-wide v2, p0, Landroid/app/usage/NetworkStats;->mStartTimeStamp:J

    iget-wide v4, p0, Landroid/app/usage/NetworkStats;->mEndTimeStamp:J

    invoke-interface/range {v0 .. v5}, Landroid/net/INetworkStatsSession;->getDeviceSummaryForNetwork(Landroid/net/NetworkTemplate;JJ)Landroid/net/NetworkStats;

    move-result-object v0

    iput-object v0, p0, Landroid/app/usage/NetworkStats;->mSummary:Landroid/net/NetworkStats;

    invoke-virtual {v0}, Landroid/net/NetworkStats;->size()I

    move-result v0

    iput v0, p0, Landroid/app/usage/NetworkStats;->mEnumerationIndex:I

    invoke-virtual {p0}, Landroid/app/usage/NetworkStats;->getSummaryAggregate()Landroid/app/usage/NetworkStats$Bucket;

    move-result-object v0

    return-object v0
.end method

.method public getNextBucket(Landroid/app/usage/NetworkStats$Bucket;)Z
    .registers 3

    iget-object v0, p0, Landroid/app/usage/NetworkStats;->mSummary:Landroid/net/NetworkStats;

    if-eqz v0, :cond_9

    invoke-direct {p0, p1}, Landroid/app/usage/NetworkStats;->getNextSummaryBucket(Landroid/app/usage/NetworkStats$Bucket;)Z

    move-result v0

    return v0

    :cond_9
    invoke-direct {p0, p1}, Landroid/app/usage/NetworkStats;->getNextHistoryBucket(Landroid/app/usage/NetworkStats$Bucket;)Z

    move-result v0

    return v0
.end method

.method getSummaryAggregate()Landroid/app/usage/NetworkStats$Bucket;
    .registers 4

    iget-object v0, p0, Landroid/app/usage/NetworkStats;->mSummary:Landroid/net/NetworkStats;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    return-object v0

    :cond_6
    new-instance v0, Landroid/app/usage/NetworkStats$Bucket;

    invoke-direct {v0}, Landroid/app/usage/NetworkStats$Bucket;-><init>()V

    iget-object v1, p0, Landroid/app/usage/NetworkStats;->mRecycledSummaryEntry:Landroid/net/NetworkStats$Entry;

    if-nez v1, :cond_16

    new-instance v1, Landroid/net/NetworkStats$Entry;

    invoke-direct {v1}, Landroid/net/NetworkStats$Entry;-><init>()V

    iput-object v1, p0, Landroid/app/usage/NetworkStats;->mRecycledSummaryEntry:Landroid/net/NetworkStats$Entry;

    :cond_16
    iget-object v1, p0, Landroid/app/usage/NetworkStats;->mSummary:Landroid/net/NetworkStats;

    iget-object v2, p0, Landroid/app/usage/NetworkStats;->mRecycledSummaryEntry:Landroid/net/NetworkStats$Entry;

    invoke-virtual {v1, v2}, Landroid/net/NetworkStats;->getTotal(Landroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats$Entry;

    invoke-direct {p0, v0}, Landroid/app/usage/NetworkStats;->fillBucketFromSummaryEntry(Landroid/app/usage/NetworkStats$Bucket;)V

    return-object v0
.end method

.method public hasNextBucket()Z
    .registers 5

    iget-object v0, p0, Landroid/app/usage/NetworkStats;->mSummary:Landroid/net/NetworkStats;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_11

    iget v3, p0, Landroid/app/usage/NetworkStats;->mEnumerationIndex:I

    invoke-virtual {v0}, Landroid/net/NetworkStats;->size()I

    move-result v0

    if-ge v3, v0, :cond_f

    goto :goto_10

    :cond_f
    move v1, v2

    :goto_10
    return v1

    :cond_11
    iget-object v0, p0, Landroid/app/usage/NetworkStats;->mHistory:Landroid/net/NetworkStatsHistory;

    if-eqz v0, :cond_28

    iget v3, p0, Landroid/app/usage/NetworkStats;->mEnumerationIndex:I

    invoke-virtual {v0}, Landroid/net/NetworkStatsHistory;->size()I

    move-result v0

    if-lt v3, v0, :cond_26

    invoke-direct {p0}, Landroid/app/usage/NetworkStats;->hasNextUid()Z

    move-result v0

    if-eqz v0, :cond_24

    goto :goto_26

    :cond_24
    move v1, v2

    goto :goto_27

    :cond_26
    :goto_26
    nop

    :goto_27
    return v1

    :cond_28
    return v2
.end method

.method startHistoryEnumeration(III)V
    .registers 15

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/app/usage/NetworkStats;->mHistory:Landroid/net/NetworkStatsHistory;

    :try_start_3
    iget-object v1, p0, Landroid/app/usage/NetworkStats;->mSession:Landroid/net/INetworkStatsSession;

    iget-object v2, p0, Landroid/app/usage/NetworkStats;->mTemplate:Landroid/net/NetworkTemplate;

    # invokes: Landroid/app/usage/NetworkStats$Bucket;->convertSet(I)I
    invoke-static {p3}, Landroid/app/usage/NetworkStats$Bucket;->access$000(I)I

    move-result v4

    const/4 v6, -0x1

    iget-wide v7, p0, Landroid/app/usage/NetworkStats;->mStartTimeStamp:J

    iget-wide v9, p0, Landroid/app/usage/NetworkStats;->mEndTimeStamp:J

    move v3, p1

    move v5, p2

    invoke-interface/range {v1 .. v10}, Landroid/net/INetworkStatsSession;->getHistoryIntervalForUid(Landroid/net/NetworkTemplate;IIIIJJ)Landroid/net/NetworkStatsHistory;

    move-result-object v0

    iput-object v0, p0, Landroid/app/usage/NetworkStats;->mHistory:Landroid/net/NetworkStatsHistory;

    invoke-direct {p0, p1, p2, p3}, Landroid/app/usage/NetworkStats;->setSingleUidTagState(III)V
    :try_end_1b
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_1b} :catch_1c

    goto :goto_22

    :catch_1c
    move-exception v0

    const-string v1, "NetworkStats"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_22
    const/4 v0, 0x0

    iput v0, p0, Landroid/app/usage/NetworkStats;->mEnumerationIndex:I

    return-void
.end method

.method startSummaryEnumeration()V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Landroid/app/usage/NetworkStats;->mSession:Landroid/net/INetworkStatsSession;

    iget-object v1, p0, Landroid/app/usage/NetworkStats;->mTemplate:Landroid/net/NetworkTemplate;

    iget-wide v2, p0, Landroid/app/usage/NetworkStats;->mStartTimeStamp:J

    iget-wide v4, p0, Landroid/app/usage/NetworkStats;->mEndTimeStamp:J

    const/4 v6, 0x0

    invoke-interface/range {v0 .. v6}, Landroid/net/INetworkStatsSession;->getSummaryForAllUid(Landroid/net/NetworkTemplate;JJZ)Landroid/net/NetworkStats;

    move-result-object v0

    iput-object v0, p0, Landroid/app/usage/NetworkStats;->mSummary:Landroid/net/NetworkStats;

    const/4 v0, 0x0

    iput v0, p0, Landroid/app/usage/NetworkStats;->mEnumerationIndex:I

    return-void
.end method

.method startUserUidEnumeration()V
    .registers 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Landroid/app/usage/NetworkStats;->mSession:Landroid/net/INetworkStatsSession;

    invoke-interface {v0}, Landroid/net/INetworkStatsSession;->getRelevantUids()[I

    move-result-object v0

    new-instance v1, Landroid/util/IntArray;

    array-length v2, v0

    invoke-direct {v1, v2}, Landroid/util/IntArray;-><init>(I)V

    array-length v2, v0

    const/4 v3, 0x0

    :goto_e
    if-ge v3, v2, :cond_48

    aget v14, v0, v3

    :try_start_12
    iget-object v4, p0, Landroid/app/usage/NetworkStats;->mSession:Landroid/net/INetworkStatsSession;

    iget-object v5, p0, Landroid/app/usage/NetworkStats;->mTemplate:Landroid/net/NetworkTemplate;

    const/4 v7, -0x1

    const/4 v8, 0x0

    const/4 v9, -0x1

    iget-wide v10, p0, Landroid/app/usage/NetworkStats;->mStartTimeStamp:J

    iget-wide v12, p0, Landroid/app/usage/NetworkStats;->mEndTimeStamp:J

    move v6, v14

    invoke-interface/range {v4 .. v13}, Landroid/net/INetworkStatsSession;->getHistoryIntervalForUid(Landroid/net/NetworkTemplate;IIIIJJ)Landroid/net/NetworkStatsHistory;

    move-result-object v4

    if-eqz v4, :cond_2d

    invoke-virtual {v4}, Landroid/net/NetworkStatsHistory;->size()I

    move-result v5

    if-lez v5, :cond_2d

    invoke-virtual {v1, v14}, Landroid/util/IntArray;->add(I)V
    :try_end_2d
    .catch Landroid/os/RemoteException; {:try_start_12 .. :try_end_2d} :catch_2e

    :cond_2d
    goto :goto_45

    :catch_2e
    move-exception v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error while getting history of uid "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "NetworkStats"

    invoke-static {v6, v5, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_45
    add-int/lit8 v3, v3, 0x1

    goto :goto_e

    :cond_48
    invoke-virtual {v1}, Landroid/util/IntArray;->toArray()[I

    move-result-object v2

    iput-object v2, p0, Landroid/app/usage/NetworkStats;->mUids:[I

    const/4 v2, -0x1

    iput v2, p0, Landroid/app/usage/NetworkStats;->mUidOrUidIndex:I

    invoke-direct {p0}, Landroid/app/usage/NetworkStats;->stepHistory()V

    return-void
.end method
