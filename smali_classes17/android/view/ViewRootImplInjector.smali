.class public Landroid/view/ViewRootImplInjector;
.super Ljava/lang/Object;
.source "ViewRootImplInjector.java"


# static fields
.field private static final AMOTION_EVENT_FLAG_DEBUGINPUT_DETAIL:I = 0x400000

.field private static final AMOTION_EVENT_FLAG_DEBUGINPUT_MAJAR:I = 0x200000

.field private static final DEBUG_INPUT_DETAIL:I = 0x2

.field private static final DEBUG_INPUT_MAJAR:I = 0x1

.field private static final DEBUG_INPUT_NO:I = 0x0

.field private static final LOG_MAX_REPEAT_COUNT:I = 0x5

.field private static final PACKAGE_ALLOW_DRAW_IF_ANIMATING:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final PACKAGE_NAME_HOME:Ljava/lang/String; = "com.miui.home"

.field private static final PACKAGE_NAME_SYSTEMUI:Ljava/lang/String; = "com.android.systemui"

.field private static final TAG:Ljava/lang/String; = "ViewRootImpl"

.field private static final TAG_INPUT:Ljava/lang/String; = "MIUIInput"

.field private static mDebugInput:I

.field private static mMoveCount:I

.field static sLauncher:Landroid/content/ComponentName;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    new-instance v0, Landroid/view/ViewRootImplInjector$1;

    invoke-direct {v0}, Landroid/view/ViewRootImplInjector$1;-><init>()V

    sput-object v0, Landroid/view/ViewRootImplInjector;->PACKAGE_ALLOW_DRAW_IF_ANIMATING:Ljava/util/Set;

    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.miui.home"

    const-string v2, "com.miui.home.launcher.Launcher"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Landroid/view/ViewRootImplInjector;->sLauncher:Landroid/content/ComponentName;

    const/4 v0, 0x0

    sput v0, Landroid/view/ViewRootImplInjector;->mDebugInput:I

    sput v0, Landroid/view/ViewRootImplInjector;->mMoveCount:I

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static allowDrawIfAnimating(Ljava/lang/String;)Z
    .registers 2

    sget-object v0, Landroid/view/ViewRootImplInjector;->PACKAGE_ALLOW_DRAW_IF_ANIMATING:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static checkForThreeGesture(Landroid/view/MotionEvent;)V
    .registers 1

    return-void
.end method

.method private static checkTouchInputLevel(I)V
    .registers 2

    const/high16 v0, 0x200000

    and-int/2addr v0, p0

    if-eqz v0, :cond_9

    const/4 v0, 0x1

    sput v0, Landroid/view/ViewRootImplInjector;->mDebugInput:I

    goto :goto_15

    :cond_9
    const/high16 v0, 0x400000

    and-int/2addr v0, p0

    if-eqz v0, :cond_12

    const/4 v0, 0x2

    sput v0, Landroid/view/ViewRootImplInjector;->mDebugInput:I

    goto :goto_15

    :cond_12
    const/4 v0, 0x0

    sput v0, Landroid/view/ViewRootImplInjector;->mDebugInput:I

    :goto_15
    return-void
.end method

.method private static elementToString(Ljava/lang/StackTraceElement;)Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x50

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {p0}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x2e

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private static getMotionStr(Landroid/view/MotionEvent;)Ljava/lang/String;
    .registers 6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "{ action="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    invoke-static {v1}, Landroid/view/MotionEvent;->actionToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v1

    const/4 v2, 0x0

    :goto_1b
    if-ge v2, v1, :cond_40

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ", id["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "]="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_1b

    :cond_40
    const-string v2, ", pointerCount="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", eventTime="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", downTime="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " }"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method static logOnInputEvent(Landroid/view/InputEvent;)V
    .registers 10

    instance-of v0, p0, Landroid/view/KeyEvent;

    const/4 v1, 0x0

    const/4 v2, 0x5

    const/4 v3, 0x2

    const-string v4, "MIUIInput"

    const/4 v5, 0x1

    if-eqz v0, :cond_6c

    move-object v0, p0

    check-cast v0, Landroid/view/KeyEvent;

    invoke-virtual {v0}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v6

    const/16 v7, 0x19

    const-string v8, "[KeyEvent] ViewRootImpl "

    if-eq v6, v7, :cond_4f

    const/16 v7, 0x18

    if-eq v6, v7, :cond_4f

    const/4 v7, 0x4

    if-eq v6, v7, :cond_4f

    const/16 v7, 0x42

    if-ne v6, v7, :cond_23

    goto :goto_4f

    :cond_23
    sget v2, Landroid/view/ViewRootImplInjector;->mDebugInput:I

    if-eq v2, v5, :cond_29

    if-ne v2, v3, :cond_d3

    :cond_29
    invoke-virtual {v0}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_30

    move v1, v5

    :cond_30
    const/16 v2, 0x1a

    if-eq v6, v2, :cond_37

    const/4 v2, 0x3

    if-ne v6, v2, :cond_d3

    :cond_37
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_d3

    :cond_4f
    :goto_4f
    invoke-virtual {v0}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v1

    if-gt v1, v2, :cond_d3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_d3

    :cond_6c
    instance-of v0, p0, Landroid/view/MotionEvent;

    if-eqz v0, :cond_d3

    move-object v0, p0

    check-cast v0, Landroid/view/MotionEvent;

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getFlags()I

    move-result v6

    invoke-static {v6}, Landroid/view/ViewRootImplInjector;->checkTouchInputLevel(I)V

    sget v6, Landroid/view/ViewRootImplInjector;->mDebugInput:I

    const-string v7, "[MotionEvent] ViewRootImpl "

    if-ne v6, v5, :cond_b9

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v6

    if-ne v6, v3, :cond_8b

    sget v3, Landroid/view/ViewRootImplInjector;->mMoveCount:I

    add-int/2addr v3, v5

    sput v3, Landroid/view/ViewRootImplInjector;->mMoveCount:I

    :cond_8b
    if-eqz v6, :cond_94

    if-eq v6, v5, :cond_94

    if-eq v6, v2, :cond_94

    const/4 v2, 0x6

    if-ne v6, v2, :cond_d2

    :cond_94
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Landroid/view/ViewRootImplInjector;->getMotionStr(Landroid/view/MotionEvent;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " moveCount:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v3, Landroid/view/ViewRootImplInjector;->mMoveCount:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-ne v6, v5, :cond_d2

    sput v1, Landroid/view/ViewRootImplInjector;->mMoveCount:I

    goto :goto_d2

    :cond_b9
    if-ne v6, v3, :cond_d2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_d4

    :cond_d2
    :goto_d2
    goto :goto_d4

    :cond_d3
    :goto_d3
    nop

    :goto_d4
    return-void
.end method

.method static needUpdateWindowState(Landroid/view/ViewRootImpl;Z)Z
    .registers 10

    const/4 v0, 0x1

    if-eqz p0, :cond_46

    if-nez p1, :cond_6

    goto :goto_46

    :cond_6
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mContext:Landroid/content/Context;

    if-nez v1, :cond_b

    return v0

    :cond_b
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Landroid/view/ViewRootImplInjector;->sLauncher:Landroid/content/ComponentName;

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_45

    const-string v3, "activity"

    invoke-virtual {v1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager;

    :try_start_23
    invoke-virtual {v3, v0}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v4

    const/4 v5, 0x0

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v4, v4, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    if-eqz v4, :cond_43

    sget-object v6, Landroid/view/ViewRootImplInjector;->sLauncher:Landroid/content/ComponentName;

    invoke-virtual {v6}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6
    :try_end_40
    .catch Ljava/lang/Exception; {:try_start_23 .. :try_end_40} :catch_44

    if-eqz v6, :cond_43

    return v5

    :cond_43
    goto :goto_45

    :catch_44
    move-exception v4

    :cond_45
    :goto_45
    return v0

    :cond_46
    :goto_46
    return v0
.end method

.method public static transformWindowType(Landroid/view/View;Landroid/view/WindowManager$LayoutParams;)V
    .registers 7

    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-nez v0, :cond_6a

    invoke-static {}, Landroid/miui/AppOpsUtils;->isXOptMode()Z

    move-result v0

    if-eqz v0, :cond_b

    goto :goto_6a

    :cond_b
    iget v0, p1, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v1, 0x7d5

    if-ne v0, v1, :cond_69

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "android.view.ViewRootImplInjector.transformWindowType"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "android.view.ViewRootImpl.setView"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "android.view.WindowManagerGlobal.addView"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "android.view.WindowManagerImpl.addView"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "android.widget.Toast$TN.handleShow"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :try_start_2f
    new-instance v1, Ljava/lang/Exception;

    invoke-direct {v1}, Ljava/lang/Exception;-><init>()V

    invoke-virtual {v1}, Ljava/lang/Exception;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v1

    array-length v2, v1

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-le v2, v3, :cond_60

    const/4 v2, 0x0

    :goto_40
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_60

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    aget-object v4, v1, v2

    invoke-static {v4}, Landroid/view/ViewRootImplInjector;->elementToString(Ljava/lang/StackTraceElement;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5d

    const/16 v3, 0x7d3

    iput v3, p1, Landroid/view/WindowManager$LayoutParams;->type:I
    :try_end_5c
    .catch Ljava/lang/Exception; {:try_start_2f .. :try_end_5c} :catch_61

    return-void

    :cond_5d
    add-int/lit8 v2, v2, 0x1

    goto :goto_40

    :cond_60
    goto :goto_69

    :catch_61
    move-exception v1

    const-string v2, "ViewRootImpl"

    const-string v3, " transformWindowTye error "

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_69
    :goto_69
    return-void

    :cond_6a
    :goto_6a
    return-void
.end method
