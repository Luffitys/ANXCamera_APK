.class public abstract Lmiui/animation/physics/DynamicAnimation;
.super Ljava/lang/Object;
.source "DynamicAnimation.java"

# interfaces
.implements Lmiui/animation/physics/AnimationHandler$AnimationFrameCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/animation/physics/DynamicAnimation$OnAnimationUpdateListener;,
        Lmiui/animation/physics/DynamicAnimation$OnAnimationEndListener;,
        Lmiui/animation/physics/DynamicAnimation$MassState;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lmiui/animation/physics/DynamicAnimation<",
        "TT;>;>",
        "Ljava/lang/Object;",
        "Lmiui/animation/physics/AnimationHandler$AnimationFrameCallback;"
    }
.end annotation


# static fields
.field public static final MIN_VISIBLE_CHANGE_ALPHA:F = 0.00390625f

.field public static final MIN_VISIBLE_CHANGE_PIXELS:F = 1.0f

.field public static final MIN_VISIBLE_CHANGE_ROTATION_DEGREES:F = 0.1f

.field public static final MIN_VISIBLE_CHANGE_SCALE:F = 0.002f

.field private static final THRESHOLD_MULTIPLIER:F = 0.75f

.field private static final UNSET:F = 3.4028235E38f


# instance fields
.field private final mEndListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lmiui/animation/physics/DynamicAnimation$OnAnimationEndListener;",
            ">;"
        }
    .end annotation
.end field

.field private mLastFrameTime:J

.field mMaxValue:F

.field mMinValue:F

.field private mMinVisibleChange:F

.field final mProperty:Lmiui/animation/property/FloatProperty;

.field mRunning:Z

.field private mStartDelay:J

.field mStartValueIsSet:Z

.field final mTarget:Ljava/lang/Object;

.field private final mUpdateListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lmiui/animation/physics/DynamicAnimation$OnAnimationUpdateListener;",
            ">;"
        }
    .end annotation
.end field

.field mValue:F

.field mVelocity:F


# direct methods
.method constructor <init>(Ljava/lang/Object;Lmiui/animation/property/FloatProperty;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            ">(TK;",
            "Lmiui/animation/property/FloatProperty<",
            "TK;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lmiui/animation/physics/DynamicAnimation;->mVelocity:F

    const v0, 0x7f7fffff    # Float.MAX_VALUE

    iput v0, p0, Lmiui/animation/physics/DynamicAnimation;->mValue:F

    const/4 v1, 0x0

    iput-boolean v1, p0, Lmiui/animation/physics/DynamicAnimation;->mStartValueIsSet:Z

    iput-boolean v1, p0, Lmiui/animation/physics/DynamicAnimation;->mRunning:Z

    iput v0, p0, Lmiui/animation/physics/DynamicAnimation;->mMaxValue:F

    neg-float v0, v0

    iput v0, p0, Lmiui/animation/physics/DynamicAnimation;->mMinValue:F

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lmiui/animation/physics/DynamicAnimation;->mLastFrameTime:J

    iput-wide v0, p0, Lmiui/animation/physics/DynamicAnimation;->mStartDelay:J

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmiui/animation/physics/DynamicAnimation;->mEndListeners:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmiui/animation/physics/DynamicAnimation;->mUpdateListeners:Ljava/util/ArrayList;

    iput-object p1, p0, Lmiui/animation/physics/DynamicAnimation;->mTarget:Ljava/lang/Object;

    iput-object p2, p0, Lmiui/animation/physics/DynamicAnimation;->mProperty:Lmiui/animation/property/FloatProperty;

    sget-object v0, Lmiui/animation/property/ViewProperty;->ROTATION:Lmiui/animation/property/ViewProperty;

    if-eq p2, v0, :cond_61

    iget-object v0, p0, Lmiui/animation/physics/DynamicAnimation;->mProperty:Lmiui/animation/property/FloatProperty;

    sget-object v1, Lmiui/animation/property/ViewProperty;->ROTATION_X:Lmiui/animation/property/ViewProperty;

    if-eq v0, v1, :cond_61

    iget-object v0, p0, Lmiui/animation/physics/DynamicAnimation;->mProperty:Lmiui/animation/property/FloatProperty;

    sget-object v1, Lmiui/animation/property/ViewProperty;->ROTATION_Y:Lmiui/animation/property/ViewProperty;

    if-ne v0, v1, :cond_3e

    goto :goto_61

    :cond_3e
    iget-object v0, p0, Lmiui/animation/physics/DynamicAnimation;->mProperty:Lmiui/animation/property/FloatProperty;

    sget-object v1, Lmiui/animation/property/ViewProperty;->ALPHA:Lmiui/animation/property/ViewProperty;

    if-ne v0, v1, :cond_49

    const/high16 v0, 0x3b800000    # 0.00390625f

    iput v0, p0, Lmiui/animation/physics/DynamicAnimation;->mMinVisibleChange:F

    goto :goto_66

    :cond_49
    iget-object v0, p0, Lmiui/animation/physics/DynamicAnimation;->mProperty:Lmiui/animation/property/FloatProperty;

    sget-object v1, Lmiui/animation/property/ViewProperty;->SCALE_X:Lmiui/animation/property/ViewProperty;

    if-eq v0, v1, :cond_5b

    iget-object v0, p0, Lmiui/animation/physics/DynamicAnimation;->mProperty:Lmiui/animation/property/FloatProperty;

    sget-object v1, Lmiui/animation/property/ViewProperty;->SCALE_Y:Lmiui/animation/property/ViewProperty;

    if-ne v0, v1, :cond_56

    goto :goto_5b

    :cond_56
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lmiui/animation/physics/DynamicAnimation;->mMinVisibleChange:F

    goto :goto_66

    :cond_5b
    :goto_5b
    const v0, 0x3b03126f    # 0.002f

    iput v0, p0, Lmiui/animation/physics/DynamicAnimation;->mMinVisibleChange:F

    goto :goto_66

    :cond_61
    :goto_61
    const v0, 0x3dcccccd    # 0.1f

    iput v0, p0, Lmiui/animation/physics/DynamicAnimation;->mMinVisibleChange:F

    :goto_66
    return-void
.end method

.method constructor <init>(Lmiui/animation/property/FloatValueHolder;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lmiui/animation/physics/DynamicAnimation;->mVelocity:F

    const v0, 0x7f7fffff    # Float.MAX_VALUE

    iput v0, p0, Lmiui/animation/physics/DynamicAnimation;->mValue:F

    const/4 v1, 0x0

    iput-boolean v1, p0, Lmiui/animation/physics/DynamicAnimation;->mStartValueIsSet:Z

    iput-boolean v1, p0, Lmiui/animation/physics/DynamicAnimation;->mRunning:Z

    iput v0, p0, Lmiui/animation/physics/DynamicAnimation;->mMaxValue:F

    neg-float v0, v0

    iput v0, p0, Lmiui/animation/physics/DynamicAnimation;->mMinValue:F

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lmiui/animation/physics/DynamicAnimation;->mLastFrameTime:J

    iput-wide v0, p0, Lmiui/animation/physics/DynamicAnimation;->mStartDelay:J

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmiui/animation/physics/DynamicAnimation;->mEndListeners:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmiui/animation/physics/DynamicAnimation;->mUpdateListeners:Ljava/util/ArrayList;

    const/4 v0, 0x0

    iput-object v0, p0, Lmiui/animation/physics/DynamicAnimation;->mTarget:Ljava/lang/Object;

    new-instance v0, Lmiui/animation/physics/DynamicAnimation$1;

    const-string v1, "FloatValueHolder"

    invoke-direct {v0, p0, v1, p1}, Lmiui/animation/physics/DynamicAnimation$1;-><init>(Lmiui/animation/physics/DynamicAnimation;Ljava/lang/String;Lmiui/animation/property/FloatValueHolder;)V

    iput-object v0, p0, Lmiui/animation/physics/DynamicAnimation;->mProperty:Lmiui/animation/property/FloatProperty;

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lmiui/animation/physics/DynamicAnimation;->mMinVisibleChange:F

    return-void
.end method

.method private endAnimationInternal(Z)V
    .registers 6

    const/4 v0, 0x0

    iput-boolean v0, p0, Lmiui/animation/physics/DynamicAnimation;->mRunning:Z

    invoke-static {}, Lmiui/animation/physics/AnimationHandler;->getInstance()Lmiui/animation/physics/AnimationHandler;

    move-result-object v1

    invoke-virtual {v1, p0}, Lmiui/animation/physics/AnimationHandler;->removeCallback(Lmiui/animation/physics/AnimationHandler$AnimationFrameCallback;)V

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lmiui/animation/physics/DynamicAnimation;->mLastFrameTime:J

    iput-boolean v0, p0, Lmiui/animation/physics/DynamicAnimation;->mStartValueIsSet:Z

    const/4 v0, 0x0

    :goto_11
    iget-object v1, p0, Lmiui/animation/physics/DynamicAnimation;->mEndListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_33

    iget-object v1, p0, Lmiui/animation/physics/DynamicAnimation;->mEndListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_30

    iget-object v1, p0, Lmiui/animation/physics/DynamicAnimation;->mEndListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/animation/physics/DynamicAnimation$OnAnimationEndListener;

    iget v2, p0, Lmiui/animation/physics/DynamicAnimation;->mValue:F

    iget v3, p0, Lmiui/animation/physics/DynamicAnimation;->mVelocity:F

    invoke-interface {v1, p0, p1, v2, v3}, Lmiui/animation/physics/DynamicAnimation$OnAnimationEndListener;->onAnimationEnd(Lmiui/animation/physics/DynamicAnimation;ZFF)V

    :cond_30
    add-int/lit8 v0, v0, 0x1

    goto :goto_11

    :cond_33
    iget-object v0, p0, Lmiui/animation/physics/DynamicAnimation;->mEndListeners:Ljava/util/ArrayList;

    invoke-static {v0}, Lmiui/animation/physics/DynamicAnimation;->removeNullEntries(Ljava/util/ArrayList;)V

    return-void
.end method

.method private getPropertyValue()F
    .registers 3

    iget-object v0, p0, Lmiui/animation/physics/DynamicAnimation;->mProperty:Lmiui/animation/property/FloatProperty;

    iget-object v1, p0, Lmiui/animation/physics/DynamicAnimation;->mTarget:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lmiui/animation/property/FloatProperty;->getValue(Ljava/lang/Object;)F

    move-result v0

    return v0
.end method

.method private static removeEntry(Ljava/util/ArrayList;Ljava/lang/Object;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/ArrayList<",
            "TT;>;TT;)V"
        }
    .end annotation

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    if-ltz v0, :cond_a

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_a
    return-void
.end method

.method private static removeNullEntries(Ljava/util/ArrayList;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/ArrayList<",
            "TT;>;)V"
        }
    .end annotation

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_6
    if-ltz v0, :cond_14

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_11

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_11
    add-int/lit8 v0, v0, -0x1

    goto :goto_6

    :cond_14
    return-void
.end method

.method private startAnimationInternal()V
    .registers 4

    iget-boolean v0, p0, Lmiui/animation/physics/DynamicAnimation;->mRunning:Z

    if-nez v0, :cond_31

    const/4 v0, 0x1

    iput-boolean v0, p0, Lmiui/animation/physics/DynamicAnimation;->mRunning:Z

    iget-boolean v0, p0, Lmiui/animation/physics/DynamicAnimation;->mStartValueIsSet:Z

    if-nez v0, :cond_11

    invoke-direct {p0}, Lmiui/animation/physics/DynamicAnimation;->getPropertyValue()F

    move-result v0

    iput v0, p0, Lmiui/animation/physics/DynamicAnimation;->mValue:F

    :cond_11
    iget v0, p0, Lmiui/animation/physics/DynamicAnimation;->mValue:F

    iget v1, p0, Lmiui/animation/physics/DynamicAnimation;->mMaxValue:F

    cmpl-float v1, v0, v1

    if-gtz v1, :cond_29

    iget v1, p0, Lmiui/animation/physics/DynamicAnimation;->mMinValue:F

    cmpg-float v0, v0, v1

    if-ltz v0, :cond_29

    invoke-static {}, Lmiui/animation/physics/AnimationHandler;->getInstance()Lmiui/animation/physics/AnimationHandler;

    move-result-object v0

    iget-wide v1, p0, Lmiui/animation/physics/DynamicAnimation;->mStartDelay:J

    invoke-virtual {v0, p0, v1, v2}, Lmiui/animation/physics/AnimationHandler;->addAnimationFrameCallback(Lmiui/animation/physics/AnimationHandler$AnimationFrameCallback;J)V

    goto :goto_31

    :cond_29
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Starting value need to be in between min value and max value"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_31
    :goto_31
    return-void
.end method


# virtual methods
.method public addEndListener(Lmiui/animation/physics/DynamicAnimation$OnAnimationEndListener;)Lmiui/animation/physics/DynamicAnimation;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lmiui/animation/physics/DynamicAnimation$OnAnimationEndListener;",
            ")TT;"
        }
    .end annotation

    iget-object v0, p0, Lmiui/animation/physics/DynamicAnimation;->mEndListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    iget-object v0, p0, Lmiui/animation/physics/DynamicAnimation;->mEndListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_d
    return-object p0
.end method

.method public addUpdateListener(Lmiui/animation/physics/DynamicAnimation$OnAnimationUpdateListener;)Lmiui/animation/physics/DynamicAnimation;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lmiui/animation/physics/DynamicAnimation$OnAnimationUpdateListener;",
            ")TT;"
        }
    .end annotation

    invoke-virtual {p0}, Lmiui/animation/physics/DynamicAnimation;->isRunning()Z

    move-result v0

    if-nez v0, :cond_14

    iget-object v0, p0, Lmiui/animation/physics/DynamicAnimation;->mUpdateListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_13

    iget-object v0, p0, Lmiui/animation/physics/DynamicAnimation;->mUpdateListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_13
    return-object p0

    :cond_14
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Error: Update listeners must be added beforethe miui.animation."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public cancel()V
    .registers 3

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_13

    iget-boolean v0, p0, Lmiui/animation/physics/DynamicAnimation;->mRunning:Z

    if-eqz v0, :cond_12

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lmiui/animation/physics/DynamicAnimation;->endAnimationInternal(Z)V

    :cond_12
    return-void

    :cond_13
    new-instance v0, Landroid/util/AndroidRuntimeException;

    const-string v1, "Animations may only be canceled on the main thread"

    invoke-direct {v0, v1}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public doAnimationFrame(J)Z
    .registers 9

    iget-wide v0, p0, Lmiui/animation/physics/DynamicAnimation;->mLastFrameTime:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    const/4 v3, 0x0

    if-nez v2, :cond_11

    iput-wide p1, p0, Lmiui/animation/physics/DynamicAnimation;->mLastFrameTime:J

    iget v0, p0, Lmiui/animation/physics/DynamicAnimation;->mValue:F

    invoke-virtual {p0, v0}, Lmiui/animation/physics/DynamicAnimation;->setPropertyValue(F)V

    return v3

    :cond_11
    sub-long v0, p1, v0

    iput-wide p1, p0, Lmiui/animation/physics/DynamicAnimation;->mLastFrameTime:J

    invoke-virtual {p0, v0, v1}, Lmiui/animation/physics/DynamicAnimation;->updateValueAndVelocity(J)Z

    move-result v2

    iget v4, p0, Lmiui/animation/physics/DynamicAnimation;->mValue:F

    iget v5, p0, Lmiui/animation/physics/DynamicAnimation;->mMaxValue:F

    invoke-static {v4, v5}, Ljava/lang/Math;->min(FF)F

    move-result v4

    iput v4, p0, Lmiui/animation/physics/DynamicAnimation;->mValue:F

    iget v5, p0, Lmiui/animation/physics/DynamicAnimation;->mMinValue:F

    invoke-static {v4, v5}, Ljava/lang/Math;->max(FF)F

    move-result v4

    iput v4, p0, Lmiui/animation/physics/DynamicAnimation;->mValue:F

    invoke-virtual {p0, v4}, Lmiui/animation/physics/DynamicAnimation;->setPropertyValue(F)V

    if-eqz v2, :cond_33

    invoke-direct {p0, v3}, Lmiui/animation/physics/DynamicAnimation;->endAnimationInternal(Z)V

    :cond_33
    return v2
.end method

.method abstract getAcceleration(FF)F
.end method

.method public getMinimumVisibleChange()F
    .registers 2

    iget v0, p0, Lmiui/animation/physics/DynamicAnimation;->mMinVisibleChange:F

    return v0
.end method

.method getValueThreshold()F
    .registers 3

    iget v0, p0, Lmiui/animation/physics/DynamicAnimation;->mMinVisibleChange:F

    const/high16 v1, 0x3f400000    # 0.75f

    mul-float/2addr v0, v1

    return v0
.end method

.method abstract isAtEquilibrium(FF)Z
.end method

.method public isRunning()Z
    .registers 2

    iget-boolean v0, p0, Lmiui/animation/physics/DynamicAnimation;->mRunning:Z

    return v0
.end method

.method public removeEndListener(Lmiui/animation/physics/DynamicAnimation$OnAnimationEndListener;)V
    .registers 3

    iget-object v0, p0, Lmiui/animation/physics/DynamicAnimation;->mEndListeners:Ljava/util/ArrayList;

    invoke-static {v0, p1}, Lmiui/animation/physics/DynamicAnimation;->removeEntry(Ljava/util/ArrayList;Ljava/lang/Object;)V

    return-void
.end method

.method public removeUpdateListener(Lmiui/animation/physics/DynamicAnimation$OnAnimationUpdateListener;)V
    .registers 3

    iget-object v0, p0, Lmiui/animation/physics/DynamicAnimation;->mUpdateListeners:Ljava/util/ArrayList;

    invoke-static {v0, p1}, Lmiui/animation/physics/DynamicAnimation;->removeEntry(Ljava/util/ArrayList;Ljava/lang/Object;)V

    return-void
.end method

.method public setMaxValue(F)Lmiui/animation/physics/DynamicAnimation;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F)TT;"
        }
    .end annotation

    iput p1, p0, Lmiui/animation/physics/DynamicAnimation;->mMaxValue:F

    return-object p0
.end method

.method public setMinValue(F)Lmiui/animation/physics/DynamicAnimation;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F)TT;"
        }
    .end annotation

    iput p1, p0, Lmiui/animation/physics/DynamicAnimation;->mMinValue:F

    return-object p0
.end method

.method public setMinimumVisibleChange(F)Lmiui/animation/physics/DynamicAnimation;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F)TT;"
        }
    .end annotation

    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-lez v0, :cond_e

    iput p1, p0, Lmiui/animation/physics/DynamicAnimation;->mMinVisibleChange:F

    const/high16 v0, 0x3f400000    # 0.75f

    mul-float/2addr v0, p1

    invoke-virtual {p0, v0}, Lmiui/animation/physics/DynamicAnimation;->setValueThreshold(F)V

    return-object p0

    :cond_e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Minimum visible change must be positive."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method setPropertyValue(F)V
    .registers 6

    iget-object v0, p0, Lmiui/animation/physics/DynamicAnimation;->mProperty:Lmiui/animation/property/FloatProperty;

    iget-object v1, p0, Lmiui/animation/physics/DynamicAnimation;->mTarget:Ljava/lang/Object;

    invoke-virtual {v0, v1, p1}, Lmiui/animation/property/FloatProperty;->setValue(Ljava/lang/Object;F)V

    const/4 v0, 0x0

    :goto_8
    iget-object v1, p0, Lmiui/animation/physics/DynamicAnimation;->mUpdateListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_2a

    iget-object v1, p0, Lmiui/animation/physics/DynamicAnimation;->mUpdateListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_27

    iget-object v1, p0, Lmiui/animation/physics/DynamicAnimation;->mUpdateListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/animation/physics/DynamicAnimation$OnAnimationUpdateListener;

    iget v2, p0, Lmiui/animation/physics/DynamicAnimation;->mValue:F

    iget v3, p0, Lmiui/animation/physics/DynamicAnimation;->mVelocity:F

    invoke-interface {v1, p0, v2, v3}, Lmiui/animation/physics/DynamicAnimation$OnAnimationUpdateListener;->onAnimationUpdate(Lmiui/animation/physics/DynamicAnimation;FF)V

    :cond_27
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    :cond_2a
    iget-object v0, p0, Lmiui/animation/physics/DynamicAnimation;->mUpdateListeners:Ljava/util/ArrayList;

    invoke-static {v0}, Lmiui/animation/physics/DynamicAnimation;->removeNullEntries(Ljava/util/ArrayList;)V

    return-void
.end method

.method public setStartDelay(J)V
    .registers 5

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gez v0, :cond_8

    const-wide/16 p1, 0x0

    :cond_8
    iput-wide p1, p0, Lmiui/animation/physics/DynamicAnimation;->mStartDelay:J

    return-void
.end method

.method public setStartValue(F)Lmiui/animation/physics/DynamicAnimation;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F)TT;"
        }
    .end annotation

    iput p1, p0, Lmiui/animation/physics/DynamicAnimation;->mValue:F

    const/4 v0, 0x1

    iput-boolean v0, p0, Lmiui/animation/physics/DynamicAnimation;->mStartValueIsSet:Z

    return-object p0
.end method

.method public setStartVelocity(F)Lmiui/animation/physics/DynamicAnimation;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F)TT;"
        }
    .end annotation

    iput p1, p0, Lmiui/animation/physics/DynamicAnimation;->mVelocity:F

    return-object p0
.end method

.method abstract setValueThreshold(F)V
.end method

.method public start()V
    .registers 3

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_12

    iget-boolean v0, p0, Lmiui/animation/physics/DynamicAnimation;->mRunning:Z

    if-nez v0, :cond_11

    invoke-direct {p0}, Lmiui/animation/physics/DynamicAnimation;->startAnimationInternal()V

    :cond_11
    return-void

    :cond_12
    new-instance v0, Landroid/util/AndroidRuntimeException;

    const-string v1, "Animations may only be started on the main thread"

    invoke-direct {v0, v1}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method abstract updateValueAndVelocity(J)Z
.end method
