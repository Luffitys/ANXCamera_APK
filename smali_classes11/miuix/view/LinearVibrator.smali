.class Lmiuix/view/LinearVibrator;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lmiuix/view/HapticFeedbackProvider;


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "LinearVibrator"


# instance fields
.field private final mIds:Landroidx/collection/SparseArrayCompat;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lmiuix/view/LinearVibrator;->initialize()V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroidx/collection/SparseArrayCompat;

    invoke-direct {v0}, Landroidx/collection/SparseArrayCompat;-><init>()V

    iput-object v0, p0, Lmiuix/view/LinearVibrator;->mIds:Landroidx/collection/SparseArrayCompat;

    invoke-direct {p0}, Lmiuix/view/LinearVibrator;->buildIds()V

    return-void
.end method

.method private buildIds()V
    .locals 3

    iget-object v0, p0, Lmiuix/view/LinearVibrator;->mIds:Landroidx/collection/SparseArrayCompat;

    sget v1, Lmiuix/view/HapticFeedbackConstants;->MIUI_TAP_NORMAL:I

    const/high16 v2, 0x10000000

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroidx/collection/SparseArrayCompat;->append(ILjava/lang/Object;)V

    iget-object v0, p0, Lmiuix/view/LinearVibrator;->mIds:Landroidx/collection/SparseArrayCompat;

    sget v1, Lmiuix/view/HapticFeedbackConstants;->MIUI_TAP_LIGHT:I

    const v2, 0x10000001

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroidx/collection/SparseArrayCompat;->append(ILjava/lang/Object;)V

    iget-object v0, p0, Lmiuix/view/LinearVibrator;->mIds:Landroidx/collection/SparseArrayCompat;

    sget v1, Lmiuix/view/HapticFeedbackConstants;->MIUI_FLICK:I

    const v2, 0x10000002

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroidx/collection/SparseArrayCompat;->append(ILjava/lang/Object;)V

    iget-object v0, p0, Lmiuix/view/LinearVibrator;->mIds:Landroidx/collection/SparseArrayCompat;

    sget v1, Lmiuix/view/HapticFeedbackConstants;->MIUI_SWITCH:I

    const v2, 0x10000003

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroidx/collection/SparseArrayCompat;->append(ILjava/lang/Object;)V

    iget-object v0, p0, Lmiuix/view/LinearVibrator;->mIds:Landroidx/collection/SparseArrayCompat;

    sget v1, Lmiuix/view/HapticFeedbackConstants;->MIUI_MESH_HEAVY:I

    const v2, 0x10000004

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroidx/collection/SparseArrayCompat;->append(ILjava/lang/Object;)V

    iget-object v0, p0, Lmiuix/view/LinearVibrator;->mIds:Landroidx/collection/SparseArrayCompat;

    sget v1, Lmiuix/view/HapticFeedbackConstants;->MIUI_MESH_NORMAL:I

    const v2, 0x10000005

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroidx/collection/SparseArrayCompat;->append(ILjava/lang/Object;)V

    iget-object v0, p0, Lmiuix/view/LinearVibrator;->mIds:Landroidx/collection/SparseArrayCompat;

    sget v1, Lmiuix/view/HapticFeedbackConstants;->MIUI_MESH_LIGHT:I

    const v2, 0x10000006

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroidx/collection/SparseArrayCompat;->append(ILjava/lang/Object;)V

    iget-object v0, p0, Lmiuix/view/LinearVibrator;->mIds:Landroidx/collection/SparseArrayCompat;

    sget v1, Lmiuix/view/HapticFeedbackConstants;->MIUI_LONG_PRESS:I

    const v2, 0x10000007

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroidx/collection/SparseArrayCompat;->append(ILjava/lang/Object;)V

    iget-object v0, p0, Lmiuix/view/LinearVibrator;->mIds:Landroidx/collection/SparseArrayCompat;

    sget v1, Lmiuix/view/HapticFeedbackConstants;->MIUI_POPUP_NORMAL:I

    const v2, 0x10000008

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroidx/collection/SparseArrayCompat;->append(ILjava/lang/Object;)V

    iget-object v0, p0, Lmiuix/view/LinearVibrator;->mIds:Landroidx/collection/SparseArrayCompat;

    sget v1, Lmiuix/view/HapticFeedbackConstants;->MIUI_POPUP_LIGHT:I

    const v2, 0x10000009

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroidx/collection/SparseArrayCompat;->append(ILjava/lang/Object;)V

    sget v0, Lmiuix/view/PlatformConstants;->VERSION:I

    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lmiuix/view/LinearVibrator;->mIds:Landroidx/collection/SparseArrayCompat;

    sget v1, Lmiuix/view/HapticFeedbackConstants;->MIUI_PICK_UP:I

    const v2, 0x1000000a

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroidx/collection/SparseArrayCompat;->append(ILjava/lang/Object;)V

    iget-object v0, p0, Lmiuix/view/LinearVibrator;->mIds:Landroidx/collection/SparseArrayCompat;

    sget v1, Lmiuix/view/HapticFeedbackConstants;->MIUI_SCROLL_EDGE:I

    const v2, 0x1000000b

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroidx/collection/SparseArrayCompat;->append(ILjava/lang/Object;)V

    iget-object v0, p0, Lmiuix/view/LinearVibrator;->mIds:Landroidx/collection/SparseArrayCompat;

    sget v1, Lmiuix/view/HapticFeedbackConstants;->MIUI_TRIGGER_DRAWER:I

    const v2, 0x1000000c

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroidx/collection/SparseArrayCompat;->append(ILjava/lang/Object;)V

    sget v0, Lmiuix/view/PlatformConstants;->VERSION:I

    const/4 v1, 0x3

    if-ge v0, v1, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lmiuix/view/LinearVibrator;->mIds:Landroidx/collection/SparseArrayCompat;

    sget v1, Lmiuix/view/HapticFeedbackConstants;->MIUI_FLICK_LIGHT:I

    const v2, 0x1000000d

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroidx/collection/SparseArrayCompat;->append(ILjava/lang/Object;)V

    sget v0, Lmiuix/view/PlatformConstants;->VERSION:I

    const/4 v1, 0x4

    if-ge v0, v1, :cond_2

    return-void

    :cond_2
    iget-object p0, p0, Lmiuix/view/LinearVibrator;->mIds:Landroidx/collection/SparseArrayCompat;

    sget v0, Lmiuix/view/HapticFeedbackConstants;->MIUI_HOLD:I

    const v1, 0x1000000e

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroidx/collection/SparseArrayCompat;->append(ILjava/lang/Object;)V

    return-void
.end method

.method private static initialize()V
    .locals 3

    sget v0, Lmiuix/view/PlatformConstants;->VERSION:I

    const-string v1, "LinearVibrator"

    const/4 v2, 0x1

    if-ge v0, v2, :cond_0

    const-string v0, "MiuiHapticFeedbackConstants not found or not compatible for LinearVibrator."

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    :try_start_0
    invoke-static {}, Lmiui/util/HapticFeedbackUtil;->isSupportLinearMotorVibrate()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    const-string v2, "MIUI Haptic Implementation is not available"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    const-string v0, "linear motor is not supported in this platform."

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    new-instance v0, Lmiuix/view/LinearVibrator;

    invoke-direct {v0}, Lmiuix/view/LinearVibrator;-><init>()V

    invoke-static {v0}, Lmiuix/view/HapticCompat;->registerProvider(Lmiuix/view/HapticFeedbackProvider;)V

    const-string v0, "setup LinearVibrator success."

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method obtainFeedBack(I)I
    .locals 1

    iget-object v0, p0, Lmiuix/view/LinearVibrator;->mIds:Landroidx/collection/SparseArrayCompat;

    invoke-virtual {v0, p1}, Landroidx/collection/SparseArrayCompat;->indexOfKey(I)I

    move-result p1

    if-ltz p1, :cond_0

    iget-object p0, p0, Lmiuix/view/LinearVibrator;->mIds:Landroidx/collection/SparseArrayCompat;

    invoke-virtual {p0, p1}, Landroidx/collection/SparseArrayCompat;->valueAt(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0

    :cond_0
    const/4 p0, -0x1

    return p0
.end method

.method public performHapticFeedback(Landroid/view/View;I)Z
    .locals 5

    iget-object v0, p0, Lmiuix/view/LinearVibrator;->mIds:Landroidx/collection/SparseArrayCompat;

    invoke-virtual {v0, p2}, Landroidx/collection/SparseArrayCompat;->indexOfKey(I)I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    const-string v3, "LinearVibrator"

    const/4 v4, 0x0

    if-gez v0, :cond_0

    const/4 p0, 0x3

    new-array p0, p0, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, p0, v4

    invoke-static {p2}, Lmiuix/view/HapticFeedbackConstants;->nameOf(I)Ljava/lang/String;

    move-result-object p1

    aput-object p1, p0, v2

    sget p1, Lmiuix/view/PlatformConstants;->VERSION:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, p0, v1

    const-string p1, "feedback(0x%08x-%s) is not found in current platform(v%d)"

    invoke-static {p1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    :goto_0
    invoke-static {v3, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v4

    :cond_0
    iget-object p0, p0, Lmiuix/view/LinearVibrator;->mIds:Landroidx/collection/SparseArrayCompat;

    invoke-virtual {p0, v0}, Landroidx/collection/SparseArrayCompat;->valueAt(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-static {p0}, Lmiui/util/HapticFeedbackUtil;->isSupportLinearMotorVibrate(I)Z

    move-result p2

    if-nez p2, :cond_1

    new-array p1, v1, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, p1, v4

    sget p0, Lmiuix/view/PlatformConstants;->VERSION:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, p1, v2

    const-string p0, "unsupported feedback: 0x%08x. platform version: %d"

    invoke-static {p0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_1
    invoke-virtual {p1, p0}, Landroid/view/View;->performHapticFeedback(I)Z

    move-result p0

    return p0
.end method

.method public supportLinearMotor(I)Z
    .locals 5

    iget-object v0, p0, Lmiuix/view/LinearVibrator;->mIds:Landroidx/collection/SparseArrayCompat;

    invoke-virtual {v0, p1}, Landroidx/collection/SparseArrayCompat;->indexOfKey(I)I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    const-string v3, "LinearVibrator"

    const/4 v4, 0x0

    if-gez v0, :cond_0

    const/4 p0, 0x3

    new-array p0, p0, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, p0, v4

    invoke-static {p1}, Lmiuix/view/HapticFeedbackConstants;->nameOf(I)Ljava/lang/String;

    move-result-object p1

    aput-object p1, p0, v2

    sget p1, Lmiuix/view/PlatformConstants;->VERSION:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, p0, v1

    const-string p1, "feedback(0x%08x-%s) is not found in current platform(v%d)"

    invoke-static {p1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    :goto_0
    invoke-static {v3, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v4

    :cond_0
    iget-object p0, p0, Lmiuix/view/LinearVibrator;->mIds:Landroidx/collection/SparseArrayCompat;

    invoke-virtual {p0, v0}, Landroidx/collection/SparseArrayCompat;->valueAt(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-static {p0}, Lmiui/util/HapticFeedbackUtil;->isSupportLinearMotorVibrate(I)Z

    move-result p1

    if-nez p1, :cond_1

    new-array p1, v1, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, p1, v4

    sget p0, Lmiuix/view/PlatformConstants;->VERSION:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, p1, v2

    const-string p0, "unsupported feedback: 0x%08x. platform version: %d"

    invoke-static {p0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_1
    invoke-static {p0}, Lmiui/util/HapticFeedbackUtil;->isSupportLinearMotorVibrate(I)Z

    move-result p0

    return p0
.end method
