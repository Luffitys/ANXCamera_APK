.class public Landroid/view/ChoreographerInjector;
.super Ljava/lang/Object;
.source "ChoreographerInjector.java"


# static fields
.field private static final DEBUG_TAG:Z = false

.field private static final FRAME_OPTS:Z

.field private static final MONITOR_PACKAGE:Ljava/lang/String;

.field private static final TAG:Ljava/lang/String; = "ChoreographerInjector"

.field private static final increaseCountArr:[D

.field private static increaseRatio:D

.field private static index:I

.field private static insertFrameCounter:I

.field private static final mChoreographer:Landroid/view/Choreographer;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    nop

    const-string/jumbo v0, "persist.sys.frame_opts"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Landroid/view/ChoreographerInjector;->FRAME_OPTS:Z

    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object v0

    sput-object v0, Landroid/view/ChoreographerInjector;->mChoreographer:Landroid/view/Choreographer;

    const/4 v0, 0x4

    new-array v0, v0, [D

    fill-array-data v0, :array_32

    sput-object v0, Landroid/view/ChoreographerInjector;->increaseCountArr:[D

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v2

    sget-object v0, Landroid/view/ChoreographerInjector;->increaseCountArr:[D

    array-length v4, v0

    int-to-double v4, v4

    mul-double/2addr v2, v4

    double-to-int v2, v2

    sput v2, Landroid/view/ChoreographerInjector;->index:I

    aget-wide v2, v0, v2

    sput-wide v2, Landroid/view/ChoreographerInjector;->increaseRatio:D

    sput v1, Landroid/view/ChoreographerInjector;->insertFrameCounter:I

    invoke-static {}, Landroid/view/ChoreographerInjector;->getMonitorPackage()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/view/ChoreographerInjector;->MONITOR_PACKAGE:Ljava/lang/String;

    return-void

    :array_32
    .array-data 8
        0x3fe0000000000000L    # 0.5
        0x3fd0000000000000L    # 0.25
        0x3fc0000000000000L    # 0.125
        0x3ff0000000000000L    # 1.0
    .end array-data
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getMonitorPackage()Ljava/lang/String;
    .registers 4

    :try_start_0
    const-string/jumbo v0, "\u4e43\u4e4f\u4e4d\u4e0e\u4e41\u4e4e\u4e54\u4e55\u4e54\u4e55\u4e0e\u4e61\u4e62\u4e45\u4e4e\u4e43\u4e48\u4e6d\u4e41\u4e52\u4e4b"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    const/4 v2, 0x0

    :goto_8
    array-length v3, v1

    if-ge v2, v3, :cond_15

    aget-char v3, v1, v2

    xor-int/lit16 v3, v3, 0x4e20

    int-to-char v3, v3

    aput-char v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    :cond_15
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v1}, Ljava/lang/String;-><init>([C)V
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1a} :catch_1b

    return-object v2

    :catch_1b
    move-exception v0

    const-string/jumbo v1, "null"

    return-object v1
.end method

.method public static monitorFrame()V
    .registers 8

    sget-boolean v0, Landroid/view/ChoreographerInjector;->FRAME_OPTS:Z

    if-eqz v0, :cond_54

    invoke-static {}, Landroid/app/ActivityThread;->currentPackageName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_54

    sget-object v0, Landroid/view/ChoreographerInjector;->MONITOR_PACKAGE:Ljava/lang/String;

    invoke-static {}, Landroid/app/ActivityThread;->currentPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_54

    sget-wide v0, Landroid/view/ChoreographerInjector;->increaseRatio:D

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    cmpl-double v4, v0, v2

    const/4 v5, 0x1

    if-ltz v4, :cond_34

    const/4 v0, 0x0

    :goto_20
    int-to-double v1, v0

    sget-wide v3, Landroid/view/ChoreographerInjector;->increaseRatio:D

    cmpg-double v1, v1, v3

    if-gez v1, :cond_33

    sget-object v1, Landroid/view/ChoreographerInjector;->mChoreographer:Landroid/view/Choreographer;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    invoke-virtual {v1, v5, v2, v3}, Landroid/view/Choreographer;->doCallbacks(IJ)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_20

    :cond_33
    goto :goto_54

    :cond_34
    const-wide/16 v6, 0x0

    cmpl-double v4, v0, v6

    if-lez v4, :cond_54

    sget v4, Landroid/view/ChoreographerInjector;->insertFrameCounter:I

    int-to-double v6, v4

    div-double v0, v2, v0

    sub-double/2addr v0, v2

    cmpl-double v0, v6, v0

    if-nez v0, :cond_51

    sget-object v0, Landroid/view/ChoreographerInjector;->mChoreographer:Landroid/view/Choreographer;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v1

    invoke-virtual {v0, v5, v1, v2}, Landroid/view/Choreographer;->doCallbacks(IJ)V

    const/4 v0, 0x0

    sput v0, Landroid/view/ChoreographerInjector;->insertFrameCounter:I

    return-void

    :cond_51
    add-int/2addr v4, v5

    sput v4, Landroid/view/ChoreographerInjector;->insertFrameCounter:I

    :cond_54
    :goto_54
    return-void
.end method
