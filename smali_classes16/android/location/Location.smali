.class public Landroid/location/Location;
.super Ljava/lang/Object;
.source "Location.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/location/Location$BearingDistanceCache;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/location/Location;",
            ">;"
        }
    .end annotation
.end field

.field public static final EXTRA_NO_GPS_LOCATION:Ljava/lang/String; = "noGPSLocation"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final FORMAT_DEGREES:I = 0x0

.field public static final FORMAT_MINUTES:I = 0x1

.field public static final FORMAT_SECONDS:I = 0x2

.field private static final HAS_ALTITUDE_MASK:I = 0x1

.field private static final HAS_BEARING_ACCURACY_MASK:I = 0x80

.field private static final HAS_BEARING_MASK:I = 0x4

.field private static final HAS_ELAPSED_REALTIME_UNCERTAINTY_MASK:I = 0x100

.field private static final HAS_HORIZONTAL_ACCURACY_MASK:I = 0x8

.field private static final HAS_MOCK_PROVIDER_MASK:I = 0x10

.field private static final HAS_SPEED_ACCURACY_MASK:I = 0x40

.field private static final HAS_SPEED_MASK:I = 0x2

.field private static final HAS_VERTICAL_ACCURACY_MASK:I = 0x20

.field private static sBearingDistanceCache:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Landroid/location/Location$BearingDistanceCache;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mAltitude:D

.field private mBearing:F

.field private mBearingAccuracyDegrees:F

.field private mElapsedRealtimeNanos:J

.field private mElapsedRealtimeUncertaintyNanos:D

.field private mExtras:Landroid/os/Bundle;

.field private mFieldsMask:I

.field private mHorizontalAccuracyMeters:F

.field private mLatitude:D

.field private mLongitude:D

.field private mProvider:Ljava/lang/String;

.field private mSpeed:F

.field private mSpeedAccuracyMetersPerSecond:F

.field private mTime:J

.field private mVerticalAccuracyMeters:F


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/location/Location$1;

    invoke-direct {v0}, Landroid/location/Location$1;-><init>()V

    sput-object v0, Landroid/location/Location;->sBearingDistanceCache:Ljava/lang/ThreadLocal;

    new-instance v0, Landroid/location/Location$2;

    invoke-direct {v0}, Landroid/location/Location$2;-><init>()V

    sput-object v0, Landroid/location/Location;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/location/Location;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/location/Location;->mTime:J

    iput-wide v0, p0, Landroid/location/Location;->mElapsedRealtimeNanos:J

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/location/Location;->mElapsedRealtimeUncertaintyNanos:D

    iput-wide v0, p0, Landroid/location/Location;->mLatitude:D

    iput-wide v0, p0, Landroid/location/Location;->mLongitude:D

    iput-wide v0, p0, Landroid/location/Location;->mAltitude:D

    const/4 v0, 0x0

    iput v0, p0, Landroid/location/Location;->mSpeed:F

    iput v0, p0, Landroid/location/Location;->mBearing:F

    iput v0, p0, Landroid/location/Location;->mHorizontalAccuracyMeters:F

    iput v0, p0, Landroid/location/Location;->mVerticalAccuracyMeters:F

    iput v0, p0, Landroid/location/Location;->mSpeedAccuracyMetersPerSecond:F

    iput v0, p0, Landroid/location/Location;->mBearingAccuracyDegrees:F

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/location/Location;->mExtras:Landroid/os/Bundle;

    const/4 v0, 0x0

    iput v0, p0, Landroid/location/Location;->mFieldsMask:I

    invoke-virtual {p0, p1}, Landroid/location/Location;->set(Landroid/location/Location;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/location/Location;->mTime:J

    iput-wide v0, p0, Landroid/location/Location;->mElapsedRealtimeNanos:J

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/location/Location;->mElapsedRealtimeUncertaintyNanos:D

    iput-wide v0, p0, Landroid/location/Location;->mLatitude:D

    iput-wide v0, p0, Landroid/location/Location;->mLongitude:D

    iput-wide v0, p0, Landroid/location/Location;->mAltitude:D

    const/4 v0, 0x0

    iput v0, p0, Landroid/location/Location;->mSpeed:F

    iput v0, p0, Landroid/location/Location;->mBearing:F

    iput v0, p0, Landroid/location/Location;->mHorizontalAccuracyMeters:F

    iput v0, p0, Landroid/location/Location;->mVerticalAccuracyMeters:F

    iput v0, p0, Landroid/location/Location;->mSpeedAccuracyMetersPerSecond:F

    iput v0, p0, Landroid/location/Location;->mBearingAccuracyDegrees:F

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/location/Location;->mExtras:Landroid/os/Bundle;

    const/4 v0, 0x0

    iput v0, p0, Landroid/location/Location;->mFieldsMask:I

    iput-object p1, p0, Landroid/location/Location;->mProvider:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$1002(Landroid/location/Location;D)D
    .registers 3

    iput-wide p1, p0, Landroid/location/Location;->mElapsedRealtimeUncertaintyNanos:D

    return-wide p1
.end method

.method static synthetic access$1102(Landroid/location/Location;I)I
    .registers 2

    iput p1, p0, Landroid/location/Location;->mFieldsMask:I

    return p1
.end method

.method static synthetic access$1202(Landroid/location/Location;D)D
    .registers 3

    iput-wide p1, p0, Landroid/location/Location;->mLatitude:D

    return-wide p1
.end method

.method static synthetic access$1302(Landroid/location/Location;D)D
    .registers 3

    iput-wide p1, p0, Landroid/location/Location;->mLongitude:D

    return-wide p1
.end method

.method static synthetic access$1402(Landroid/location/Location;D)D
    .registers 3

    iput-wide p1, p0, Landroid/location/Location;->mAltitude:D

    return-wide p1
.end method

.method static synthetic access$1502(Landroid/location/Location;F)F
    .registers 2

    iput p1, p0, Landroid/location/Location;->mSpeed:F

    return p1
.end method

.method static synthetic access$1602(Landroid/location/Location;F)F
    .registers 2

    iput p1, p0, Landroid/location/Location;->mBearing:F

    return p1
.end method

.method static synthetic access$1702(Landroid/location/Location;F)F
    .registers 2

    iput p1, p0, Landroid/location/Location;->mHorizontalAccuracyMeters:F

    return p1
.end method

.method static synthetic access$1802(Landroid/location/Location;F)F
    .registers 2

    iput p1, p0, Landroid/location/Location;->mVerticalAccuracyMeters:F

    return p1
.end method

.method static synthetic access$1902(Landroid/location/Location;F)F
    .registers 2

    iput p1, p0, Landroid/location/Location;->mSpeedAccuracyMetersPerSecond:F

    return p1
.end method

.method static synthetic access$2002(Landroid/location/Location;F)F
    .registers 2

    iput p1, p0, Landroid/location/Location;->mBearingAccuracyDegrees:F

    return p1
.end method

.method static synthetic access$2102(Landroid/location/Location;Landroid/os/Bundle;)Landroid/os/Bundle;
    .registers 2

    iput-object p1, p0, Landroid/location/Location;->mExtras:Landroid/os/Bundle;

    return-object p1
.end method

.method static synthetic access$802(Landroid/location/Location;J)J
    .registers 3

    iput-wide p1, p0, Landroid/location/Location;->mTime:J

    return-wide p1
.end method

.method static synthetic access$902(Landroid/location/Location;J)J
    .registers 3

    iput-wide p1, p0, Landroid/location/Location;->mElapsedRealtimeNanos:J

    return-wide p1
.end method

.method private static computeDistanceAndBearing(DDDDLandroid/location/Location$BearingDistanceCache;)V
    .registers 99

    move-object/from16 v0, p8

    const/16 v1, 0x14

    const-wide v2, 0x3f91df46a2529d39L    # 0.017453292519943295

    mul-double v4, p0, v2

    mul-double v6, p4, v2

    mul-double v8, p2, v2

    mul-double v2, v2, p6

    const-wide v10, 0x415854a640000000L    # 6378137.0

    const-wide v12, 0x41583fc4141bda51L    # 6356752.3142

    sub-double v14, v10, v12

    div-double/2addr v14, v10

    mul-double v16, v10, v10

    mul-double v18, v12, v12

    sub-double v16, v16, v18

    mul-double v18, v12, v12

    div-double v16, v16, v18

    sub-double v18, v2, v8

    const-wide/16 v20, 0x0

    const-wide/high16 v22, 0x3ff0000000000000L    # 1.0

    sub-double v24, v22, v14

    invoke-static {v4, v5}, Ljava/lang/Math;->tan(D)D

    move-result-wide v26

    mul-double v24, v24, v26

    invoke-static/range {v24 .. v25}, Ljava/lang/Math;->atan(D)D

    move-result-wide v24

    sub-double v26, v22, v14

    invoke-static {v6, v7}, Ljava/lang/Math;->tan(D)D

    move-result-wide v28

    mul-double v26, v26, v28

    invoke-static/range {v26 .. v27}, Ljava/lang/Math;->atan(D)D

    move-result-wide v26

    invoke-static/range {v24 .. v25}, Ljava/lang/Math;->cos(D)D

    move-result-wide v28

    invoke-static/range {v26 .. v27}, Ljava/lang/Math;->cos(D)D

    move-result-wide v30

    move-wide/from16 p0, v10

    invoke-static/range {v24 .. v25}, Ljava/lang/Math;->sin(D)D

    move-result-wide v10

    invoke-static/range {v26 .. v27}, Ljava/lang/Math;->sin(D)D

    move-result-wide v32

    mul-double v34, v28, v30

    mul-double v36, v10, v32

    const-wide/16 v38, 0x0

    const-wide/16 v40, 0x0

    const-wide/16 v42, 0x0

    const-wide/16 v44, 0x0

    const-wide/16 v46, 0x0

    const-wide/16 v48, 0x0

    const-wide/16 v50, 0x0

    const-wide/16 v52, 0x0

    move-wide/from16 v54, v18

    const/16 v56, 0x0

    move-wide/from16 p2, v2

    move/from16 v2, v56

    :goto_74
    if-ge v2, v1, :cond_180

    move-wide/from16 v56, v54

    invoke-static/range {v54 .. v55}, Ljava/lang/Math;->cos(D)D

    move-result-wide v50

    invoke-static/range {v54 .. v55}, Ljava/lang/Math;->sin(D)D

    move-result-wide v52

    mul-double v58, v30, v52

    mul-double v60, v28, v32

    mul-double v62, v10, v30

    mul-double v62, v62, v50

    sub-double v60, v60, v62

    mul-double v62, v58, v58

    mul-double v64, v60, v60

    add-double v62, v62, v64

    move-wide/from16 p4, v8

    invoke-static/range {v62 .. v63}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v8

    mul-double v48, v34, v50

    move-wide/from16 v64, v6

    add-double v6, v36, v48

    invoke-static {v8, v9, v6, v7}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v38

    const-wide/16 v46, 0x0

    cmpl-double v3, v8, v46

    if-nez v3, :cond_a9

    move-wide/from16 v48, v46

    goto :goto_ad

    :cond_a9
    mul-double v48, v34, v52

    div-double v48, v48, v8

    :goto_ad
    nop

    mul-double v66, v48, v48

    sub-double v42, v22, v66

    cmpl-double v3, v42, v46

    const-wide/high16 v66, 0x4000000000000000L    # 2.0

    if-nez v3, :cond_b9

    goto :goto_bf

    :cond_b9
    mul-double v46, v36, v66

    div-double v46, v46, v42

    sub-double v46, v6, v46

    :goto_bf
    move-wide/from16 v44, v46

    mul-double v46, v42, v16

    const-wide/high16 v68, 0x40d0000000000000L    # 16384.0

    div-double v68, v46, v68

    const-wide/high16 v70, 0x40b0000000000000L    # 4096.0

    const-wide/high16 v72, -0x3f78000000000000L    # -768.0

    const-wide/high16 v74, 0x4074000000000000L    # 320.0

    const-wide v76, 0x4065e00000000000L    # 175.0

    mul-double v76, v76, v46

    sub-double v74, v74, v76

    mul-double v74, v74, v46

    add-double v74, v74, v72

    mul-double v74, v74, v46

    add-double v74, v74, v70

    mul-double v68, v68, v74

    add-double v20, v68, v22

    const-wide/high16 v68, 0x4090000000000000L    # 1024.0

    div-double v68, v46, v68

    const-wide/high16 v70, 0x4070000000000000L    # 256.0

    const-wide/high16 v72, -0x3fa0000000000000L    # -128.0

    const-wide v74, 0x4052800000000000L    # 74.0

    const-wide v76, 0x4047800000000000L    # 47.0

    mul-double v76, v76, v46

    sub-double v74, v74, v76

    mul-double v74, v74, v46

    add-double v74, v74, v72

    mul-double v74, v74, v46

    add-double v74, v74, v70

    mul-double v68, v68, v74

    const-wide/high16 v70, 0x4030000000000000L    # 16.0

    div-double v70, v14, v70

    mul-double v70, v70, v42

    const-wide/high16 v72, 0x4008000000000000L    # 3.0

    mul-double v72, v72, v42

    const-wide/high16 v74, 0x4010000000000000L    # 4.0

    sub-double v72, v74, v72

    mul-double v72, v72, v14

    add-double v72, v72, v74

    mul-double v70, v70, v72

    mul-double v72, v44, v44

    mul-double v76, v68, v8

    div-double v78, v68, v74

    mul-double v80, v72, v66

    const-wide/high16 v82, -0x4010000000000000L    # -1.0

    add-double v80, v80, v82

    mul-double v80, v80, v6

    const-wide/high16 v84, 0x4018000000000000L    # 6.0

    div-double v84, v68, v84

    mul-double v84, v84, v44

    mul-double v86, v8, v74

    mul-double v86, v86, v8

    const-wide/high16 v88, -0x3ff8000000000000L    # -3.0

    add-double v86, v86, v88

    mul-double v84, v84, v86

    mul-double v74, v74, v72

    add-double v74, v74, v88

    mul-double v84, v84, v74

    sub-double v80, v80, v84

    mul-double v78, v78, v80

    add-double v78, v44, v78

    mul-double v40, v76, v78

    sub-double v74, v22, v70

    mul-double v74, v74, v14

    mul-double v74, v74, v48

    mul-double v76, v70, v8

    mul-double v78, v70, v6

    mul-double v66, v66, v44

    mul-double v66, v66, v44

    add-double v66, v66, v82

    mul-double v78, v78, v66

    add-double v78, v44, v78

    mul-double v76, v76, v78

    add-double v76, v38, v76

    mul-double v74, v74, v76

    add-double v54, v18, v74

    sub-double v66, v54, v56

    div-double v66, v66, v54

    invoke-static/range {v66 .. v67}, Ljava/lang/Math;->abs(D)D

    move-result-wide v74

    const-wide v76, 0x3d719799812dea11L    # 1.0E-12

    cmpg-double v3, v74, v76

    if-gez v3, :cond_174

    move-wide/from16 v46, v6

    move-wide/from16 v48, v8

    goto :goto_184

    :cond_174
    add-int/lit8 v2, v2, 0x1

    move-wide/from16 v46, v6

    move-wide/from16 v48, v8

    move-wide/from16 v6, v64

    move-wide/from16 v8, p4

    goto/16 :goto_74

    :cond_180
    move-wide/from16 v64, v6

    move-wide/from16 p4, v8

    :goto_184
    mul-double v2, v12, v20

    sub-double v6, v38, v40

    mul-double/2addr v2, v6

    double-to-float v2, v2

    # setter for: Landroid/location/Location$BearingDistanceCache;->mDistance:F
    invoke-static {v0, v2}, Landroid/location/Location$BearingDistanceCache;->access$102(Landroid/location/Location$BearingDistanceCache;F)F

    mul-double v6, v30, v52

    mul-double v8, v28, v32

    mul-double v22, v10, v30

    mul-double v22, v22, v50

    sub-double v8, v8, v22

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v6

    double-to-float v3, v6

    float-to-double v6, v3

    const-wide v8, 0x404ca5dc1a63c1f8L    # 57.29577951308232

    mul-double/2addr v6, v8

    double-to-float v3, v6

    # setter for: Landroid/location/Location$BearingDistanceCache;->mInitialBearing:F
    invoke-static {v0, v3}, Landroid/location/Location$BearingDistanceCache;->access$202(Landroid/location/Location$BearingDistanceCache;F)F

    mul-double v6, v28, v52

    neg-double v8, v10

    mul-double v8, v8, v30

    mul-double v22, v28, v32

    mul-double v22, v22, v50

    add-double v8, v8, v22

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v6

    double-to-float v6, v6

    float-to-double v7, v6

    const-wide v22, 0x404ca5dc1a63c1f8L    # 57.29577951308232

    mul-double v7, v7, v22

    double-to-float v6, v7

    # setter for: Landroid/location/Location$BearingDistanceCache;->mFinalBearing:F
    invoke-static {v0, v6}, Landroid/location/Location$BearingDistanceCache;->access$302(Landroid/location/Location$BearingDistanceCache;F)F

    # setter for: Landroid/location/Location$BearingDistanceCache;->mLat1:D
    invoke-static {v0, v4, v5}, Landroid/location/Location$BearingDistanceCache;->access$402(Landroid/location/Location$BearingDistanceCache;D)D

    move-wide/from16 v7, v64

    # setter for: Landroid/location/Location$BearingDistanceCache;->mLat2:D
    invoke-static {v0, v7, v8}, Landroid/location/Location$BearingDistanceCache;->access$502(Landroid/location/Location$BearingDistanceCache;D)D

    move v9, v1

    move/from16 v22, v2

    move-wide/from16 v1, p4

    # setter for: Landroid/location/Location$BearingDistanceCache;->mLon1:D
    invoke-static {v0, v1, v2}, Landroid/location/Location$BearingDistanceCache;->access$602(Landroid/location/Location$BearingDistanceCache;D)D

    move-wide/from16 v1, p2

    # setter for: Landroid/location/Location$BearingDistanceCache;->mLon2:D
    invoke-static {v0, v1, v2}, Landroid/location/Location$BearingDistanceCache;->access$702(Landroid/location/Location$BearingDistanceCache;D)D

    return-void
.end method

.method public static convert(Ljava/lang/String;)D
    .registers 20

    move-object/from16 v0, p0

    if-eqz v0, :cond_140

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x2d

    const/4 v5, 0x1

    if-ne v3, v4, :cond_17

    invoke-virtual {v0, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    move v3, v1

    move-object v1, v0

    goto :goto_19

    :cond_17
    move v3, v1

    move-object v1, v0

    :goto_19
    new-instance v0, Ljava/util/StringTokenizer;

    const-string v4, ":"

    invoke-direct {v0, v1, v4}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object v4, v0

    invoke-virtual {v4}, Ljava/util/StringTokenizer;->countTokens()I

    move-result v6

    const-string v7, "coordinate="

    if-lt v6, v5, :cond_12b

    :try_start_29
    invoke-virtual {v4}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v0
    :try_end_2d
    .catch Ljava/lang/NumberFormatException; {:try_start_29 .. :try_end_2d} :catch_112

    if-ne v6, v5, :cond_3f

    :try_start_2f
    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v7
    :try_end_33
    .catch Ljava/lang/NumberFormatException; {:try_start_2f .. :try_end_33} :catch_39

    if-eqz v3, :cond_37

    neg-double v9, v7

    goto :goto_38

    :cond_37
    move-wide v9, v7

    :goto_38
    return-wide v9

    :catch_39
    move-exception v0

    move v15, v3

    move-object/from16 p0, v4

    goto/16 :goto_116

    :cond_3f
    :try_start_3f
    invoke-virtual {v4}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v8

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    const-wide/16 v10, 0x0

    const/4 v12, 0x0

    invoke-virtual {v4}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v13
    :try_end_4e
    .catch Ljava/lang/NumberFormatException; {:try_start_3f .. :try_end_4e} :catch_112

    if-eqz v13, :cond_61

    :try_start_50
    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    int-to-double v13, v13

    invoke-virtual {v4}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v16
    :try_end_5d
    .catch Ljava/lang/NumberFormatException; {:try_start_50 .. :try_end_5d} :catch_39

    move-wide/from16 v10, v16

    const/4 v12, 0x1

    goto :goto_65

    :cond_61
    :try_start_61
    invoke-static {v8}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v13
    :try_end_65
    .catch Ljava/lang/NumberFormatException; {:try_start_61 .. :try_end_65} :catch_112

    :goto_65
    const-wide/16 v15, 0x0

    if-eqz v3, :cond_77

    const/16 v2, 0xb4

    if-ne v9, v2, :cond_77

    cmpl-double v2, v13, v15

    if-nez v2, :cond_77

    cmpl-double v2, v10, v15

    if-nez v2, :cond_77

    move v2, v5

    goto :goto_78

    :cond_77
    const/4 v2, 0x0

    :goto_78
    move-object/from16 p0, v4

    int-to-double v4, v9

    cmpg-double v4, v4, v15

    if-ltz v4, :cond_f8

    const/16 v4, 0xb3

    if-le v9, v4, :cond_8b

    if-eqz v2, :cond_86

    goto :goto_8b

    :cond_86
    move/from16 v16, v2

    move v15, v3

    goto/16 :goto_fb

    :cond_8b
    :goto_8b
    cmpg-double v4, v13, v15

    if-ltz v4, :cond_e0

    const-wide/high16 v4, 0x404e000000000000L    # 60.0

    cmpl-double v17, v13, v4

    if-gez v17, :cond_e0

    if-eqz v12, :cond_a5

    const-wide v17, 0x404d800000000000L    # 59.0

    cmpl-double v17, v13, v17

    if-gtz v17, :cond_a1

    goto :goto_a5

    :cond_a1
    move/from16 v16, v2

    move v15, v3

    goto :goto_e3

    :cond_a5
    :goto_a5
    cmpg-double v15, v10, v15

    if-ltz v15, :cond_c8

    cmpl-double v15, v10, v4

    if-gez v15, :cond_c8

    int-to-double v4, v9

    const-wide v17, 0x40ac200000000000L    # 3600.0

    mul-double v4, v4, v17

    const-wide/high16 v15, 0x404e000000000000L    # 60.0

    mul-double/2addr v15, v13

    add-double/2addr v4, v15

    add-double/2addr v4, v10

    div-double v4, v4, v17

    if-eqz v3, :cond_c3

    move/from16 v16, v2

    move v15, v3

    neg-double v2, v4

    goto :goto_c7

    :cond_c3
    move/from16 v16, v2

    move v15, v3

    move-wide v2, v4

    :goto_c7
    return-wide v2

    :cond_c8
    move/from16 v16, v2

    move v15, v3

    :try_start_cb
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_e0
    move/from16 v16, v2

    move v15, v3

    :goto_e3
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_f8
    move/from16 v16, v2

    move v15, v3

    :goto_fb
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_110
    .catch Ljava/lang/NumberFormatException; {:try_start_cb .. :try_end_110} :catch_110

    :catch_110
    move-exception v0

    goto :goto_116

    :catch_112
    move-exception v0

    move v15, v3

    move-object/from16 p0, v4

    :goto_116
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_12b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_140
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "coordinate"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static convert(DI)Ljava/lang/String;
    .registers 12

    const-wide v0, -0x3f99800000000000L    # -180.0

    cmpg-double v0, p0, v0

    if-ltz v0, :cond_83

    const-wide v0, 0x4066800000000000L    # 180.0

    cmpl-double v0, p0, v0

    if-gtz v0, :cond_83

    invoke-static {p0, p1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-nez v0, :cond_83

    const/4 v0, 0x1

    const/4 v1, 0x2

    if-eqz p2, :cond_39

    if-eq p2, v0, :cond_39

    if-ne p2, v1, :cond_21

    goto :goto_39

    :cond_21
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "outputType="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_39
    :goto_39
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-wide/16 v3, 0x0

    cmpg-double v3, p0, v3

    if-gez v3, :cond_4a

    const/16 v3, 0x2d

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    neg-double p0, p0

    :cond_4a
    new-instance v3, Ljava/text/DecimalFormat;

    const-string v4, "###.#####"

    invoke-direct {v3, v4}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    if-eq p2, v0, :cond_55

    if-ne p2, v1, :cond_77

    :cond_55
    invoke-static {p0, p1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v4

    double-to-int v0, v4

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v4, 0x3a

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    int-to-double v5, v0

    sub-double/2addr p0, v5

    const-wide/high16 v5, 0x404e000000000000L    # 60.0

    mul-double/2addr p0, v5

    if-ne p2, v1, :cond_77

    invoke-static {p0, p1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v7

    double-to-int v1, v7

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    int-to-double v7, v1

    sub-double/2addr p0, v7

    mul-double/2addr p0, v5

    :cond_77
    invoke-virtual {v3, p0, p1}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_83
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "coordinate="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0, p1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static distanceBetween(DDDD[F)V
    .registers 21

    move-object/from16 v0, p8

    if-eqz v0, :cond_35

    array-length v1, v0

    const/4 v2, 0x1

    if-lt v1, v2, :cond_35

    sget-object v1, Landroid/location/Location;->sBearingDistanceCache:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/location/Location$BearingDistanceCache;

    move-wide v3, p0

    move-wide v5, p2

    move-wide/from16 v7, p4

    move-wide/from16 v9, p6

    move-object v11, v1

    invoke-static/range {v3 .. v11}, Landroid/location/Location;->computeDistanceAndBearing(DDDDLandroid/location/Location$BearingDistanceCache;)V

    const/4 v3, 0x0

    # getter for: Landroid/location/Location$BearingDistanceCache;->mDistance:F
    invoke-static {v1}, Landroid/location/Location$BearingDistanceCache;->access$100(Landroid/location/Location$BearingDistanceCache;)F

    move-result v4

    aput v4, v0, v3

    array-length v3, v0

    if-le v3, v2, :cond_34

    # getter for: Landroid/location/Location$BearingDistanceCache;->mInitialBearing:F
    invoke-static {v1}, Landroid/location/Location$BearingDistanceCache;->access$200(Landroid/location/Location$BearingDistanceCache;)F

    move-result v3

    aput v3, v0, v2

    array-length v2, v0

    const/4 v3, 0x2

    if-le v2, v3, :cond_34

    # getter for: Landroid/location/Location$BearingDistanceCache;->mFinalBearing:F
    invoke-static {v1}, Landroid/location/Location$BearingDistanceCache;->access$300(Landroid/location/Location$BearingDistanceCache;)F

    move-result v2

    aput v2, v0, v3

    :cond_34
    return-void

    :cond_35
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "results is null or has length < 1"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public bearingTo(Landroid/location/Location;)F
    .registers 12

    sget-object v0, Landroid/location/Location;->sBearingDistanceCache:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/Location$BearingDistanceCache;

    iget-wide v1, p0, Landroid/location/Location;->mLatitude:D

    # getter for: Landroid/location/Location$BearingDistanceCache;->mLat1:D
    invoke-static {v0}, Landroid/location/Location$BearingDistanceCache;->access$400(Landroid/location/Location$BearingDistanceCache;)D

    move-result-wide v3

    cmpl-double v1, v1, v3

    if-nez v1, :cond_30

    iget-wide v1, p0, Landroid/location/Location;->mLongitude:D

    # getter for: Landroid/location/Location$BearingDistanceCache;->mLon1:D
    invoke-static {v0}, Landroid/location/Location$BearingDistanceCache;->access$600(Landroid/location/Location$BearingDistanceCache;)D

    move-result-wide v3

    cmpl-double v1, v1, v3

    if-nez v1, :cond_30

    iget-wide v1, p1, Landroid/location/Location;->mLatitude:D

    # getter for: Landroid/location/Location$BearingDistanceCache;->mLat2:D
    invoke-static {v0}, Landroid/location/Location$BearingDistanceCache;->access$500(Landroid/location/Location$BearingDistanceCache;)D

    move-result-wide v3

    cmpl-double v1, v1, v3

    if-nez v1, :cond_30

    iget-wide v1, p1, Landroid/location/Location;->mLongitude:D

    # getter for: Landroid/location/Location$BearingDistanceCache;->mLon2:D
    invoke-static {v0}, Landroid/location/Location$BearingDistanceCache;->access$700(Landroid/location/Location$BearingDistanceCache;)D

    move-result-wide v3

    cmpl-double v1, v1, v3

    if-eqz v1, :cond_3c

    :cond_30
    iget-wide v1, p0, Landroid/location/Location;->mLatitude:D

    iget-wide v3, p0, Landroid/location/Location;->mLongitude:D

    iget-wide v5, p1, Landroid/location/Location;->mLatitude:D

    iget-wide v7, p1, Landroid/location/Location;->mLongitude:D

    move-object v9, v0

    invoke-static/range {v1 .. v9}, Landroid/location/Location;->computeDistanceAndBearing(DDDDLandroid/location/Location$BearingDistanceCache;)V

    :cond_3c
    # getter for: Landroid/location/Location$BearingDistanceCache;->mInitialBearing:F
    invoke-static {v0}, Landroid/location/Location$BearingDistanceCache;->access$200(Landroid/location/Location$BearingDistanceCache;)F

    move-result v1

    return v1
.end method

.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public distanceTo(Landroid/location/Location;)F
    .registers 12

    sget-object v0, Landroid/location/Location;->sBearingDistanceCache:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/Location$BearingDistanceCache;

    iget-wide v1, p0, Landroid/location/Location;->mLatitude:D

    # getter for: Landroid/location/Location$BearingDistanceCache;->mLat1:D
    invoke-static {v0}, Landroid/location/Location$BearingDistanceCache;->access$400(Landroid/location/Location$BearingDistanceCache;)D

    move-result-wide v3

    cmpl-double v1, v1, v3

    if-nez v1, :cond_30

    iget-wide v1, p0, Landroid/location/Location;->mLongitude:D

    # getter for: Landroid/location/Location$BearingDistanceCache;->mLon1:D
    invoke-static {v0}, Landroid/location/Location$BearingDistanceCache;->access$600(Landroid/location/Location$BearingDistanceCache;)D

    move-result-wide v3

    cmpl-double v1, v1, v3

    if-nez v1, :cond_30

    iget-wide v1, p1, Landroid/location/Location;->mLatitude:D

    # getter for: Landroid/location/Location$BearingDistanceCache;->mLat2:D
    invoke-static {v0}, Landroid/location/Location$BearingDistanceCache;->access$500(Landroid/location/Location$BearingDistanceCache;)D

    move-result-wide v3

    cmpl-double v1, v1, v3

    if-nez v1, :cond_30

    iget-wide v1, p1, Landroid/location/Location;->mLongitude:D

    # getter for: Landroid/location/Location$BearingDistanceCache;->mLon2:D
    invoke-static {v0}, Landroid/location/Location$BearingDistanceCache;->access$700(Landroid/location/Location$BearingDistanceCache;)D

    move-result-wide v3

    cmpl-double v1, v1, v3

    if-eqz v1, :cond_3c

    :cond_30
    iget-wide v1, p0, Landroid/location/Location;->mLatitude:D

    iget-wide v3, p0, Landroid/location/Location;->mLongitude:D

    iget-wide v5, p1, Landroid/location/Location;->mLatitude:D

    iget-wide v7, p1, Landroid/location/Location;->mLongitude:D

    move-object v9, v0

    invoke-static/range {v1 .. v9}, Landroid/location/Location;->computeDistanceAndBearing(DDDDLandroid/location/Location$BearingDistanceCache;)V

    :cond_3c
    # getter for: Landroid/location/Location$BearingDistanceCache;->mDistance:F
    invoke-static {v0}, Landroid/location/Location$BearingDistanceCache;->access$100(Landroid/location/Location$BearingDistanceCache;)F

    move-result v1

    return v1
.end method

.method public dump(Landroid/util/Printer;Ljava/lang/String;)V
    .registers 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/location/Location;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    return-void
.end method

.method public getAccuracy()F
    .registers 2

    iget v0, p0, Landroid/location/Location;->mHorizontalAccuracyMeters:F

    return v0
.end method

.method public getAltitude()D
    .registers 3

    iget-wide v0, p0, Landroid/location/Location;->mAltitude:D

    return-wide v0
.end method

.method public getBearing()F
    .registers 2

    iget v0, p0, Landroid/location/Location;->mBearing:F

    return v0
.end method

.method public getBearingAccuracyDegrees()F
    .registers 2

    iget v0, p0, Landroid/location/Location;->mBearingAccuracyDegrees:F

    return v0
.end method

.method public getElapsedRealtimeAgeNanos()J
    .registers 3

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Landroid/location/Location;->getElapsedRealtimeAgeNanos(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getElapsedRealtimeAgeNanos(J)J
    .registers 5

    iget-wide v0, p0, Landroid/location/Location;->mElapsedRealtimeNanos:J

    sub-long v0, p1, v0

    return-wide v0
.end method

.method public getElapsedRealtimeNanos()J
    .registers 3

    iget-wide v0, p0, Landroid/location/Location;->mElapsedRealtimeNanos:J

    return-wide v0
.end method

.method public getElapsedRealtimeUncertaintyNanos()D
    .registers 3

    iget-wide v0, p0, Landroid/location/Location;->mElapsedRealtimeUncertaintyNanos:D

    return-wide v0
.end method

.method public getExtraLocation(Ljava/lang/String;)Landroid/location/Location;
    .registers 4

    iget-object v0, p0, Landroid/location/Location;->mExtras:Landroid/os/Bundle;

    if-eqz v0, :cond_10

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    instance-of v1, v0, Landroid/location/Location;

    if-eqz v1, :cond_10

    move-object v1, v0

    check-cast v1, Landroid/location/Location;

    return-object v1

    :cond_10
    const/4 v0, 0x0

    return-object v0
.end method

.method public getExtras()Landroid/os/Bundle;
    .registers 2

    iget-object v0, p0, Landroid/location/Location;->mExtras:Landroid/os/Bundle;

    return-object v0
.end method

.method public getLatitude()D
    .registers 3

    iget-wide v0, p0, Landroid/location/Location;->mLatitude:D

    return-wide v0
.end method

.method public getLongitude()D
    .registers 3

    iget-wide v0, p0, Landroid/location/Location;->mLongitude:D

    return-wide v0
.end method

.method public getProvider()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Landroid/location/Location;->mProvider:Ljava/lang/String;

    return-object v0
.end method

.method public getSpeed()F
    .registers 2

    iget v0, p0, Landroid/location/Location;->mSpeed:F

    return v0
.end method

.method public getSpeedAccuracyMetersPerSecond()F
    .registers 2

    iget v0, p0, Landroid/location/Location;->mSpeedAccuracyMetersPerSecond:F

    return v0
.end method

.method public getTime()J
    .registers 3

    iget-wide v0, p0, Landroid/location/Location;->mTime:J

    return-wide v0
.end method

.method public getVerticalAccuracyMeters()F
    .registers 2

    iget v0, p0, Landroid/location/Location;->mVerticalAccuracyMeters:F

    return v0
.end method

.method public hasAccuracy()Z
    .registers 2

    iget v0, p0, Landroid/location/Location;->mFieldsMask:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public hasAltitude()Z
    .registers 3

    iget v0, p0, Landroid/location/Location;->mFieldsMask:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_7

    goto :goto_8

    :cond_7
    const/4 v1, 0x0

    :goto_8
    return v1
.end method

.method public hasBearing()Z
    .registers 2

    iget v0, p0, Landroid/location/Location;->mFieldsMask:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public hasBearingAccuracy()Z
    .registers 2

    iget v0, p0, Landroid/location/Location;->mFieldsMask:I

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public hasElapsedRealtimeUncertaintyNanos()Z
    .registers 2

    iget v0, p0, Landroid/location/Location;->mFieldsMask:I

    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public hasSpeed()Z
    .registers 2

    iget v0, p0, Landroid/location/Location;->mFieldsMask:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public hasSpeedAccuracy()Z
    .registers 2

    iget v0, p0, Landroid/location/Location;->mFieldsMask:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public hasVerticalAccuracy()Z
    .registers 2

    iget v0, p0, Landroid/location/Location;->mFieldsMask:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public isComplete()Z
    .registers 7
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    iget-object v0, p0, Landroid/location/Location;->mProvider:Ljava/lang/String;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    :cond_6
    invoke-virtual {p0}, Landroid/location/Location;->hasAccuracy()Z

    move-result v0

    if-nez v0, :cond_d

    return v1

    :cond_d
    iget-wide v2, p0, Landroid/location/Location;->mTime:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-nez v0, :cond_16

    return v1

    :cond_16
    iget-wide v2, p0, Landroid/location/Location;->mElapsedRealtimeNanos:J

    cmp-long v0, v2, v4

    if-nez v0, :cond_1d

    return v1

    :cond_1d
    const/4 v0, 0x1

    return v0
.end method

.method public isFromMockProvider()Z
    .registers 2

    iget v0, p0, Landroid/location/Location;->mFieldsMask:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public makeComplete()V
    .registers 5
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    iget-object v0, p0, Landroid/location/Location;->mProvider:Ljava/lang/String;

    if-nez v0, :cond_8

    const-string v0, "?"

    iput-object v0, p0, Landroid/location/Location;->mProvider:Ljava/lang/String;

    :cond_8
    invoke-virtual {p0}, Landroid/location/Location;->hasAccuracy()Z

    move-result v0

    if-nez v0, :cond_18

    iget v0, p0, Landroid/location/Location;->mFieldsMask:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Landroid/location/Location;->mFieldsMask:I

    const/high16 v0, 0x42c80000    # 100.0f

    iput v0, p0, Landroid/location/Location;->mHorizontalAccuracyMeters:F

    :cond_18
    iget-wide v0, p0, Landroid/location/Location;->mTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_26

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/location/Location;->mTime:J

    :cond_26
    iget-wide v0, p0, Landroid/location/Location;->mElapsedRealtimeNanos:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_32

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/location/Location;->mElapsedRealtimeNanos:J

    :cond_32
    return-void
.end method

.method public removeAccuracy()V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    iput v0, p0, Landroid/location/Location;->mHorizontalAccuracyMeters:F

    iget v0, p0, Landroid/location/Location;->mFieldsMask:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Landroid/location/Location;->mFieldsMask:I

    return-void
.end method

.method public removeAltitude()V
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/location/Location;->mAltitude:D

    iget v0, p0, Landroid/location/Location;->mFieldsMask:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Landroid/location/Location;->mFieldsMask:I

    return-void
.end method

.method public removeBearing()V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    iput v0, p0, Landroid/location/Location;->mBearing:F

    iget v0, p0, Landroid/location/Location;->mFieldsMask:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Landroid/location/Location;->mFieldsMask:I

    return-void
.end method

.method public removeBearingAccuracy()V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    iput v0, p0, Landroid/location/Location;->mBearingAccuracyDegrees:F

    iget v0, p0, Landroid/location/Location;->mFieldsMask:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Landroid/location/Location;->mFieldsMask:I

    return-void
.end method

.method public removeSpeed()V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    iput v0, p0, Landroid/location/Location;->mSpeed:F

    iget v0, p0, Landroid/location/Location;->mFieldsMask:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Landroid/location/Location;->mFieldsMask:I

    return-void
.end method

.method public removeSpeedAccuracy()V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    iput v0, p0, Landroid/location/Location;->mSpeedAccuracyMetersPerSecond:F

    iget v0, p0, Landroid/location/Location;->mFieldsMask:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Landroid/location/Location;->mFieldsMask:I

    return-void
.end method

.method public removeVerticalAccuracy()V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    iput v0, p0, Landroid/location/Location;->mVerticalAccuracyMeters:F

    iget v0, p0, Landroid/location/Location;->mFieldsMask:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Landroid/location/Location;->mFieldsMask:I

    return-void
.end method

.method public reset()V
    .registers 5

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/location/Location;->mProvider:Ljava/lang/String;

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Landroid/location/Location;->mTime:J

    iput-wide v1, p0, Landroid/location/Location;->mElapsedRealtimeNanos:J

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Landroid/location/Location;->mElapsedRealtimeUncertaintyNanos:D

    const/4 v3, 0x0

    iput v3, p0, Landroid/location/Location;->mFieldsMask:I

    iput-wide v1, p0, Landroid/location/Location;->mLatitude:D

    iput-wide v1, p0, Landroid/location/Location;->mLongitude:D

    iput-wide v1, p0, Landroid/location/Location;->mAltitude:D

    const/4 v1, 0x0

    iput v1, p0, Landroid/location/Location;->mSpeed:F

    iput v1, p0, Landroid/location/Location;->mBearing:F

    iput v1, p0, Landroid/location/Location;->mHorizontalAccuracyMeters:F

    iput v1, p0, Landroid/location/Location;->mVerticalAccuracyMeters:F

    iput v1, p0, Landroid/location/Location;->mSpeedAccuracyMetersPerSecond:F

    iput v1, p0, Landroid/location/Location;->mBearingAccuracyDegrees:F

    iput-object v0, p0, Landroid/location/Location;->mExtras:Landroid/os/Bundle;

    return-void
.end method

.method public set(Landroid/location/Location;)V
    .registers 4

    iget-object v0, p1, Landroid/location/Location;->mProvider:Ljava/lang/String;

    iput-object v0, p0, Landroid/location/Location;->mProvider:Ljava/lang/String;

    iget-wide v0, p1, Landroid/location/Location;->mTime:J

    iput-wide v0, p0, Landroid/location/Location;->mTime:J

    iget-wide v0, p1, Landroid/location/Location;->mElapsedRealtimeNanos:J

    iput-wide v0, p0, Landroid/location/Location;->mElapsedRealtimeNanos:J

    iget-wide v0, p1, Landroid/location/Location;->mElapsedRealtimeUncertaintyNanos:D

    iput-wide v0, p0, Landroid/location/Location;->mElapsedRealtimeUncertaintyNanos:D

    iget v0, p1, Landroid/location/Location;->mFieldsMask:I

    iput v0, p0, Landroid/location/Location;->mFieldsMask:I

    iget-wide v0, p1, Landroid/location/Location;->mLatitude:D

    iput-wide v0, p0, Landroid/location/Location;->mLatitude:D

    iget-wide v0, p1, Landroid/location/Location;->mLongitude:D

    iput-wide v0, p0, Landroid/location/Location;->mLongitude:D

    iget-wide v0, p1, Landroid/location/Location;->mAltitude:D

    iput-wide v0, p0, Landroid/location/Location;->mAltitude:D

    iget v0, p1, Landroid/location/Location;->mSpeed:F

    iput v0, p0, Landroid/location/Location;->mSpeed:F

    iget v0, p1, Landroid/location/Location;->mBearing:F

    iput v0, p0, Landroid/location/Location;->mBearing:F

    iget v0, p1, Landroid/location/Location;->mHorizontalAccuracyMeters:F

    iput v0, p0, Landroid/location/Location;->mHorizontalAccuracyMeters:F

    iget v0, p1, Landroid/location/Location;->mVerticalAccuracyMeters:F

    iput v0, p0, Landroid/location/Location;->mVerticalAccuracyMeters:F

    iget v0, p1, Landroid/location/Location;->mSpeedAccuracyMetersPerSecond:F

    iput v0, p0, Landroid/location/Location;->mSpeedAccuracyMetersPerSecond:F

    iget v0, p1, Landroid/location/Location;->mBearingAccuracyDegrees:F

    iput v0, p0, Landroid/location/Location;->mBearingAccuracyDegrees:F

    iget-object v0, p1, Landroid/location/Location;->mExtras:Landroid/os/Bundle;

    if-nez v0, :cond_3e

    const/4 v0, 0x0

    goto :goto_45

    :cond_3e
    new-instance v0, Landroid/os/Bundle;

    iget-object v1, p1, Landroid/location/Location;->mExtras:Landroid/os/Bundle;

    invoke-direct {v0, v1}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    :goto_45
    iput-object v0, p0, Landroid/location/Location;->mExtras:Landroid/os/Bundle;

    return-void
.end method

.method public setAccuracy(F)V
    .registers 3

    iput p1, p0, Landroid/location/Location;->mHorizontalAccuracyMeters:F

    iget v0, p0, Landroid/location/Location;->mFieldsMask:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Landroid/location/Location;->mFieldsMask:I

    return-void
.end method

.method public setAltitude(D)V
    .registers 4

    iput-wide p1, p0, Landroid/location/Location;->mAltitude:D

    iget v0, p0, Landroid/location/Location;->mFieldsMask:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/location/Location;->mFieldsMask:I

    return-void
.end method

.method public setBearing(F)V
    .registers 4

    :goto_0
    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    const/high16 v1, 0x43b40000    # 360.0f

    if-gez v0, :cond_9

    add-float/2addr p1, v1

    goto :goto_0

    :cond_9
    :goto_9
    cmpl-float v0, p1, v1

    if-ltz v0, :cond_f

    sub-float/2addr p1, v1

    goto :goto_9

    :cond_f
    iput p1, p0, Landroid/location/Location;->mBearing:F

    iget v0, p0, Landroid/location/Location;->mFieldsMask:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Landroid/location/Location;->mFieldsMask:I

    return-void
.end method

.method public setBearingAccuracyDegrees(F)V
    .registers 3

    iput p1, p0, Landroid/location/Location;->mBearingAccuracyDegrees:F

    iget v0, p0, Landroid/location/Location;->mFieldsMask:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Landroid/location/Location;->mFieldsMask:I

    return-void
.end method

.method public setElapsedRealtimeNanos(J)V
    .registers 3

    iput-wide p1, p0, Landroid/location/Location;->mElapsedRealtimeNanos:J

    return-void
.end method

.method public setElapsedRealtimeUncertaintyNanos(D)V
    .registers 4

    iput-wide p1, p0, Landroid/location/Location;->mElapsedRealtimeUncertaintyNanos:D

    iget v0, p0, Landroid/location/Location;->mFieldsMask:I

    or-int/lit16 v0, v0, 0x100

    iput v0, p0, Landroid/location/Location;->mFieldsMask:I

    return-void
.end method

.method public setExtras(Landroid/os/Bundle;)V
    .registers 3

    if-nez p1, :cond_4

    const/4 v0, 0x0

    goto :goto_9

    :cond_4
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0, p1}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    :goto_9
    iput-object v0, p0, Landroid/location/Location;->mExtras:Landroid/os/Bundle;

    return-void
.end method

.method public setIsFromMockProvider(Z)V
    .registers 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    if-eqz p1, :cond_9

    iget v0, p0, Landroid/location/Location;->mFieldsMask:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Landroid/location/Location;->mFieldsMask:I

    goto :goto_f

    :cond_9
    iget v0, p0, Landroid/location/Location;->mFieldsMask:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Landroid/location/Location;->mFieldsMask:I

    :goto_f
    return-void
.end method

.method public setLatitude(D)V
    .registers 3

    iput-wide p1, p0, Landroid/location/Location;->mLatitude:D

    return-void
.end method

.method public setLongitude(D)V
    .registers 3

    iput-wide p1, p0, Landroid/location/Location;->mLongitude:D

    return-void
.end method

.method public setProvider(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Landroid/location/Location;->mProvider:Ljava/lang/String;

    return-void
.end method

.method public setSpeed(F)V
    .registers 3

    iput p1, p0, Landroid/location/Location;->mSpeed:F

    iget v0, p0, Landroid/location/Location;->mFieldsMask:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Landroid/location/Location;->mFieldsMask:I

    return-void
.end method

.method public setSpeedAccuracyMetersPerSecond(F)V
    .registers 3

    iput p1, p0, Landroid/location/Location;->mSpeedAccuracyMetersPerSecond:F

    iget v0, p0, Landroid/location/Location;->mFieldsMask:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Landroid/location/Location;->mFieldsMask:I

    return-void
.end method

.method public setTime(J)V
    .registers 3

    iput-wide p1, p0, Landroid/location/Location;->mTime:J

    return-void
.end method

.method public setVerticalAccuracyMeters(F)V
    .registers 3

    iput p1, p0, Landroid/location/Location;->mVerticalAccuracyMeters:F

    iget v0, p0, Landroid/location/Location;->mFieldsMask:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Landroid/location/Location;->mFieldsMask:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 8

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Location["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/location/Location;->mProvider:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    iget-wide v2, p0, Landroid/location/Location;->mLatitude:D

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-wide v4, p0, Landroid/location/Location;->mLongitude:D

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    const/4 v4, 0x1

    aput-object v2, v1, v4

    const-string v2, " %.6f,%.6f"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/location/Location;->hasAccuracy()Z

    move-result v1

    if-eqz v1, :cond_47

    new-array v1, v4, [Ljava/lang/Object;

    iget v2, p0, Landroid/location/Location;->mHorizontalAccuracyMeters:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    aput-object v2, v1, v3

    const-string v2, " hAcc=%.0f"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4c

    :cond_47
    const-string v1, " hAcc=???"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_4c
    iget-wide v1, p0, Landroid/location/Location;->mTime:J

    const-wide/16 v5, 0x0

    cmp-long v1, v1, v5

    if-nez v1, :cond_59

    const-string v1, " t=?!?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_59
    iget-wide v1, p0, Landroid/location/Location;->mElapsedRealtimeNanos:J

    cmp-long v1, v1, v5

    if-nez v1, :cond_65

    const-string v1, " et=?!?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_73

    :cond_65
    const-string v1, " et="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Landroid/location/Location;->mElapsedRealtimeNanos:J

    const-wide/32 v5, 0xf4240

    div-long/2addr v1, v5

    invoke-static {v1, v2, v0}, Landroid/util/TimeUtils;->formatDuration(JLjava/lang/StringBuilder;)V

    :goto_73
    invoke-virtual {p0}, Landroid/location/Location;->hasElapsedRealtimeUncertaintyNanos()Z

    move-result v1

    if-eqz v1, :cond_8a

    const-string v1, " etAcc="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Landroid/location/Location;->mElapsedRealtimeUncertaintyNanos:D

    const-wide v5, 0x412e848000000000L    # 1000000.0

    div-double/2addr v1, v5

    double-to-long v1, v1

    invoke-static {v1, v2, v0}, Landroid/util/TimeUtils;->formatDuration(JLjava/lang/StringBuilder;)V

    :cond_8a
    invoke-virtual {p0}, Landroid/location/Location;->hasAltitude()Z

    move-result v1

    if-eqz v1, :cond_9a

    const-string v1, " alt="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Landroid/location/Location;->mAltitude:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    :cond_9a
    invoke-virtual {p0}, Landroid/location/Location;->hasSpeed()Z

    move-result v1

    if-eqz v1, :cond_aa

    const-string v1, " vel="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/location/Location;->mSpeed:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    :cond_aa
    invoke-virtual {p0}, Landroid/location/Location;->hasBearing()Z

    move-result v1

    if-eqz v1, :cond_ba

    const-string v1, " bear="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/location/Location;->mBearing:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    :cond_ba
    invoke-virtual {p0}, Landroid/location/Location;->hasVerticalAccuracy()Z

    move-result v1

    if-eqz v1, :cond_d4

    new-array v1, v4, [Ljava/lang/Object;

    iget v2, p0, Landroid/location/Location;->mVerticalAccuracyMeters:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    aput-object v2, v1, v3

    const-string v2, " vAcc=%.0f"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_d9

    :cond_d4
    const-string v1, " vAcc=???"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_d9
    invoke-virtual {p0}, Landroid/location/Location;->hasSpeedAccuracy()Z

    move-result v1

    if-eqz v1, :cond_f3

    new-array v1, v4, [Ljava/lang/Object;

    iget v2, p0, Landroid/location/Location;->mSpeedAccuracyMetersPerSecond:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    aput-object v2, v1, v3

    const-string v2, " sAcc=%.0f"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_f8

    :cond_f3
    const-string v1, " sAcc=???"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_f8
    invoke-virtual {p0}, Landroid/location/Location;->hasBearingAccuracy()Z

    move-result v1

    if-eqz v1, :cond_112

    new-array v1, v4, [Ljava/lang/Object;

    iget v2, p0, Landroid/location/Location;->mBearingAccuracyDegrees:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    aput-object v2, v1, v3

    const-string v2, " bAcc=%.0f"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_117

    :cond_112
    const-string v1, " bAcc=???"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_117
    invoke-virtual {p0}, Landroid/location/Location;->isFromMockProvider()Z

    move-result v1

    if-eqz v1, :cond_122

    const-string v1, " mock"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_122
    iget-object v1, p0, Landroid/location/Location;->mExtras:Landroid/os/Bundle;

    if-eqz v1, :cond_135

    const-string v1, " {"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/location/Location;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_135
    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 5

    iget-object v0, p0, Landroid/location/Location;->mProvider:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-wide v0, p0, Landroid/location/Location;->mTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Landroid/location/Location;->mElapsedRealtimeNanos:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Landroid/location/Location;->mElapsedRealtimeUncertaintyNanos:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    iget v0, p0, Landroid/location/Location;->mFieldsMask:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-wide v0, p0, Landroid/location/Location;->mLatitude:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    iget-wide v0, p0, Landroid/location/Location;->mLongitude:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    iget-wide v0, p0, Landroid/location/Location;->mAltitude:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    iget v0, p0, Landroid/location/Location;->mSpeed:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    iget v0, p0, Landroid/location/Location;->mBearing:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    iget v0, p0, Landroid/location/Location;->mHorizontalAccuracyMeters:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    iget v0, p0, Landroid/location/Location;->mVerticalAccuracyMeters:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    iget v0, p0, Landroid/location/Location;->mSpeedAccuracyMetersPerSecond:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    iget v0, p0, Landroid/location/Location;->mBearingAccuracyDegrees:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    iget-object v0, p0, Landroid/location/Location;->mExtras:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    return-void
.end method
