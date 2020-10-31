.class public Landroid/app/usage/NetworkStats$Bucket;
.super Ljava/lang/Object;
.source "NetworkStats.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/usage/NetworkStats;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Bucket"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/usage/NetworkStats$Bucket$DefaultNetworkStatus;,
        Landroid/app/usage/NetworkStats$Bucket$Roaming;,
        Landroid/app/usage/NetworkStats$Bucket$Metered;,
        Landroid/app/usage/NetworkStats$Bucket$State;
    }
.end annotation


# static fields
.field public static final DEFAULT_NETWORK_ALL:I = -0x1

.field public static final DEFAULT_NETWORK_NO:I = 0x1

.field public static final DEFAULT_NETWORK_YES:I = 0x2

.field public static final METERED_ALL:I = -0x1

.field public static final METERED_NO:I = 0x1

.field public static final METERED_YES:I = 0x2

.field public static final ROAMING_ALL:I = -0x1

.field public static final ROAMING_NO:I = 0x1

.field public static final ROAMING_YES:I = 0x2

.field public static final STATE_ALL:I = -0x1

.field public static final STATE_DEFAULT:I = 0x1

.field public static final STATE_FOREGROUND:I = 0x2

.field public static final TAG_NONE:I = 0x0

.field public static final UID_ALL:I = -0x1

.field public static final UID_REMOVED:I = -0x4

.field public static final UID_TETHERING:I = -0x5


# instance fields
.field private mBeginTimeStamp:J

.field private mDefaultNetworkStatus:I

.field private mEndTimeStamp:J

.field private mMetered:I

.field private mRoaming:I

.field private mRxBytes:J

.field private mRxPackets:J

.field private mState:I

.field private mTag:I

.field private mTxBytes:J

.field private mTxPackets:J

.field private mUid:I


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(I)I
    .registers 2

    invoke-static {p0}, Landroid/app/usage/NetworkStats$Bucket;->convertSet(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$1000(I)I
    .registers 2

    invoke-static {p0}, Landroid/app/usage/NetworkStats$Bucket;->convertMetered(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$102(Landroid/app/usage/NetworkStats$Bucket;I)I
    .registers 2

    iput p1, p0, Landroid/app/usage/NetworkStats$Bucket;->mUid:I

    return p1
.end method

.method static synthetic access$1102(Landroid/app/usage/NetworkStats$Bucket;I)I
    .registers 2

    iput p1, p0, Landroid/app/usage/NetworkStats$Bucket;->mRoaming:I

    return p1
.end method

.method static synthetic access$1200(I)I
    .registers 2

    invoke-static {p0}, Landroid/app/usage/NetworkStats$Bucket;->convertRoaming(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$1302(Landroid/app/usage/NetworkStats$Bucket;J)J
    .registers 3

    iput-wide p1, p0, Landroid/app/usage/NetworkStats$Bucket;->mBeginTimeStamp:J

    return-wide p1
.end method

.method static synthetic access$1402(Landroid/app/usage/NetworkStats$Bucket;J)J
    .registers 3

    iput-wide p1, p0, Landroid/app/usage/NetworkStats$Bucket;->mEndTimeStamp:J

    return-wide p1
.end method

.method static synthetic access$1502(Landroid/app/usage/NetworkStats$Bucket;J)J
    .registers 3

    iput-wide p1, p0, Landroid/app/usage/NetworkStats$Bucket;->mRxBytes:J

    return-wide p1
.end method

.method static synthetic access$1602(Landroid/app/usage/NetworkStats$Bucket;J)J
    .registers 3

    iput-wide p1, p0, Landroid/app/usage/NetworkStats$Bucket;->mRxPackets:J

    return-wide p1
.end method

.method static synthetic access$1702(Landroid/app/usage/NetworkStats$Bucket;J)J
    .registers 3

    iput-wide p1, p0, Landroid/app/usage/NetworkStats$Bucket;->mTxBytes:J

    return-wide p1
.end method

.method static synthetic access$1802(Landroid/app/usage/NetworkStats$Bucket;J)J
    .registers 3

    iput-wide p1, p0, Landroid/app/usage/NetworkStats$Bucket;->mTxPackets:J

    return-wide p1
.end method

.method static synthetic access$200(I)I
    .registers 2

    invoke-static {p0}, Landroid/app/usage/NetworkStats$Bucket;->convertUid(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$302(Landroid/app/usage/NetworkStats$Bucket;I)I
    .registers 2

    iput p1, p0, Landroid/app/usage/NetworkStats$Bucket;->mTag:I

    return p1
.end method

.method static synthetic access$400(I)I
    .registers 2

    invoke-static {p0}, Landroid/app/usage/NetworkStats$Bucket;->convertTag(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$502(Landroid/app/usage/NetworkStats$Bucket;I)I
    .registers 2

    iput p1, p0, Landroid/app/usage/NetworkStats$Bucket;->mState:I

    return p1
.end method

.method static synthetic access$600(I)I
    .registers 2

    invoke-static {p0}, Landroid/app/usage/NetworkStats$Bucket;->convertState(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$702(Landroid/app/usage/NetworkStats$Bucket;I)I
    .registers 2

    iput p1, p0, Landroid/app/usage/NetworkStats$Bucket;->mDefaultNetworkStatus:I

    return p1
.end method

.method static synthetic access$800(I)I
    .registers 2

    invoke-static {p0}, Landroid/app/usage/NetworkStats$Bucket;->convertDefaultNetworkStatus(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$902(Landroid/app/usage/NetworkStats$Bucket;I)I
    .registers 2

    iput p1, p0, Landroid/app/usage/NetworkStats$Bucket;->mMetered:I

    return p1
.end method

.method private static convertDefaultNetworkStatus(I)I
    .registers 2

    const/4 v0, -0x1

    if-eq p0, v0, :cond_d

    const/4 v0, 0x1

    if-eqz p0, :cond_c

    if-eq p0, v0, :cond_a

    const/4 v0, 0x0

    return v0

    :cond_a
    const/4 v0, 0x2

    return v0

    :cond_c
    return v0

    :cond_d
    return v0
.end method

.method private static convertMetered(I)I
    .registers 2

    const/4 v0, -0x1

    if-eq p0, v0, :cond_d

    const/4 v0, 0x1

    if-eqz p0, :cond_c

    if-eq p0, v0, :cond_a

    const/4 v0, 0x0

    return v0

    :cond_a
    const/4 v0, 0x2

    return v0

    :cond_c
    return v0

    :cond_d
    return v0
.end method

.method private static convertRoaming(I)I
    .registers 2

    const/4 v0, -0x1

    if-eq p0, v0, :cond_d

    const/4 v0, 0x1

    if-eqz p0, :cond_c

    if-eq p0, v0, :cond_a

    const/4 v0, 0x0

    return v0

    :cond_a
    const/4 v0, 0x2

    return v0

    :cond_c
    return v0

    :cond_d
    return v0
.end method

.method private static convertSet(I)I
    .registers 2

    const/4 v0, -0x1

    if-eq p0, v0, :cond_a

    const/4 v0, 0x2

    if-eq p0, v0, :cond_8

    const/4 v0, 0x0

    return v0

    :cond_8
    const/4 v0, 0x1

    return v0

    :cond_a
    return v0
.end method

.method private static convertState(I)I
    .registers 2

    const/4 v0, -0x1

    if-eq p0, v0, :cond_d

    const/4 v0, 0x1

    if-eqz p0, :cond_c

    if-eq p0, v0, :cond_a

    const/4 v0, 0x0

    return v0

    :cond_a
    const/4 v0, 0x2

    return v0

    :cond_c
    return v0

    :cond_d
    return v0
.end method

.method private static convertTag(I)I
    .registers 2

    if-eqz p0, :cond_3

    return p0

    :cond_3
    const/4 v0, 0x0

    return v0
.end method

.method private static convertUid(I)I
    .registers 2

    const/4 v0, -0x5

    if-eq p0, v0, :cond_8

    const/4 v0, -0x4

    if-eq p0, v0, :cond_7

    return p0

    :cond_7
    return v0

    :cond_8
    return v0
.end method


# virtual methods
.method public getDefaultNetworkStatus()I
    .registers 2

    iget v0, p0, Landroid/app/usage/NetworkStats$Bucket;->mDefaultNetworkStatus:I

    return v0
.end method

.method public getEndTimeStamp()J
    .registers 3

    iget-wide v0, p0, Landroid/app/usage/NetworkStats$Bucket;->mEndTimeStamp:J

    return-wide v0
.end method

.method public getMetered()I
    .registers 2

    iget v0, p0, Landroid/app/usage/NetworkStats$Bucket;->mMetered:I

    return v0
.end method

.method public getRoaming()I
    .registers 2

    iget v0, p0, Landroid/app/usage/NetworkStats$Bucket;->mRoaming:I

    return v0
.end method

.method public getRxBytes()J
    .registers 3

    iget-wide v0, p0, Landroid/app/usage/NetworkStats$Bucket;->mRxBytes:J

    return-wide v0
.end method

.method public getRxPackets()J
    .registers 3

    iget-wide v0, p0, Landroid/app/usage/NetworkStats$Bucket;->mRxPackets:J

    return-wide v0
.end method

.method public getStartTimeStamp()J
    .registers 3

    iget-wide v0, p0, Landroid/app/usage/NetworkStats$Bucket;->mBeginTimeStamp:J

    return-wide v0
.end method

.method public getState()I
    .registers 2

    iget v0, p0, Landroid/app/usage/NetworkStats$Bucket;->mState:I

    return v0
.end method

.method public getTag()I
    .registers 2

    iget v0, p0, Landroid/app/usage/NetworkStats$Bucket;->mTag:I

    return v0
.end method

.method public getTxBytes()J
    .registers 3

    iget-wide v0, p0, Landroid/app/usage/NetworkStats$Bucket;->mTxBytes:J

    return-wide v0
.end method

.method public getTxPackets()J
    .registers 3

    iget-wide v0, p0, Landroid/app/usage/NetworkStats$Bucket;->mTxPackets:J

    return-wide v0
.end method

.method public getUid()I
    .registers 2

    iget v0, p0, Landroid/app/usage/NetworkStats$Bucket;->mUid:I

    return v0
.end method
