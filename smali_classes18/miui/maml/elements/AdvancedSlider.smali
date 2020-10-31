.class public Lmiui/maml/elements/AdvancedSlider;
.super Lmiui/maml/elements/ElementGroup;
.source "AdvancedSlider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/maml/elements/AdvancedSlider$CheckTouchResult;,
        Lmiui/maml/elements/AdvancedSlider$EndPoint;,
        Lmiui/maml/elements/AdvancedSlider$LaunchAction;,
        Lmiui/maml/elements/AdvancedSlider$Position;,
        Lmiui/maml/elements/AdvancedSlider$StartPoint;,
        Lmiui/maml/elements/AdvancedSlider$SliderPoint;,
        Lmiui/maml/elements/AdvancedSlider$State;,
        Lmiui/maml/elements/AdvancedSlider$InterpolatorController;,
        Lmiui/maml/elements/AdvancedSlider$SpeedAccController;,
        Lmiui/maml/elements/AdvancedSlider$ReboundAnimationController;,
        Lmiui/maml/elements/AdvancedSlider$OnLaunchListener;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final DEFAULT_DRAG_TOLERANCE:I = 0x96

.field private static final FREE_ENDPOINT_DIST:F = 1.7014117E38f

.field private static final LOG_TAG:Ljava/lang/String; = "LockScreen_AdvancedSlider"

.field public static final MOVE_DIST:Ljava/lang/String; = "move_dist"

.field public static final MOVE_X:Ljava/lang/String; = "move_x"

.field public static final MOVE_Y:Ljava/lang/String; = "move_y"

.field private static final NONE_ENDPOINT_DIST:F = 3.4028235E38f

.field public static final SLIDER_STATE_NORMAL:I = 0x0

.field public static final SLIDER_STATE_PRESSED:I = 0x1

.field public static final SLIDER_STATE_REACHED:I = 0x2

.field public static final STATE:Ljava/lang/String; = "state"

.field public static final TAG_NAME:Ljava/lang/String; = "Slider"


# instance fields
.field private mCurrentEndPoint:Lmiui/maml/elements/AdvancedSlider$EndPoint;

.field private mEndPoints:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lmiui/maml/elements/AdvancedSlider$EndPoint;",
            ">;"
        }
    .end annotation
.end field

.field protected mIsHaptic:Z

.field private mIsKeepStatusAfterLaunch:Z

.field private mMoveDistVar:Lmiui/maml/data/IndexedVariable;

.field private mMoveXVar:Lmiui/maml/data/IndexedVariable;

.field private mMoveYVar:Lmiui/maml/data/IndexedVariable;

.field private mMoving:Z

.field private mOnLaunchListener:Lmiui/maml/elements/AdvancedSlider$OnLaunchListener;

.field private mReboundAnimationController:Lmiui/maml/elements/AdvancedSlider$ReboundAnimationController;

.field private mStartPoint:Lmiui/maml/elements/AdvancedSlider$StartPoint;

.field private mStartPointPressed:Z

.field private mStateVar:Lmiui/maml/data/IndexedVariable;

.field private mTouchOffsetX:F

.field private mTouchOffsetY:F


# direct methods
.method public constructor <init>(Lorg/w3c/dom/Element;Lmiui/maml/ScreenElementRoot;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lmiui/maml/elements/ElementGroup;-><init>(Lorg/w3c/dom/Element;Lmiui/maml/ScreenElementRoot;)V

    invoke-direct {p0, p1}, Lmiui/maml/elements/AdvancedSlider;->load(Lorg/w3c/dom/Element;)V

    return-void
.end method

.method static synthetic access$000(Lmiui/maml/elements/AdvancedSlider;)Lmiui/maml/elements/AdvancedSlider$StartPoint;
    .registers 2

    iget-object v0, p0, Lmiui/maml/elements/AdvancedSlider;->mStartPoint:Lmiui/maml/elements/AdvancedSlider$StartPoint;

    return-object v0
.end method

.method static synthetic access$200(Lmiui/maml/elements/AdvancedSlider;)V
    .registers 1

    invoke-direct {p0}, Lmiui/maml/elements/AdvancedSlider;->cancelMoving()V

    return-void
.end method

.method static synthetic access$300(Lmiui/maml/elements/AdvancedSlider;FF)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lmiui/maml/elements/AdvancedSlider;->moveStartPoint(FF)V

    return-void
.end method

.method static synthetic access$500(Lmiui/maml/elements/AdvancedSlider;)Z
    .registers 2

    iget-boolean v0, p0, Lmiui/maml/elements/AdvancedSlider;->mStartPointPressed:Z

    return v0
.end method

.method static synthetic access$600(Lmiui/maml/elements/AdvancedSlider;)F
    .registers 2

    iget v0, p0, Lmiui/maml/elements/AdvancedSlider;->mTouchOffsetX:F

    return v0
.end method

.method static synthetic access$700(Lmiui/maml/elements/AdvancedSlider;)F
    .registers 2

    iget v0, p0, Lmiui/maml/elements/AdvancedSlider;->mTouchOffsetY:F

    return v0
.end method

.method private cancelMoving()V
    .registers 1

    invoke-virtual {p0}, Lmiui/maml/elements/AdvancedSlider;->resetInner()V

    invoke-virtual {p0}, Lmiui/maml/elements/AdvancedSlider;->onCancel()V

    return-void
.end method

.method private checkEndPoint(Lmiui/maml/util/Utils$Point;Lmiui/maml/elements/AdvancedSlider$EndPoint;)Z
    .registers 7

    const/4 v0, 0x0

    iget-wide v1, p1, Lmiui/maml/util/Utils$Point;->x:D

    double-to-float v1, v1

    iget-wide v2, p1, Lmiui/maml/util/Utils$Point;->y:D

    double-to-float v2, v2

    const/4 v3, 0x0

    invoke-virtual {p2, v1, v2, v3}, Lmiui/maml/elements/AdvancedSlider$EndPoint;->touched(FFZ)Z

    move-result v1

    if-eqz v1, :cond_3c

    invoke-virtual {p2}, Lmiui/maml/elements/AdvancedSlider$EndPoint;->getState()Lmiui/maml/elements/AdvancedSlider$State;

    move-result-object v1

    sget-object v2, Lmiui/maml/elements/AdvancedSlider$State;->Reached:Lmiui/maml/elements/AdvancedSlider$State;

    if-eq v1, v2, :cond_3a

    sget-object v1, Lmiui/maml/elements/AdvancedSlider$State;->Reached:Lmiui/maml/elements/AdvancedSlider$State;

    invoke-virtual {p2, v1}, Lmiui/maml/elements/AdvancedSlider$EndPoint;->setState(Lmiui/maml/elements/AdvancedSlider$State;)V

    iget-object v1, p0, Lmiui/maml/elements/AdvancedSlider;->mEndPoints:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_21
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_35

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmiui/maml/elements/AdvancedSlider$EndPoint;

    if-eq v2, p2, :cond_34

    sget-object v3, Lmiui/maml/elements/AdvancedSlider$State;->Pressed:Lmiui/maml/elements/AdvancedSlider$State;

    invoke-virtual {v2, v3}, Lmiui/maml/elements/AdvancedSlider$EndPoint;->setState(Lmiui/maml/elements/AdvancedSlider$State;)V

    :cond_34
    goto :goto_21

    :cond_35
    iget-object v1, p2, Lmiui/maml/elements/AdvancedSlider$EndPoint;->mName:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lmiui/maml/elements/AdvancedSlider;->onReach(Ljava/lang/String;)V

    :cond_3a
    const/4 v0, 0x1

    goto :goto_41

    :cond_3c
    sget-object v1, Lmiui/maml/elements/AdvancedSlider$State;->Pressed:Lmiui/maml/elements/AdvancedSlider$State;

    invoke-virtual {p2, v1}, Lmiui/maml/elements/AdvancedSlider$EndPoint;->setState(Lmiui/maml/elements/AdvancedSlider$State;)V

    :goto_41
    return v0
.end method

.method private checkTouch(FF)Lmiui/maml/elements/AdvancedSlider$CheckTouchResult;
    .registers 12

    const v0, 0x7f7fffff    # Float.MAX_VALUE

    const/4 v1, 0x0

    new-instance v2, Lmiui/maml/elements/AdvancedSlider$CheckTouchResult;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lmiui/maml/elements/AdvancedSlider$CheckTouchResult;-><init>(Lmiui/maml/elements/AdvancedSlider;Lmiui/maml/elements/AdvancedSlider$1;)V

    iget-object v4, p0, Lmiui/maml/elements/AdvancedSlider;->mEndPoints:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_10
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2d

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lmiui/maml/elements/AdvancedSlider$EndPoint;

    # invokes: Lmiui/maml/elements/AdvancedSlider$EndPoint;->getNearestPoint(FF)Lmiui/maml/util/Utils$Point;
    invoke-static {v5, p1, p2}, Lmiui/maml/elements/AdvancedSlider$EndPoint;->access$1000(Lmiui/maml/elements/AdvancedSlider$EndPoint;FF)Lmiui/maml/util/Utils$Point;

    move-result-object v6

    invoke-virtual {v5, v6, p1, p2}, Lmiui/maml/elements/AdvancedSlider$EndPoint;->getTransformedDist(Lmiui/maml/util/Utils$Point;FF)F

    move-result v7

    cmpg-float v8, v7, v0

    if-gez v8, :cond_2c

    move v0, v7

    move-object v1, v6

    iput-object v5, v2, Lmiui/maml/elements/AdvancedSlider$CheckTouchResult;->endPoint:Lmiui/maml/elements/AdvancedSlider$EndPoint;

    :cond_2c
    goto :goto_10

    :cond_2d
    const/4 v4, 0x0

    const v5, 0x7f7fffff    # Float.MAX_VALUE

    cmpg-float v5, v0, v5

    if-gez v5, :cond_92

    iget-wide v5, v1, Lmiui/maml/util/Utils$Point;->x:D

    double-to-float v3, v5

    iget-wide v5, v1, Lmiui/maml/util/Utils$Point;->y:D

    double-to-float v5, v5

    invoke-direct {p0, v3, v5}, Lmiui/maml/elements/AdvancedSlider;->moveStartPoint(FF)V

    const v3, 0x7effffff

    cmpg-float v3, v0, v3

    if-gez v3, :cond_4c

    iget-object v3, v2, Lmiui/maml/elements/AdvancedSlider$CheckTouchResult;->endPoint:Lmiui/maml/elements/AdvancedSlider$EndPoint;

    invoke-direct {p0, v1, v3}, Lmiui/maml/elements/AdvancedSlider;->checkEndPoint(Lmiui/maml/util/Utils$Point;Lmiui/maml/elements/AdvancedSlider$EndPoint;)Z

    move-result v3

    goto :goto_73

    :cond_4c
    iget-object v3, p0, Lmiui/maml/elements/AdvancedSlider;->mEndPoints:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_52
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_71

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lmiui/maml/elements/AdvancedSlider$EndPoint;

    # getter for: Lmiui/maml/elements/AdvancedSlider$EndPoint;->mPath:Ljava/util/ArrayList;
    invoke-static {v5}, Lmiui/maml/elements/AdvancedSlider$EndPoint;->access$100(Lmiui/maml/elements/AdvancedSlider$EndPoint;)Ljava/util/ArrayList;

    move-result-object v6

    if-eqz v6, :cond_65

    goto :goto_52

    :cond_65
    invoke-direct {p0, v1, v5}, Lmiui/maml/elements/AdvancedSlider;->checkEndPoint(Lmiui/maml/util/Utils$Point;Lmiui/maml/elements/AdvancedSlider$EndPoint;)Z

    move-result v6

    move v4, v6

    if-eqz v6, :cond_70

    iput-object v5, v2, Lmiui/maml/elements/AdvancedSlider$CheckTouchResult;->endPoint:Lmiui/maml/elements/AdvancedSlider$EndPoint;

    move v3, v4

    goto :goto_72

    :cond_70
    goto :goto_52

    :cond_71
    move v3, v4

    :goto_72
    nop

    :goto_73
    iget-object v4, p0, Lmiui/maml/elements/AdvancedSlider;->mStartPoint:Lmiui/maml/elements/AdvancedSlider$StartPoint;

    if-eqz v3, :cond_7a

    sget-object v5, Lmiui/maml/elements/AdvancedSlider$State;->Reached:Lmiui/maml/elements/AdvancedSlider$State;

    goto :goto_7c

    :cond_7a
    sget-object v5, Lmiui/maml/elements/AdvancedSlider$State;->Pressed:Lmiui/maml/elements/AdvancedSlider$State;

    :goto_7c
    invoke-virtual {v4, v5}, Lmiui/maml/elements/AdvancedSlider$StartPoint;->setState(Lmiui/maml/elements/AdvancedSlider$State;)V

    iget-boolean v4, p0, Lmiui/maml/elements/AdvancedSlider;->mHasName:Z

    if-eqz v4, :cond_8f

    iget-object v4, p0, Lmiui/maml/elements/AdvancedSlider;->mStateVar:Lmiui/maml/data/IndexedVariable;

    if-eqz v3, :cond_8a

    const-wide/high16 v5, 0x4000000000000000L    # 2.0

    goto :goto_8c

    :cond_8a
    const-wide/high16 v5, 0x3ff0000000000000L    # 1.0

    :goto_8c
    invoke-virtual {v4, v5, v6}, Lmiui/maml/data/IndexedVariable;->set(D)V

    :cond_8f
    iput-boolean v3, v2, Lmiui/maml/elements/AdvancedSlider$CheckTouchResult;->reached:Z

    return-object v2

    :cond_92
    const-string v5, "LockScreen_AdvancedSlider"

    const-string v6, "unlock touch canceled due to exceeding tollerance"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Lmiui/maml/elements/AdvancedSlider;->mStartPoint:Lmiui/maml/elements/AdvancedSlider$StartPoint;

    const-string v6, "cancel"

    invoke-virtual {v5, v6}, Lmiui/maml/elements/AdvancedSlider$StartPoint;->performAction(Ljava/lang/String;)V

    return-object v3
.end method

.method private doLaunch(Lmiui/maml/elements/AdvancedSlider$EndPoint;)Z
    .registers 4

    iget-object v0, p0, Lmiui/maml/elements/AdvancedSlider;->mStartPoint:Lmiui/maml/elements/AdvancedSlider$StartPoint;

    const-string v1, "launch"

    invoke-virtual {v0, v1}, Lmiui/maml/elements/AdvancedSlider$StartPoint;->performAction(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Lmiui/maml/elements/AdvancedSlider$EndPoint;->performAction(Ljava/lang/String;)V

    const/4 v0, 0x0

    iget-object v1, p1, Lmiui/maml/elements/AdvancedSlider$EndPoint;->mAction:Lmiui/maml/elements/AdvancedSlider$LaunchAction;

    if-eqz v1, :cond_15

    iget-object v1, p1, Lmiui/maml/elements/AdvancedSlider$EndPoint;->mAction:Lmiui/maml/elements/AdvancedSlider$LaunchAction;

    invoke-virtual {v1}, Lmiui/maml/elements/AdvancedSlider$LaunchAction;->perform()Landroid/content/Intent;

    move-result-object v0

    :cond_15
    iget-object v1, p1, Lmiui/maml/elements/AdvancedSlider$EndPoint;->mName:Ljava/lang/String;

    invoke-virtual {p0, v1, v0}, Lmiui/maml/elements/AdvancedSlider;->onLaunch(Ljava/lang/String;Landroid/content/Intent;)Z

    move-result v1

    return v1
.end method

.method private load(Lorg/w3c/dom/Element;)V
    .registers 7

    if-nez p1, :cond_3

    return-void

    :cond_3
    iget-boolean v0, p0, Lmiui/maml/elements/AdvancedSlider;->mHasName:Z

    if-eqz v0, :cond_8e

    new-instance v0, Lmiui/maml/data/IndexedVariable;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lmiui/maml/elements/AdvancedSlider;->mName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "state"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lmiui/maml/elements/AdvancedSlider;->getVariables()Lmiui/maml/data/Variables;

    move-result-object v3

    const/4 v4, 0x1

    invoke-direct {v0, v1, v3, v4}, Lmiui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lmiui/maml/data/Variables;Z)V

    iput-object v0, p0, Lmiui/maml/elements/AdvancedSlider;->mStateVar:Lmiui/maml/data/IndexedVariable;

    new-instance v0, Lmiui/maml/data/IndexedVariable;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lmiui/maml/elements/AdvancedSlider;->mName:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "move_x"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lmiui/maml/elements/AdvancedSlider;->getVariables()Lmiui/maml/data/Variables;

    move-result-object v3

    invoke-direct {v0, v1, v3, v4}, Lmiui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lmiui/maml/data/Variables;Z)V

    iput-object v0, p0, Lmiui/maml/elements/AdvancedSlider;->mMoveXVar:Lmiui/maml/data/IndexedVariable;

    new-instance v0, Lmiui/maml/data/IndexedVariable;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lmiui/maml/elements/AdvancedSlider;->mName:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "move_y"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lmiui/maml/elements/AdvancedSlider;->getVariables()Lmiui/maml/data/Variables;

    move-result-object v3

    invoke-direct {v0, v1, v3, v4}, Lmiui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lmiui/maml/data/Variables;Z)V

    iput-object v0, p0, Lmiui/maml/elements/AdvancedSlider;->mMoveYVar:Lmiui/maml/data/IndexedVariable;

    new-instance v0, Lmiui/maml/data/IndexedVariable;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lmiui/maml/elements/AdvancedSlider;->mName:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "move_dist"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lmiui/maml/elements/AdvancedSlider;->getVariables()Lmiui/maml/data/Variables;

    move-result-object v2

    invoke-direct {v0, v1, v2, v4}, Lmiui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lmiui/maml/data/Variables;Z)V

    iput-object v0, p0, Lmiui/maml/elements/AdvancedSlider;->mMoveDistVar:Lmiui/maml/data/IndexedVariable;

    :cond_8e
    iget-object v0, p0, Lmiui/maml/elements/AdvancedSlider;->mStartPoint:Lmiui/maml/elements/AdvancedSlider$StartPoint;

    if-eqz v0, :cond_9d

    iget-object v0, v0, Lmiui/maml/elements/AdvancedSlider$StartPoint;->mReboundController:Lmiui/maml/elements/AdvancedSlider$InterpolatorController;

    if-eqz v0, :cond_9d

    iget-object v0, p0, Lmiui/maml/elements/AdvancedSlider;->mStartPoint:Lmiui/maml/elements/AdvancedSlider$StartPoint;

    iget-object v0, v0, Lmiui/maml/elements/AdvancedSlider$StartPoint;->mReboundController:Lmiui/maml/elements/AdvancedSlider$InterpolatorController;

    iput-object v0, p0, Lmiui/maml/elements/AdvancedSlider;->mReboundAnimationController:Lmiui/maml/elements/AdvancedSlider$ReboundAnimationController;

    goto :goto_ab

    :cond_9d
    new-instance v0, Lmiui/maml/elements/AdvancedSlider$SpeedAccController;

    invoke-direct {v0, p0, p1}, Lmiui/maml/elements/AdvancedSlider$SpeedAccController;-><init>(Lmiui/maml/elements/AdvancedSlider;Lorg/w3c/dom/Element;)V

    iput-object v0, p0, Lmiui/maml/elements/AdvancedSlider;->mReboundAnimationController:Lmiui/maml/elements/AdvancedSlider$ReboundAnimationController;

    iget-object v0, p0, Lmiui/maml/elements/AdvancedSlider;->mRoot:Lmiui/maml/ScreenElementRoot;

    iget-object v1, p0, Lmiui/maml/elements/AdvancedSlider;->mReboundAnimationController:Lmiui/maml/elements/AdvancedSlider$ReboundAnimationController;

    invoke-virtual {v0, v1}, Lmiui/maml/ScreenElementRoot;->addPreTicker(Lmiui/maml/elements/ITicker;)V

    :goto_ab
    const-string v0, "haptic"

    invoke-virtual {p0, p1, v0}, Lmiui/maml/elements/AdvancedSlider;->getAttr(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lmiui/maml/elements/AdvancedSlider;->mIsHaptic:Z

    const-string v0, "keepStatusAfterLaunch"

    invoke-virtual {p0, p1, v0}, Lmiui/maml/elements/AdvancedSlider;->getAttr(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lmiui/maml/elements/AdvancedSlider;->mIsKeepStatusAfterLaunch:Z

    return-void
.end method

.method private moveStartPoint(FF)V
    .registers 11

    iget-object v0, p0, Lmiui/maml/elements/AdvancedSlider;->mStartPoint:Lmiui/maml/elements/AdvancedSlider$StartPoint;

    invoke-virtual {v0}, Lmiui/maml/elements/AdvancedSlider$StartPoint;->getAnchorX()F

    move-result v0

    sub-float/2addr p1, v0

    iget-object v0, p0, Lmiui/maml/elements/AdvancedSlider;->mStartPoint:Lmiui/maml/elements/AdvancedSlider$StartPoint;

    invoke-virtual {v0}, Lmiui/maml/elements/AdvancedSlider$StartPoint;->getAnchorY()F

    move-result v0

    sub-float/2addr p2, v0

    iget-object v0, p0, Lmiui/maml/elements/AdvancedSlider;->mStartPoint:Lmiui/maml/elements/AdvancedSlider$StartPoint;

    invoke-virtual {v0, p1, p2}, Lmiui/maml/elements/AdvancedSlider$StartPoint;->moveTo(FF)V

    iget-boolean v0, p0, Lmiui/maml/elements/AdvancedSlider;->mHasName:Z

    if-eqz v0, :cond_39

    float-to-double v0, p1

    invoke-virtual {p0, v0, v1}, Lmiui/maml/elements/AdvancedSlider;->descale(D)D

    move-result-wide v0

    float-to-double v2, p2

    invoke-virtual {p0, v2, v3}, Lmiui/maml/elements/AdvancedSlider;->descale(D)D

    move-result-wide v2

    mul-double v4, v0, v0

    mul-double v6, v2, v2

    add-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    iget-object v6, p0, Lmiui/maml/elements/AdvancedSlider;->mMoveXVar:Lmiui/maml/data/IndexedVariable;

    invoke-virtual {v6, v0, v1}, Lmiui/maml/data/IndexedVariable;->set(D)V

    iget-object v6, p0, Lmiui/maml/elements/AdvancedSlider;->mMoveYVar:Lmiui/maml/data/IndexedVariable;

    invoke-virtual {v6, v2, v3}, Lmiui/maml/data/IndexedVariable;->set(D)V

    iget-object v6, p0, Lmiui/maml/elements/AdvancedSlider;->mMoveDistVar:Lmiui/maml/data/IndexedVariable;

    invoke-virtual {v6, v4, v5}, Lmiui/maml/data/IndexedVariable;->set(D)V

    :cond_39
    return-void
.end method


# virtual methods
.method public finish()V
    .registers 1

    invoke-super {p0}, Lmiui/maml/elements/ElementGroup;->finish()V

    invoke-virtual {p0}, Lmiui/maml/elements/AdvancedSlider;->resetInner()V

    return-void
.end method

.method public init()V
    .registers 2

    invoke-super {p0}, Lmiui/maml/elements/ElementGroup;->init()V

    iget-object v0, p0, Lmiui/maml/elements/AdvancedSlider;->mReboundAnimationController:Lmiui/maml/elements/AdvancedSlider$ReboundAnimationController;

    invoke-virtual {v0}, Lmiui/maml/elements/AdvancedSlider$ReboundAnimationController;->init()V

    invoke-virtual {p0}, Lmiui/maml/elements/AdvancedSlider;->resetInner()V

    return-void
.end method

.method protected onCancel()V
    .registers 1

    return-void
.end method

.method protected onCreateChild(Lorg/w3c/dom/Element;)Lmiui/maml/elements/ScreenElement;
    .registers 5

    invoke-interface {p1}, Lorg/w3c/dom/Element;->getTagName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "StartPoint"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_16

    new-instance v1, Lmiui/maml/elements/AdvancedSlider$StartPoint;

    iget-object v2, p0, Lmiui/maml/elements/AdvancedSlider;->mRoot:Lmiui/maml/ScreenElementRoot;

    invoke-direct {v1, p0, p1, v2}, Lmiui/maml/elements/AdvancedSlider$StartPoint;-><init>(Lmiui/maml/elements/AdvancedSlider;Lorg/w3c/dom/Element;Lmiui/maml/ScreenElementRoot;)V

    iput-object v1, p0, Lmiui/maml/elements/AdvancedSlider;->mStartPoint:Lmiui/maml/elements/AdvancedSlider$StartPoint;

    return-object v1

    :cond_16
    const-string v1, "EndPoint"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_36

    new-instance v1, Lmiui/maml/elements/AdvancedSlider$EndPoint;

    iget-object v2, p0, Lmiui/maml/elements/AdvancedSlider;->mRoot:Lmiui/maml/ScreenElementRoot;

    invoke-direct {v1, p0, p1, v2}, Lmiui/maml/elements/AdvancedSlider$EndPoint;-><init>(Lmiui/maml/elements/AdvancedSlider;Lorg/w3c/dom/Element;Lmiui/maml/ScreenElementRoot;)V

    iget-object v2, p0, Lmiui/maml/elements/AdvancedSlider;->mEndPoints:Ljava/util/ArrayList;

    if-nez v2, :cond_30

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lmiui/maml/elements/AdvancedSlider;->mEndPoints:Ljava/util/ArrayList;

    :cond_30
    iget-object v2, p0, Lmiui/maml/elements/AdvancedSlider;->mEndPoints:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v1

    :cond_36
    invoke-super {p0, p1}, Lmiui/maml/elements/ElementGroup;->onCreateChild(Lorg/w3c/dom/Element;)Lmiui/maml/elements/ScreenElement;

    move-result-object v1

    return-object v1
.end method

.method protected onLaunch(Ljava/lang/String;Landroid/content/Intent;)Z
    .registers 4

    iget-object v0, p0, Lmiui/maml/elements/AdvancedSlider;->mOnLaunchListener:Lmiui/maml/elements/AdvancedSlider$OnLaunchListener;

    if-eqz v0, :cond_9

    invoke-interface {v0, p1}, Lmiui/maml/elements/AdvancedSlider$OnLaunchListener;->onLaunch(Ljava/lang/String;)Z

    move-result v0

    return v0

    :cond_9
    iget-boolean v0, p0, Lmiui/maml/elements/AdvancedSlider;->mIsKeepStatusAfterLaunch:Z

    return v0
.end method

.method protected onMove(FF)V
    .registers 3

    return-void
.end method

.method protected onReach(Ljava/lang/String;)V
    .registers 4

    iget-boolean v0, p0, Lmiui/maml/elements/AdvancedSlider;->mIsHaptic:Z

    if-eqz v0, :cond_a

    iget-object v0, p0, Lmiui/maml/elements/AdvancedSlider;->mRoot:Lmiui/maml/ScreenElementRoot;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lmiui/maml/ScreenElementRoot;->haptic(I)V

    :cond_a
    return-void
.end method

.method protected onRelease()V
    .registers 3

    iget-boolean v0, p0, Lmiui/maml/elements/AdvancedSlider;->mIsHaptic:Z

    if-eqz v0, :cond_a

    iget-object v0, p0, Lmiui/maml/elements/AdvancedSlider;->mRoot:Lmiui/maml/ScreenElementRoot;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lmiui/maml/ScreenElementRoot;->haptic(I)V

    :cond_a
    return-void
.end method

.method protected onStart()V
    .registers 3

    iget-boolean v0, p0, Lmiui/maml/elements/AdvancedSlider;->mIsHaptic:Z

    if-eqz v0, :cond_a

    iget-object v0, p0, Lmiui/maml/elements/AdvancedSlider;->mRoot:Lmiui/maml/ScreenElementRoot;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lmiui/maml/ScreenElementRoot;->haptic(I)V

    :cond_a
    return-void
.end method

.method public onTouch(Landroid/view/MotionEvent;)Z
    .registers 11

    invoke-virtual {p0}, Lmiui/maml/elements/AdvancedSlider;->isVisible()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return v1

    :cond_8
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {p0}, Lmiui/maml/elements/AdvancedSlider;->getAbsoluteLeft()F

    move-result v4

    sub-float/2addr v0, v4

    invoke-virtual {p0}, Lmiui/maml/elements/AdvancedSlider;->getAbsoluteTop()F

    move-result v4

    sub-float/2addr v2, v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_a9

    if-eq v4, v5, :cond_68

    const/4 v6, 0x2

    if-eq v4, v6, :cond_47

    const/4 v6, 0x3

    if-eq v4, v6, :cond_2c

    goto/16 :goto_11f

    :cond_2c
    iget-boolean v4, p0, Lmiui/maml/elements/AdvancedSlider;->mMoving:Z

    if-eqz v4, :cond_11f

    iget-object v4, p0, Lmiui/maml/elements/AdvancedSlider;->mReboundAnimationController:Lmiui/maml/elements/AdvancedSlider$ReboundAnimationController;

    const/4 v6, 0x0

    invoke-virtual {v4, v6}, Lmiui/maml/elements/AdvancedSlider$ReboundAnimationController;->start(Lmiui/maml/elements/AdvancedSlider$EndPoint;)V

    iput-object v6, p0, Lmiui/maml/elements/AdvancedSlider;->mCurrentEndPoint:Lmiui/maml/elements/AdvancedSlider$EndPoint;

    iput-boolean v1, p0, Lmiui/maml/elements/AdvancedSlider;->mMoving:Z

    invoke-virtual {p0}, Lmiui/maml/elements/AdvancedSlider;->onRelease()V

    iget-object v4, p0, Lmiui/maml/elements/AdvancedSlider;->mStartPoint:Lmiui/maml/elements/AdvancedSlider$StartPoint;

    const-string v6, "cancel"

    invoke-virtual {v4, v6}, Lmiui/maml/elements/AdvancedSlider$StartPoint;->performAction(Ljava/lang/String;)V

    const/4 v3, 0x1

    goto/16 :goto_11f

    :cond_47
    iget-boolean v4, p0, Lmiui/maml/elements/AdvancedSlider;->mMoving:Z

    if-eqz v4, :cond_11f

    invoke-direct {p0, v0, v2}, Lmiui/maml/elements/AdvancedSlider;->checkTouch(FF)Lmiui/maml/elements/AdvancedSlider$CheckTouchResult;

    move-result-object v4

    if-eqz v4, :cond_59

    iget-object v6, v4, Lmiui/maml/elements/AdvancedSlider$CheckTouchResult;->endPoint:Lmiui/maml/elements/AdvancedSlider$EndPoint;

    iput-object v6, p0, Lmiui/maml/elements/AdvancedSlider;->mCurrentEndPoint:Lmiui/maml/elements/AdvancedSlider$EndPoint;

    invoke-virtual {p0, v0, v2}, Lmiui/maml/elements/AdvancedSlider;->onMove(FF)V

    goto :goto_65

    :cond_59
    iget-object v6, p0, Lmiui/maml/elements/AdvancedSlider;->mReboundAnimationController:Lmiui/maml/elements/AdvancedSlider$ReboundAnimationController;

    iget-object v7, p0, Lmiui/maml/elements/AdvancedSlider;->mCurrentEndPoint:Lmiui/maml/elements/AdvancedSlider$EndPoint;

    invoke-virtual {v6, v7}, Lmiui/maml/elements/AdvancedSlider$ReboundAnimationController;->start(Lmiui/maml/elements/AdvancedSlider$EndPoint;)V

    iput-boolean v1, p0, Lmiui/maml/elements/AdvancedSlider;->mMoving:Z

    invoke-virtual {p0}, Lmiui/maml/elements/AdvancedSlider;->onRelease()V

    :goto_65
    const/4 v3, 0x1

    goto/16 :goto_11f

    :cond_68
    const/4 v4, 0x0

    iget-boolean v6, p0, Lmiui/maml/elements/AdvancedSlider;->mMoving:Z

    if-eqz v6, :cond_11f

    const-string v6, "LockScreen_AdvancedSlider"

    const-string v7, "unlock touch up"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, v0, v2}, Lmiui/maml/elements/AdvancedSlider;->checkTouch(FF)Lmiui/maml/elements/AdvancedSlider$CheckTouchResult;

    move-result-object v6

    if-eqz v6, :cond_99

    iget-boolean v7, v6, Lmiui/maml/elements/AdvancedSlider$CheckTouchResult;->reached:Z

    if-eqz v7, :cond_85

    iget-object v7, v6, Lmiui/maml/elements/AdvancedSlider$CheckTouchResult;->endPoint:Lmiui/maml/elements/AdvancedSlider$EndPoint;

    invoke-direct {p0, v7}, Lmiui/maml/elements/AdvancedSlider;->doLaunch(Lmiui/maml/elements/AdvancedSlider$EndPoint;)Z

    move-result v4

    goto :goto_95

    :cond_85
    iget-object v7, p0, Lmiui/maml/elements/AdvancedSlider;->mStartPoint:Lmiui/maml/elements/AdvancedSlider$StartPoint;

    const-string v8, "release"

    invoke-virtual {v7, v8}, Lmiui/maml/elements/AdvancedSlider$StartPoint;->performAction(Ljava/lang/String;)V

    iget-object v7, v6, Lmiui/maml/elements/AdvancedSlider$CheckTouchResult;->endPoint:Lmiui/maml/elements/AdvancedSlider$EndPoint;

    if-eqz v7, :cond_95

    iget-object v7, v6, Lmiui/maml/elements/AdvancedSlider$CheckTouchResult;->endPoint:Lmiui/maml/elements/AdvancedSlider$EndPoint;

    invoke-virtual {v7, v8}, Lmiui/maml/elements/AdvancedSlider$EndPoint;->performAction(Ljava/lang/String;)V

    :cond_95
    :goto_95
    iget-object v7, v6, Lmiui/maml/elements/AdvancedSlider$CheckTouchResult;->endPoint:Lmiui/maml/elements/AdvancedSlider$EndPoint;

    iput-object v7, p0, Lmiui/maml/elements/AdvancedSlider;->mCurrentEndPoint:Lmiui/maml/elements/AdvancedSlider$EndPoint;

    :cond_99
    iput-boolean v1, p0, Lmiui/maml/elements/AdvancedSlider;->mMoving:Z

    if-nez v4, :cond_a4

    iget-object v7, p0, Lmiui/maml/elements/AdvancedSlider;->mReboundAnimationController:Lmiui/maml/elements/AdvancedSlider$ReboundAnimationController;

    iget-object v8, p0, Lmiui/maml/elements/AdvancedSlider;->mCurrentEndPoint:Lmiui/maml/elements/AdvancedSlider$EndPoint;

    invoke-virtual {v7, v8}, Lmiui/maml/elements/AdvancedSlider$ReboundAnimationController;->start(Lmiui/maml/elements/AdvancedSlider$EndPoint;)V

    :cond_a4
    invoke-virtual {p0}, Lmiui/maml/elements/AdvancedSlider;->onRelease()V

    const/4 v3, 0x1

    goto :goto_11f

    :cond_a9
    iget-object v4, p0, Lmiui/maml/elements/AdvancedSlider;->mStartPoint:Lmiui/maml/elements/AdvancedSlider$StartPoint;

    invoke-virtual {v4, v0, v2, v1}, Lmiui/maml/elements/AdvancedSlider$StartPoint;->touched(FFZ)Z

    move-result v4

    if-eqz v4, :cond_11f

    iput-boolean v5, p0, Lmiui/maml/elements/AdvancedSlider;->mMoving:Z

    iget-object v4, p0, Lmiui/maml/elements/AdvancedSlider;->mStartPoint:Lmiui/maml/elements/AdvancedSlider$StartPoint;

    invoke-virtual {v4}, Lmiui/maml/elements/AdvancedSlider$StartPoint;->getAnchorX()F

    move-result v4

    sub-float v4, v0, v4

    iput v4, p0, Lmiui/maml/elements/AdvancedSlider;->mTouchOffsetX:F

    iget-object v4, p0, Lmiui/maml/elements/AdvancedSlider;->mStartPoint:Lmiui/maml/elements/AdvancedSlider$StartPoint;

    invoke-virtual {v4}, Lmiui/maml/elements/AdvancedSlider$StartPoint;->getAnchorY()F

    move-result v4

    sub-float v4, v2, v4

    iput v4, p0, Lmiui/maml/elements/AdvancedSlider;->mTouchOffsetY:F

    iget-object v4, p0, Lmiui/maml/elements/AdvancedSlider;->mReboundAnimationController:Lmiui/maml/elements/AdvancedSlider$ReboundAnimationController;

    invoke-virtual {v4}, Lmiui/maml/elements/AdvancedSlider$ReboundAnimationController;->isRunning()Z

    move-result v4

    if-eqz v4, :cond_ea

    iget-object v4, p0, Lmiui/maml/elements/AdvancedSlider;->mReboundAnimationController:Lmiui/maml/elements/AdvancedSlider$ReboundAnimationController;

    invoke-virtual {v4}, Lmiui/maml/elements/AdvancedSlider$ReboundAnimationController;->stopRunning()V

    iget v4, p0, Lmiui/maml/elements/AdvancedSlider;->mTouchOffsetX:F

    iget-object v6, p0, Lmiui/maml/elements/AdvancedSlider;->mStartPoint:Lmiui/maml/elements/AdvancedSlider$StartPoint;

    invoke-virtual {v6}, Lmiui/maml/elements/AdvancedSlider$StartPoint;->getOffsetX()F

    move-result v6

    sub-float/2addr v4, v6

    iput v4, p0, Lmiui/maml/elements/AdvancedSlider;->mTouchOffsetX:F

    iget v4, p0, Lmiui/maml/elements/AdvancedSlider;->mTouchOffsetY:F

    iget-object v6, p0, Lmiui/maml/elements/AdvancedSlider;->mStartPoint:Lmiui/maml/elements/AdvancedSlider$StartPoint;

    invoke-virtual {v6}, Lmiui/maml/elements/AdvancedSlider$StartPoint;->getOffsetY()F

    move-result v6

    sub-float/2addr v4, v6

    iput v4, p0, Lmiui/maml/elements/AdvancedSlider;->mTouchOffsetY:F

    :cond_ea
    iget-object v4, p0, Lmiui/maml/elements/AdvancedSlider;->mStartPoint:Lmiui/maml/elements/AdvancedSlider$StartPoint;

    sget-object v6, Lmiui/maml/elements/AdvancedSlider$State;->Pressed:Lmiui/maml/elements/AdvancedSlider$State;

    invoke-virtual {v4, v6}, Lmiui/maml/elements/AdvancedSlider$StartPoint;->setState(Lmiui/maml/elements/AdvancedSlider$State;)V

    iget-object v4, p0, Lmiui/maml/elements/AdvancedSlider;->mEndPoints:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_f7
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_109

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lmiui/maml/elements/AdvancedSlider$EndPoint;

    sget-object v7, Lmiui/maml/elements/AdvancedSlider$State;->Pressed:Lmiui/maml/elements/AdvancedSlider$State;

    invoke-virtual {v6, v7}, Lmiui/maml/elements/AdvancedSlider$EndPoint;->setState(Lmiui/maml/elements/AdvancedSlider$State;)V

    goto :goto_f7

    :cond_109
    iput-boolean v5, p0, Lmiui/maml/elements/AdvancedSlider;->mStartPointPressed:Z

    iget-boolean v4, p0, Lmiui/maml/elements/AdvancedSlider;->mHasName:Z

    if-eqz v4, :cond_116

    iget-object v4, p0, Lmiui/maml/elements/AdvancedSlider;->mStateVar:Lmiui/maml/data/IndexedVariable;

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    invoke-virtual {v4, v6, v7}, Lmiui/maml/data/IndexedVariable;->set(D)V

    :cond_116
    iget-object v4, p0, Lmiui/maml/elements/AdvancedSlider;->mReboundAnimationController:Lmiui/maml/elements/AdvancedSlider$ReboundAnimationController;

    invoke-virtual {v4}, Lmiui/maml/elements/AdvancedSlider$ReboundAnimationController;->init()V

    invoke-virtual {p0}, Lmiui/maml/elements/AdvancedSlider;->onStart()V

    const/4 v3, 0x1

    :cond_11f
    :goto_11f
    invoke-super {p0, p1}, Lmiui/maml/elements/ElementGroup;->onTouch(Landroid/view/MotionEvent;)Z

    move-result v4

    if-nez v4, :cond_12b

    if-eqz v3, :cond_12c

    iget-boolean v4, p0, Lmiui/maml/elements/AdvancedSlider;->mInterceptTouch:Z

    if-eqz v4, :cond_12c

    :cond_12b
    move v1, v5

    :cond_12c
    return v1
.end method

.method public pause()V
    .registers 1

    invoke-super {p0}, Lmiui/maml/elements/ElementGroup;->pause()V

    invoke-virtual {p0}, Lmiui/maml/elements/AdvancedSlider;->resetInner()V

    return-void
.end method

.method public reset(J)V
    .registers 3

    invoke-super {p0, p1, p2}, Lmiui/maml/elements/ElementGroup;->reset(J)V

    invoke-virtual {p0}, Lmiui/maml/elements/AdvancedSlider;->resetInner()V

    return-void
.end method

.method protected resetInner()V
    .registers 5

    iget-boolean v0, p0, Lmiui/maml/elements/AdvancedSlider;->mStartPointPressed:Z

    if-eqz v0, :cond_4b

    const/4 v0, 0x0

    iput-boolean v0, p0, Lmiui/maml/elements/AdvancedSlider;->mStartPointPressed:Z

    iget-object v1, p0, Lmiui/maml/elements/AdvancedSlider;->mStartPoint:Lmiui/maml/elements/AdvancedSlider$StartPoint;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v2}, Lmiui/maml/elements/AdvancedSlider$StartPoint;->moveTo(FF)V

    iget-object v1, p0, Lmiui/maml/elements/AdvancedSlider;->mStartPoint:Lmiui/maml/elements/AdvancedSlider$StartPoint;

    sget-object v2, Lmiui/maml/elements/AdvancedSlider$State;->Normal:Lmiui/maml/elements/AdvancedSlider$State;

    invoke-virtual {v1, v2}, Lmiui/maml/elements/AdvancedSlider$StartPoint;->setState(Lmiui/maml/elements/AdvancedSlider$State;)V

    iget-object v1, p0, Lmiui/maml/elements/AdvancedSlider;->mEndPoints:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmiui/maml/elements/AdvancedSlider$EndPoint;

    sget-object v3, Lmiui/maml/elements/AdvancedSlider$State;->Normal:Lmiui/maml/elements/AdvancedSlider$State;

    invoke-virtual {v2, v3}, Lmiui/maml/elements/AdvancedSlider$EndPoint;->setState(Lmiui/maml/elements/AdvancedSlider$State;)V

    goto :goto_1a

    :cond_2c
    iget-boolean v1, p0, Lmiui/maml/elements/AdvancedSlider;->mHasName:Z

    if-eqz v1, :cond_46

    iget-object v1, p0, Lmiui/maml/elements/AdvancedSlider;->mMoveXVar:Lmiui/maml/data/IndexedVariable;

    const-wide/16 v2, 0x0

    invoke-virtual {v1, v2, v3}, Lmiui/maml/data/IndexedVariable;->set(D)V

    iget-object v1, p0, Lmiui/maml/elements/AdvancedSlider;->mMoveYVar:Lmiui/maml/data/IndexedVariable;

    invoke-virtual {v1, v2, v3}, Lmiui/maml/data/IndexedVariable;->set(D)V

    iget-object v1, p0, Lmiui/maml/elements/AdvancedSlider;->mMoveDistVar:Lmiui/maml/data/IndexedVariable;

    invoke-virtual {v1, v2, v3}, Lmiui/maml/data/IndexedVariable;->set(D)V

    iget-object v1, p0, Lmiui/maml/elements/AdvancedSlider;->mStateVar:Lmiui/maml/data/IndexedVariable;

    invoke-virtual {v1, v2, v3}, Lmiui/maml/data/IndexedVariable;->set(D)V

    :cond_46
    iput-boolean v0, p0, Lmiui/maml/elements/AdvancedSlider;->mMoving:Z

    invoke-virtual {p0}, Lmiui/maml/elements/AdvancedSlider;->requestUpdate()V

    :cond_4b
    return-void
.end method

.method public setOnLaunchListener(Lmiui/maml/elements/AdvancedSlider$OnLaunchListener;)V
    .registers 2

    iput-object p1, p0, Lmiui/maml/elements/AdvancedSlider;->mOnLaunchListener:Lmiui/maml/elements/AdvancedSlider$OnLaunchListener;

    return-void
.end method
