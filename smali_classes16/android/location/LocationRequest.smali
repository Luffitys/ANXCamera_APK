.class public final Landroid/location/LocationRequest;
.super Ljava/lang/Object;
.source "LocationRequest.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation


# static fields
.field public static final ACCURACY_BLOCK:I = 0x66

.field public static final ACCURACY_CITY:I = 0x68

.field public static final ACCURACY_FINE:I = 0x64

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/location/LocationRequest;",
            ">;"
        }
    .end annotation
.end field

.field private static final DEFAULT_INTERVAL_MS:J = 0x36ee80L

.field private static final FASTEST_INTERVAL_FACTOR:D = 6.0

.field public static final POWER_HIGH:I = 0xcb

.field public static final POWER_LOW:I = 0xc9

.field public static final POWER_NONE:I = 0xc8


# instance fields
.field private mExpireAt:J

.field private mExpireIn:J

.field private mExplicitFastestInterval:Z

.field private mFastestInterval:J

.field private mHideFromAppOps:Z

.field private mInterval:J

.field private mLocationSettingsIgnored:Z

.field private mLowPowerMode:Z

.field private mNumUpdates:I

.field private mProvider:Ljava/lang/String;

.field private mQuality:I

.field private mSmallestDisplacement:F

.field private mWorkSource:Landroid/os/WorkSource;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/location/LocationRequest$1;

    invoke-direct {v0}, Landroid/location/LocationRequest$1;-><init>()V

    sput-object v0, Landroid/location/LocationRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 19

    move-object/from16 v0, p0

    const-string v1, "fused"

    const/16 v2, 0xc9

    const-wide/32 v3, 0x36ee80

    const-wide/32 v5, 0x927c0

    const/4 v7, 0x0

    const-wide v8, 0x7fffffffffffffffL

    const-wide v10, 0x7fffffffffffffffL

    const v12, 0x7fffffff

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    invoke-direct/range {v0 .. v17}, Landroid/location/LocationRequest;-><init>(Ljava/lang/String;IJJZJJIFZZZLandroid/os/WorkSource;)V

    return-void
.end method

.method public constructor <init>(Landroid/location/LocationRequest;)V
    .registers 22

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iget-object v2, v0, Landroid/location/LocationRequest;->mProvider:Ljava/lang/String;

    iget v3, v0, Landroid/location/LocationRequest;->mQuality:I

    iget-wide v4, v0, Landroid/location/LocationRequest;->mInterval:J

    iget-wide v6, v0, Landroid/location/LocationRequest;->mFastestInterval:J

    iget-boolean v8, v0, Landroid/location/LocationRequest;->mExplicitFastestInterval:Z

    iget-wide v9, v0, Landroid/location/LocationRequest;->mExpireAt:J

    iget-wide v11, v0, Landroid/location/LocationRequest;->mExpireIn:J

    iget v13, v0, Landroid/location/LocationRequest;->mNumUpdates:I

    iget v14, v0, Landroid/location/LocationRequest;->mSmallestDisplacement:F

    iget-boolean v15, v0, Landroid/location/LocationRequest;->mHideFromAppOps:Z

    move-object/from16 v19, v1

    iget-boolean v1, v0, Landroid/location/LocationRequest;->mLocationSettingsIgnored:Z

    move/from16 v16, v1

    iget-boolean v1, v0, Landroid/location/LocationRequest;->mLowPowerMode:Z

    move/from16 v17, v1

    iget-object v1, v0, Landroid/location/LocationRequest;->mWorkSource:Landroid/os/WorkSource;

    move-object/from16 v18, v1

    move-object/from16 v1, v19

    invoke-direct/range {v1 .. v18}, Landroid/location/LocationRequest;-><init>(Ljava/lang/String;IJJZJJIFZZZLandroid/os/WorkSource;)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IJJZJJIFZZZLandroid/os/WorkSource;)V
    .registers 34

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    if-eqz v1, :cond_b

    const/4 v2, 0x1

    goto :goto_c

    :cond_b
    const/4 v2, 0x0

    :goto_c
    const-string v3, "invalid provider: null"

    invoke-static {v2, v3}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    invoke-static/range {p2 .. p2}, Landroid/location/LocationRequest;->checkQuality(I)V

    iput-object v1, v0, Landroid/location/LocationRequest;->mProvider:Ljava/lang/String;

    move/from16 v2, p2

    iput v2, v0, Landroid/location/LocationRequest;->mQuality:I

    move-wide/from16 v3, p3

    iput-wide v3, v0, Landroid/location/LocationRequest;->mInterval:J

    move-wide/from16 v5, p5

    iput-wide v5, v0, Landroid/location/LocationRequest;->mFastestInterval:J

    move/from16 v7, p7

    iput-boolean v7, v0, Landroid/location/LocationRequest;->mExplicitFastestInterval:Z

    move-wide/from16 v8, p8

    iput-wide v8, v0, Landroid/location/LocationRequest;->mExpireAt:J

    move-wide/from16 v10, p10

    iput-wide v10, v0, Landroid/location/LocationRequest;->mExpireIn:J

    move/from16 v12, p12

    iput v12, v0, Landroid/location/LocationRequest;->mNumUpdates:I

    const/4 v13, 0x0

    const v14, 0x7f7fffff    # Float.MAX_VALUE

    const-string/jumbo v15, "smallestDisplacementM"

    move/from16 v1, p13

    invoke-static {v1, v13, v14, v15}, Lcom/android/internal/util/Preconditions;->checkArgumentInRange(FFFLjava/lang/String;)F

    move-result v13

    iput v13, v0, Landroid/location/LocationRequest;->mSmallestDisplacement:F

    move/from16 v13, p14

    iput-boolean v13, v0, Landroid/location/LocationRequest;->mHideFromAppOps:Z

    move/from16 v14, p16

    iput-boolean v14, v0, Landroid/location/LocationRequest;->mLowPowerMode:Z

    move/from16 v15, p15

    iput-boolean v15, v0, Landroid/location/LocationRequest;->mLocationSettingsIgnored:Z

    move-object/from16 v1, p17

    iput-object v1, v0, Landroid/location/LocationRequest;->mWorkSource:Landroid/os/WorkSource;

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;IJJZJJIFZZZLandroid/os/WorkSource;Landroid/location/LocationRequest$1;)V
    .registers 19

    invoke-direct/range {p0 .. p17}, Landroid/location/LocationRequest;-><init>(Ljava/lang/String;IJJZJJIFZZZLandroid/os/WorkSource;)V

    return-void
.end method

.method private static checkQuality(I)V
    .registers 4

    const/16 v0, 0x64

    if-eq p0, v0, :cond_30

    const/16 v0, 0x66

    if-eq p0, v0, :cond_30

    const/16 v0, 0x68

    if-eq p0, v0, :cond_30

    const/16 v0, 0xcb

    if-eq p0, v0, :cond_30

    const/16 v0, 0xc8

    if-eq p0, v0, :cond_30

    const/16 v0, 0xc9

    if-ne p0, v0, :cond_19

    goto :goto_30

    :cond_19
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid quality: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_30
    :goto_30
    nop

    return-void
.end method

.method public static create()Landroid/location/LocationRequest;
    .registers 1

    new-instance v0, Landroid/location/LocationRequest;

    invoke-direct {v0}, Landroid/location/LocationRequest;-><init>()V

    return-object v0
.end method

.method public static createFromDeprecatedCriteria(Landroid/location/Criteria;JFZ)Landroid/location/LocationRequest;
    .registers 8
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    const/4 v0, 0x1

    if-eqz p0, :cond_5

    move v1, v0

    goto :goto_6

    :cond_5
    const/4 v1, 0x0

    :goto_6
    const-string v2, "invalid null criteria"

    invoke-static {v1, v2}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    const-wide/16 v1, 0x0

    cmp-long v1, p1, v1

    if-gez v1, :cond_13

    const-wide/16 p1, 0x0

    :cond_13
    const/4 v1, 0x0

    cmpg-float v1, p3, v1

    if-gez v1, :cond_19

    const/4 p3, 0x0

    :cond_19
    invoke-virtual {p0}, Landroid/location/Criteria;->getAccuracy()I

    move-result v1

    if-eq v1, v0, :cond_32

    const/4 v2, 0x2

    if-eq v1, v2, :cond_2f

    invoke-virtual {p0}, Landroid/location/Criteria;->getPowerRequirement()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_2c

    const/16 v1, 0xcb

    goto :goto_35

    :cond_2c
    const/16 v1, 0xc9

    goto :goto_35

    :cond_2f
    const/16 v1, 0x66

    goto :goto_35

    :cond_32
    const/16 v1, 0x64

    nop

    :goto_35
    new-instance v2, Landroid/location/LocationRequest;

    invoke-direct {v2}, Landroid/location/LocationRequest;-><init>()V

    invoke-virtual {v2, v1}, Landroid/location/LocationRequest;->setQuality(I)Landroid/location/LocationRequest;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Landroid/location/LocationRequest;->setInterval(J)Landroid/location/LocationRequest;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Landroid/location/LocationRequest;->setFastestInterval(J)Landroid/location/LocationRequest;

    move-result-object v2

    invoke-virtual {v2, p3}, Landroid/location/LocationRequest;->setSmallestDisplacement(F)Landroid/location/LocationRequest;

    move-result-object v2

    if-eqz p4, :cond_4f

    invoke-virtual {v2, v0}, Landroid/location/LocationRequest;->setNumUpdates(I)Landroid/location/LocationRequest;

    :cond_4f
    return-object v2
.end method

.method public static createFromDeprecatedProvider(Ljava/lang/String;JFZ)Landroid/location/LocationRequest;
    .registers 8
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    const/4 v0, 0x1

    if-eqz p0, :cond_5

    move v1, v0

    goto :goto_6

    :cond_5
    const/4 v1, 0x0

    :goto_6
    const-string v2, "invalid null provider"

    invoke-static {v1, v2}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    const-wide/16 v1, 0x0

    cmp-long v1, p1, v1

    if-gez v1, :cond_13

    const-wide/16 p1, 0x0

    :cond_13
    const/4 v1, 0x0

    cmpg-float v1, p3, v1

    if-gez v1, :cond_19

    const/4 p3, 0x0

    :cond_19
    const-string/jumbo v1, "passive"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_25

    const/16 v1, 0xc8

    goto :goto_32

    :cond_25
    const-string v1, "gps"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_30

    const/16 v1, 0x64

    goto :goto_32

    :cond_30
    const/16 v1, 0xc9

    :goto_32
    new-instance v2, Landroid/location/LocationRequest;

    invoke-direct {v2}, Landroid/location/LocationRequest;-><init>()V

    invoke-virtual {v2, p0}, Landroid/location/LocationRequest;->setProvider(Ljava/lang/String;)Landroid/location/LocationRequest;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/location/LocationRequest;->setQuality(I)Landroid/location/LocationRequest;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Landroid/location/LocationRequest;->setInterval(J)Landroid/location/LocationRequest;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Landroid/location/LocationRequest;->setFastestInterval(J)Landroid/location/LocationRequest;

    move-result-object v2

    invoke-virtual {v2, p3}, Landroid/location/LocationRequest;->setSmallestDisplacement(F)Landroid/location/LocationRequest;

    move-result-object v2

    if-eqz p4, :cond_50

    invoke-virtual {v2, v0}, Landroid/location/LocationRequest;->setNumUpdates(I)Landroid/location/LocationRequest;

    :cond_50
    return-object v2
.end method

.method public static qualityToString(I)Ljava/lang/String;
    .registers 2

    const/16 v0, 0x64

    if-eq p0, v0, :cond_2a

    const/16 v0, 0x66

    if-eq p0, v0, :cond_27

    const/16 v0, 0x68

    if-eq p0, v0, :cond_24

    const/16 v0, 0xcb

    if-eq p0, v0, :cond_21

    const/16 v0, 0xc8

    if-eq p0, v0, :cond_1e

    const/16 v0, 0xc9

    if-eq p0, v0, :cond_1b

    const-string v0, "???"

    return-object v0

    :cond_1b
    const-string v0, "POWER_LOW"

    return-object v0

    :cond_1e
    const-string v0, "POWER_NONE"

    return-object v0

    :cond_21
    const-string v0, "POWER_HIGH"

    return-object v0

    :cond_24
    const-string v0, "ACCURACY_CITY"

    return-object v0

    :cond_27
    const-string v0, "ACCURACY_BLOCK"

    return-object v0

    :cond_2a
    const-string v0, "ACCURACY_FINE"

    return-object v0
.end method


# virtual methods
.method public decrementNumUpdates()V
    .registers 3

    iget v0, p0, Landroid/location/LocationRequest;->mNumUpdates:I

    const v1, 0x7fffffff

    if-eq v0, v1, :cond_b

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroid/location/LocationRequest;->mNumUpdates:I

    :cond_b
    iget v0, p0, Landroid/location/LocationRequest;->mNumUpdates:I

    if-gez v0, :cond_12

    const/4 v0, 0x0

    iput v0, p0, Landroid/location/LocationRequest;->mNumUpdates:I

    :cond_12
    return-void
.end method

.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public getExpirationRealtimeMs(J)J
    .registers 7

    iget-wide v0, p0, Landroid/location/LocationRequest;->mExpireIn:J

    const-wide v2, 0x7fffffffffffffffL

    sub-long/2addr v2, p1

    cmp-long v2, v0, v2

    if-lez v2, :cond_12

    const-wide v0, 0x7fffffffffffffffL

    goto :goto_13

    :cond_12
    add-long/2addr v0, p1

    :goto_13
    iget-wide v2, p0, Landroid/location/LocationRequest;->mExpireAt:J

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    return-wide v2
.end method

.method public getExpireAt()J
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-wide v0, p0, Landroid/location/LocationRequest;->mExpireAt:J

    return-wide v0
.end method

.method public getExpireIn()J
    .registers 3

    iget-wide v0, p0, Landroid/location/LocationRequest;->mExpireIn:J

    return-wide v0
.end method

.method public getFastestInterval()J
    .registers 3

    iget-wide v0, p0, Landroid/location/LocationRequest;->mFastestInterval:J

    return-wide v0
.end method

.method public getHideFromAppOps()Z
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    iget-boolean v0, p0, Landroid/location/LocationRequest;->mHideFromAppOps:Z

    return v0
.end method

.method public getInterval()J
    .registers 3

    iget-wide v0, p0, Landroid/location/LocationRequest;->mInterval:J

    return-wide v0
.end method

.method public getNumUpdates()I
    .registers 2

    iget v0, p0, Landroid/location/LocationRequest;->mNumUpdates:I

    return v0
.end method

.method public getProvider()Ljava/lang/String;
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    iget-object v0, p0, Landroid/location/LocationRequest;->mProvider:Ljava/lang/String;

    return-object v0
.end method

.method public getQuality()I
    .registers 2

    iget v0, p0, Landroid/location/LocationRequest;->mQuality:I

    return v0
.end method

.method public getSmallestDisplacement()F
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    iget v0, p0, Landroid/location/LocationRequest;->mSmallestDisplacement:F

    return v0
.end method

.method public getWorkSource()Landroid/os/WorkSource;
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    iget-object v0, p0, Landroid/location/LocationRequest;->mWorkSource:Landroid/os/WorkSource;

    return-object v0
.end method

.method public isLocationSettingsIgnored()Z
    .registers 2

    iget-boolean v0, p0, Landroid/location/LocationRequest;->mLocationSettingsIgnored:Z

    return v0
.end method

.method public isLowPowerMode()Z
    .registers 2

    iget-boolean v0, p0, Landroid/location/LocationRequest;->mLowPowerMode:Z

    return v0
.end method

.method public setExpireAt(J)Landroid/location/LocationRequest;
    .registers 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-wide/16 v0, 0x0

    invoke-static {p1, p2, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/location/LocationRequest;->mExpireAt:J

    return-object p0
.end method

.method public setExpireIn(J)Landroid/location/LocationRequest;
    .registers 3

    iput-wide p1, p0, Landroid/location/LocationRequest;->mExpireIn:J

    return-object p0
.end method

.method public setFastestInterval(J)Landroid/location/LocationRequest;
    .registers 6

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    const/4 v1, 0x1

    if-ltz v0, :cond_9

    move v0, v1

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    const-string v2, "invalid interval: + millis"

    invoke-static {v0, v2}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    iput-boolean v1, p0, Landroid/location/LocationRequest;->mExplicitFastestInterval:Z

    iput-wide p1, p0, Landroid/location/LocationRequest;->mFastestInterval:J

    return-object p0
.end method

.method public setHideFromAppOps(Z)V
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    iput-boolean p1, p0, Landroid/location/LocationRequest;->mHideFromAppOps:Z

    return-void
.end method

.method public setInterval(J)Landroid/location/LocationRequest;
    .registers 7

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    const-string v1, "invalid interval: + millis"

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    iput-wide p1, p0, Landroid/location/LocationRequest;->mInterval:J

    iget-boolean v0, p0, Landroid/location/LocationRequest;->mExplicitFastestInterval:Z

    if-nez v0, :cond_1b

    long-to-double v0, p1

    const-wide/high16 v2, 0x4018000000000000L    # 6.0

    div-double/2addr v0, v2

    double-to-long v0, v0

    iput-wide v0, p0, Landroid/location/LocationRequest;->mFastestInterval:J

    :cond_1b
    return-object p0
.end method

.method public setLocationSettingsIgnored(Z)Landroid/location/LocationRequest;
    .registers 2

    iput-boolean p1, p0, Landroid/location/LocationRequest;->mLocationSettingsIgnored:Z

    return-object p0
.end method

.method public setLowPowerMode(Z)Landroid/location/LocationRequest;
    .registers 2

    iput-boolean p1, p0, Landroid/location/LocationRequest;->mLowPowerMode:Z

    return-object p0
.end method

.method public setNumUpdates(I)Landroid/location/LocationRequest;
    .registers 5

    if-lez p1, :cond_5

    iput p1, p0, Landroid/location/LocationRequest;->mNumUpdates:I

    return-object p0

    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid numUpdates: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setProvider(Ljava/lang/String;)Landroid/location/LocationRequest;
    .registers 4

    if-eqz p1, :cond_4

    const/4 v0, 0x1

    goto :goto_5

    :cond_4
    const/4 v0, 0x0

    :goto_5
    const-string v1, "invalid provider: null"

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    iput-object p1, p0, Landroid/location/LocationRequest;->mProvider:Ljava/lang/String;

    return-object p0
.end method

.method public setQuality(I)Landroid/location/LocationRequest;
    .registers 2

    invoke-static {p1}, Landroid/location/LocationRequest;->checkQuality(I)V

    iput p1, p0, Landroid/location/LocationRequest;->mQuality:I

    return-object p0
.end method

.method public setSmallestDisplacement(F)Landroid/location/LocationRequest;
    .registers 5
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    const/4 v0, 0x0

    const v1, 0x7f7fffff    # Float.MAX_VALUE

    const-string/jumbo v2, "smallestDisplacementM"

    invoke-static {p1, v0, v1, v2}, Lcom/android/internal/util/Preconditions;->checkArgumentInRange(FFFLjava/lang/String;)F

    move-result v0

    iput v0, p0, Landroid/location/LocationRequest;->mSmallestDisplacement:F

    return-object p0
.end method

.method public setWorkSource(Landroid/os/WorkSource;)V
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    iput-object p1, p0, Landroid/location/LocationRequest;->mWorkSource:Landroid/os/WorkSource;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Request["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/location/LocationRequest;->mQuality:I

    invoke-static {v1}, Landroid/location/LocationRequest;->qualityToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/location/LocationRequest;->mProvider:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/location/LocationRequest;->mQuality:I

    const/16 v2, 0xc8

    if-eq v1, v2, :cond_3b

    const-string v1, " interval="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Landroid/location/LocationRequest;->mInterval:J

    invoke-static {v1, v2, v0}, Landroid/util/TimeUtils;->formatDuration(JLjava/lang/StringBuilder;)V

    iget-boolean v1, p0, Landroid/location/LocationRequest;->mExplicitFastestInterval:Z

    if-eqz v1, :cond_3b

    const-string v1, " fastestInterval="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Landroid/location/LocationRequest;->mFastestInterval:J

    invoke-static {v1, v2, v0}, Landroid/util/TimeUtils;->formatDuration(JLjava/lang/StringBuilder;)V

    :cond_3b
    iget-wide v1, p0, Landroid/location/LocationRequest;->mExpireAt:J

    const-wide v3, 0x7fffffffffffffffL

    cmp-long v1, v1, v3

    if-eqz v1, :cond_54

    const-string v1, " expireAt="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Landroid/location/LocationRequest;->mExpireAt:J

    invoke-static {v1, v2}, Landroid/util/TimeUtils;->formatRealtime(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_54
    iget-wide v1, p0, Landroid/location/LocationRequest;->mExpireIn:J

    cmp-long v1, v1, v3

    if-eqz v1, :cond_64

    const-string v1, " expireIn="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Landroid/location/LocationRequest;->mExpireIn:J

    invoke-static {v1, v2, v0}, Landroid/util/TimeUtils;->formatDuration(JLjava/lang/StringBuilder;)V

    :cond_64
    iget v1, p0, Landroid/location/LocationRequest;->mNumUpdates:I

    const v2, 0x7fffffff

    if-eq v1, v2, :cond_75

    const-string v1, " num="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/location/LocationRequest;->mNumUpdates:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :cond_75
    iget-boolean v1, p0, Landroid/location/LocationRequest;->mLowPowerMode:Z

    if-eqz v1, :cond_7e

    const-string v1, " lowPowerMode"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_7e
    iget-boolean v1, p0, Landroid/location/LocationRequest;->mLocationSettingsIgnored:Z

    if-eqz v1, :cond_87

    const-string v1, " locationSettingsIgnored"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_87
    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 5

    iget-object v0, p0, Landroid/location/LocationRequest;->mProvider:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v0, p0, Landroid/location/LocationRequest;->mQuality:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-wide v0, p0, Landroid/location/LocationRequest;->mInterval:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Landroid/location/LocationRequest;->mFastestInterval:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-boolean v0, p0, Landroid/location/LocationRequest;->mExplicitFastestInterval:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    iget-wide v0, p0, Landroid/location/LocationRequest;->mExpireAt:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Landroid/location/LocationRequest;->mExpireIn:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget v0, p0, Landroid/location/LocationRequest;->mNumUpdates:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/location/LocationRequest;->mSmallestDisplacement:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    iget-boolean v0, p0, Landroid/location/LocationRequest;->mHideFromAppOps:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    iget-boolean v0, p0, Landroid/location/LocationRequest;->mLocationSettingsIgnored:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    iget-boolean v0, p0, Landroid/location/LocationRequest;->mLowPowerMode:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    iget-object v0, p0, Landroid/location/LocationRequest;->mWorkSource:Landroid/os/WorkSource;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    return-void
.end method
