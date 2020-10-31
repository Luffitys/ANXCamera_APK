.class public Landroid/util/MiuiFreeformUtil;
.super Ljava/lang/Object;
.source "MiuiFreeformUtil.java"


# static fields
.field public static PC_ENABLED:Z = false

.field public static final SERVICE_PC_NAME:Ljava/lang/String; = "pc_mode_service"

.field public static final TAG:Ljava/lang/String; = "MiuiFreeformUtil"

.field public static final WINDOWING_MODE_FREEFORM:I = 0x5

.field public static final WINDOWING_MODE_FREEFORM_PC:I = 0x64

.field public static mPcModeType:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const/4 v0, 0x0

    sput-boolean v0, Landroid/util/MiuiFreeformUtil;->PC_ENABLED:Z

    sput v0, Landroid/util/MiuiFreeformUtil;->mPcModeType:I

    const-string/jumbo v1, "persist.sys.miui.pcmode"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    sput v1, Landroid/util/MiuiFreeformUtil;->mPcModeType:I

    if-lez v1, :cond_11

    const/4 v0, 0x1

    :cond_11
    sput-boolean v0, Landroid/util/MiuiFreeformUtil;->PC_ENABLED:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getPcModeType()I
    .registers 1

    sget v0, Landroid/util/MiuiFreeformUtil;->mPcModeType:I

    return v0
.end method

.method public static isMiuiFreeformMode(I)Z
    .registers 2

    const/16 v0, 0x64

    if-ne p0, v0, :cond_6

    const/4 v0, 0x1

    return v0

    :cond_6
    const/4 v0, 0x0

    return v0
.end method

.method public static isPcMode(I)Z
    .registers 2

    const/16 v0, 0x64

    if-ne p0, v0, :cond_6

    const/4 v0, 0x1

    return v0

    :cond_6
    const/4 v0, 0x0

    return v0
.end method

.method public static isSmallWinMode(I)Z
    .registers 2

    const/4 v0, 0x5

    if-ne p0, v0, :cond_5

    const/4 v0, 0x1

    return v0

    :cond_5
    const/4 v0, 0x0

    return v0
.end method
