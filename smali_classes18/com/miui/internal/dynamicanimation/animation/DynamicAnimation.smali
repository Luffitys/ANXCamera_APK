.class public abstract Lcom/miui/internal/dynamicanimation/animation/DynamicAnimation;
.super Ljava/lang/Object;
.source "DynamicAnimation.java"

# interfaces
.implements Lcom/miui/internal/dynamicanimation/animation/AnimationHandler$AnimationFrameCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/internal/dynamicanimation/animation/DynamicAnimation$OnAnimationUpdateListener;,
        Lcom/miui/internal/dynamicanimation/animation/DynamicAnimation$OnAnimationEndListener;,
        Lcom/miui/internal/dynamicanimation/animation/DynamicAnimation$MassState;,
        Lcom/miui/internal/dynamicanimation/animation/DynamicAnimation$ViewProperty;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/miui/internal/dynamicanimation/animation/DynamicAnimation<",
        "TT;>;>",
        "Ljava/lang/Object;",
        "Lcom/miui/internal/dynamicanimation/animation/AnimationHandler$AnimationFrameCallback;"
    }
.end annotation


# static fields
.field public static final ALPHA:Lcom/miui/internal/dynamicanimation/animation/DynamicAnimation$ViewProperty;

.field public static final MIN_VISIBLE_CHANGE_ALPHA:F = 0.00390625f

.field public static final MIN_VISIBLE_CHANGE_PIXELS:F = 1.0f

.field public static final MIN_VISIBLE_CHANGE_ROTATION_DEGREES:F = 0.1f

.field public static final MIN_VISIBLE_CHANGE_SCALE:F = 0.002f

.field public static final ROTATION:Lcom/miui/internal/dynamicanimation/animation/DynamicAnimation$ViewProperty;

.field public static final ROTATION_X:Lcom/miui/internal/dynamicanimation/animation/DynamicAnimation$ViewProperty;

.field public static final ROTATION_Y:Lcom/miui/internal/dynamicanimation/animation/DynamicAnimation$ViewProperty;

.field public static final SCALE_X:Lcom/miui/internal/dynamicanimation/animation/DynamicAnimation$ViewProperty;

.field public static final SCALE_Y:Lcom/miui/internal/dynamicanimation/animation/DynamicAnimation$ViewProperty;

.field public static final SCROLL_X:Lcom/miui/internal/dynamicanimation/animation/DynamicAnimation$ViewProperty;

.field public static final SCROLL_Y:Lcom/miui/internal/dynamicanimation/animation/DynamicAnimation$ViewProperty;

.field private static final THRESHOLD_MULTIPLIER:F = 0.75f

.field public static final TRANSLATION_X:Lcom/miui/internal/dynamicanimation/animation/DynamicAnimation$ViewProperty;

.field public static final TRANSLATION_Y:Lcom/miui/internal/dynamicanimation/animation/DynamicAnimation$ViewProperty;

.field public static final TRANSLATION_Z:Lcom/miui/internal/dynamicanimation/animation/DynamicAnimation$ViewProperty;

.field private static final UNSET:F = 3.4028235E38f

.field public static final X:Lcom/miui/internal/dynamicanimation/animation/DynamicAnimation$ViewProperty;

.field public static final Y:Lcom/miui/internal/dynamicanimation/animation/DynamicAnimation$ViewProperty;

.field public static final Z:Lcom/miui/internal/dynamicanimation/animation/DynamicAnimation$ViewProperty;


# instance fields
.field private final mEndListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/miui/internal/dynamicanimation/animation/DynamicAnimation$OnAnimationEndListener;",
            ">;"
        }
    .end annotation
.end field

.field private mLastFrameTime:J

.field private mManualAnim:Z

.field mMaxValue:F

.field mMinValue:F

.field private mMinVisibleChange:F

.field final mProperty:Lcom/miui/internal/dynamicanimation/animation/FloatPropertyCompat;

.field mRunning:Z

.field mStartValueIsSet:Z

.field final mTarget:Ljava/lang/Object;

.field private final mUpdateListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/miui/internal/dynamicanimation/animation/DynamicAnimation$OnAnimationUpdateListener;",
            ">;"
        }
    .end annotation
.end field

.field mValue:F

.field mVelocity:F


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/miui/internal/dynamicanimation/animation/DynamicAnimation$1;

    const-string v1, "translationX"

    invoke-direct {v0, v1}, Lcom/miui/internal/dynamicanimation/animation/DynamicAnimation$1;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/miui/internal/dynamicanimation/animation/DynamicAnimation;->TRANSLATION_X:Lcom/miui/internal/dynamicanimation/animation/DynamicAnimation$ViewProperty;

    new-instance v0, Lcom/miui/internal/dynamicanimation/animation/DynamicAnimation$2;

    const-string v1, "translationY"

    invoke-direct {v0, v1}, Lcom/miui/internal/dynamicanimation/animation/DynamicAnimation$2;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/miui/internal/dynamicanimation/animation/DynamicAnimation;->TRANSLATION_Y:Lcom/miui/internal/dynamicanimation/animation/DynamicAnimation$ViewProperty;

    new-instance v0, Lcom/miui/internal/dynamicanimation/animation/DynamicAnimation$3;

    const-string v1, "translationZ"

    invoke-direct {v0, v1}, Lcom/miui/internal/dynamicanimation/animation/DynamicAnimation$3;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/miui/internal/dynamicanimation/animation/DynamicAnimation;->TRANSLATION_Z:Lcom/miui/internal/dynamicanimation/animation/DynamicAnimation$ViewProperty;

    new-instance v0, Lcom/miui/internal/dynamicanimation/animation/DynamicAnimation$4;

    const-string v1, "scaleX"

    invoke-direct {v0, v1}, Lcom/miui/internal/dynamicanimation/animation/DynamicAnimation$4;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/miui/internal/dynamicanimation/animation/DynamicAnimation;->SCALE_X:Lcom/miui/internal/dynamicanimation/animation/DynamicAnimation$ViewProperty;

    new-instance v0, Lcom/miui/internal/dynamicanimation/animation/DynamicAnimation$5;

    const-string v1, "scaleY"

    invoke-direct {v0, v1}, Lcom/miui/internal/dynamicanimation/animation/DynamicAnimation$5;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/miui/internal/dynamicanimation/animation/DynamicAnimation;->SCALE_Y:Lcom/miui/internal/dynamicanimation/animation/DynamicAnimation$ViewProperty;

    new-instance v0, Lcom/miui/internal/dynamicanimation/animation/DynamicAnimation$6;

    const-string v1, "rotation"

    invoke-direct {v0, v1}, Lcom/miui/internal/dynamicanimation/animation/DynamicAnimation$6;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/miui/internal/dynamicanimation/animation/DynamicAnimation;->ROTATION:Lcom/miui/internal/dynamicanimation/animation/DynamicAnimation$ViewProperty;

    new-instance v0, Lcom/miui/internal/dynamicanimation/animation/DynamicAnimation$7;

    const-string v1, "rotationX"

    invoke-direct {v0, v1}, Lcom/miui/internal/dynamicanimation/animation/DynamicAnimation$7;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/miui/internal/dynamicanimation/animation/DynamicAnimation;->ROTATION_X:Lcom/miui/internal/dynamicanimation/animation/DynamicAnimation$ViewProperty;

    new-instance v0, Lcom/miui/internal/dynamicanimation/animation/DynamicAnimation$8;

    const-string v1, "rotationY"

    invoke-direct {v0, v1}, Lcom/miui/internal/dynamicanimation/animation/DynamicAnimation$8;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/miui/internal/dynamicanimation/animation/DynamicAnimation;->ROTATION_Y:Lcom/miui/internal/dynamicanimation/animation/DynamicAnimation$ViewProperty;

    new-instance v0, Lcom/miui/internal/dynamicanimation/animation/DynamicAnimation$9;

    const-string v1, "x"

    invoke-direct {v0, v1}, Lcom/miui/internal/dynamicanimation/animation/DynamicAnimation$9;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/miui/internal/dynamicanimation/animation/DynamicAnimation;->X:Lcom/miui/internal/dynamicanimation/animation/DynamicAnimation$ViewProperty;

    new-instance v0, Lcom/miui/internal/dynamicanimation/animation/DynamicAnimation$10;

    const-string v1, "y"

    invoke-direct {v0, v1}, Lcom/miui/internal/dynamicanimation/animation/DynamicAnimation$10;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/miui/internal/dynamicanimation/animation/DynamicAnimation;->Y:Lcom/miui/internal/dynamicanimation/animation/DynamicAnimation$ViewProperty;

    new-instance v0, Lcom/miui/internal/dynamicanimation/animation/DynamicAnimation$11;

    const-string v1, "z"

    invoke-direct {v0, v1}, Lcom/miui/internal/dynamicanimation/animation/DynamicAnimation$11;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/miui/internal/dynamicanimation/animation/DynamicAnimation;->Z:Lcom/miui/internal/dynamicanimation/animation/DynamicAnimation$ViewProperty;

    new-instance v0, Lcom/miui/internal/dynamicanimation/animation/DynamicAnimation$12;

    const-string v1, "alpha"

    invoke-direct {v0, v1}, Lcom/miui/internal/dynamicanimation/animation/DynamicAnimation$12;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/miui/internal/dynamicanimation/animation/DynamicAnimation;->ALPHA:Lcom/miui/internal/dynamicanimation/animation/DynamicAnimation$ViewProperty;

    new-instance v0, Lcom/miui/internal/dynamicanimation/animation/DynamicAnimation$13;

    const-string v1, "scrollX"

    invoke-direct {v0, v1}, Lcom/miui/internal/dynamicanimation/animation/DynamicAnimation$13;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/miui/internal/dynamicanimation/animation/DynamicAnimation;->SCROLL_X:Lcom/miui/internal/dynamicanimation/animation/DynamicAnimation$ViewProperty;

    new-instance v0, Lcom/miui/internal/dynamicanimation/animation/DynamicAnimation$14;

    const-string v1, "scrollY"

    invoke-direct {v0, v1}, Lcom/miui/internal/dynamicanimation/animation/DynamicAnimation$14;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/miui/internal/dynamicanimation/animation/DynamicAnimation;->SCROLL_Y:Lcom/miui/internal/dynamicanimation/animation/DynamicAnimation$ViewProperty;

    return-void
.end method

.method constructor <init>(Lcom/miui/internal/dynamicanimation/animation/FloatValueHolder;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/miui/internal/dynamicanimation/animation/DynamicAnimation;->mVelocity:F

    const v0, 0x7f7fffff    # Float.MAX_VALUE

    iput v0, p0, Lcom/miui/internal/dynamicanimation/animation/DynamicAnimation;->mValue:F

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/miui/internal/dynamicanimation/animation/DynamicAnimation;->mStartValueIsSet:Z

    iput-boolean v1, p0, Lcom/miui/internal/dynamicanimation/animation/DynamicAnimation;->mRunning:Z

    iput v0, p0, Lcom/miui/internal/dynamicanimation/animation/DynamicAnimation;->mMaxValue:F

    neg-float v0, v0

    iput v0, p0, Lcom/miui/internal/dynamicanimation/animation/DynamicAnimation;->mMinValue:F

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/miui/internal/dynamicanimation/animation/DynamicAnimation;->mLastFrameTime:J

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/internal/dynamicanimation/animation/DynamicAnimation;->mEndListeners:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/internal/dynamicanimation/animation/DynamicAnimation;->mUpdateListeners:Ljava/util/ArrayList;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/internal/dynamicanimation/animation/DynamicAnimation;->mTarget:Ljava/lang/Object;

    new-instance v0, Lcom/miui/internal/dynamicanimation/animation/DynamicAnimation$15;

    const-string v1, "FloatValueHolder"

    invoke-direct {v0, p0, v1, p1}, Lcom/miui/internal/dynamicanimation/animation/DynamicAnimation$15;-><init>(Lcom/miui/internal/dynamicanimation/animation/DynamicAnimation;Ljava/lang/String;Lcom/miui/internal/dynamicanimation/animation/FloatValueHolder;)V

    iput-object v0, p0, Lcom/miui/internal/dynamicanimation/animation/DynamicAnimation;->mProperty:Lcom/miui/internal/dynamicanimation/animation/FloatPropertyCompat;

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/miui/internal/dynamicanimation/animation/DynamicAnimation;->mMinVisibleChange:F

    return-void
.end method

.method constructor <init>(Ljava/lang/Object;Lcom/miui/internal/dynamicanimation/animation/FloatPropertyCompat;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            ">(TK;",
            "Lcom/miui/internal/dynamicanimation/animation/FloatPropertyCompat<",
            "TK;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/miui/internal/dynamicanimation/animation/DynamicAnimation;->mVelocity:F

    const v0, 0x7f7fffff    # Float.MAX_VALUE

    iput v0, p0, Lcom/miui/internal/dynamicanimation/animation/DynamicAnimation;->mValue:F

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/miui/internal/dynamicanimation/animation/DynamicAnimation;->mStartValueIsSet:Z

    iput-boolean v1, p0, Lcom/miui/internal/dynamicanimation/animation/DynamicAnimation;->mRunning:Z

    iput v0, p0, Lcom/miui/internal/dynamicanimation/animation/DynamicAnimation;->mMaxValue:F

    neg-float v0, v0

    iput v0, p0, Lcom/miui/internal/dynamicanimation/animation/DynamicAnimation;->mMinValue:F

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/miui/internal/dynamicanimation/animation/DynamicAnimation;->mLastFrameTime:J

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/internal/dynamicanimation/animation/DynamicAnimation;->mEndListeners:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/internal/dynamicanimation/animation/DynamicAnimation;->mUpdateListeners:Ljava/util/ArrayList;

    iput-object p1, p0, Lcom/miui/internal/dynamicanimation/animation/DynamicAnimation;->mTarget:Ljava/lang/Object;

    iput-object p2, p0, Lcom/miui/internal/dynamicanimation/animation/DynamicAnimation;->mProperty:Lcom/miui/internal/dynamicanimation/animation/FloatPropertyCompat;

    sget-object v0, Lcom/miui/internal/dynamicanimation/animation/DynamicAnimation;->ROTATION:Lcom/miui/internal/dynamicanimation/animation/DynamicAnimation$ViewProperty;

    if-eq p2, v0, :cond_52

    sget-object v0, Lcom/miui/internal/dynamicanimation/animation/DynamicAnimation;->ROTATION_X:Lcom/miui/internal/dynamicanimation/animation/DynamicAnimation$ViewProperty;

    if-eq p2, v0, :cond_52

    sget-object v0, Lcom/miui/internal/dynamicanimation/animation/DynamicAnimation;->ROTATION_Y:Lcom/miui/internal/dynamicanimation/animation/DynamicAnimation$ViewProperty;

    if-ne p2, v0, :cond_38

    goto :goto_52

    :cond_38
    sget-object v0, Lcom/miui/internal/dynamicanimation/animation/DynamicAnimation;->ALPHA:Lcom/miui/internal/dynamicanimation/animation/DynamicAnimation$ViewProperty;

    const/high16 v1, 0x3b800000    # 0.00390625f

    if-ne p2, v0, :cond_41

    iput v1, p0, Lcom/miui/internal/dynamicanimation/animation/DynamicAnimation;->mMinVisibleChange:F

    goto :goto_57

    :cond_41
    sget-object v0, Lcom/miui/internal/dynamicanimation/animation/DynamicAnimation;->SCALE_X:Lcom/miui/internal/dynamicanimation/animation/DynamicAnimation$ViewProperty;

    if-eq p2, v0, :cond_4f

    sget-object v0, Lcom/miui/internal/dynamicanimation/animation/DynamicAnimation;->SCALE_Y:Lcom/miui/internal/dynamicanimation/animation/DynamicAnimation$ViewProperty;

    if-ne p2, v0, :cond_4a

    goto :goto_4f

    :cond_4a
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/miui/internal/dynamicanimation/animation/DynamicAnimation;->mMinVisibleChange:F

    goto :goto_57

    :cond_4f
    :goto_4f
    iput v1, p0, Lcom/miui/internal/dynamicanimation/animation/DynamicAnimation;->mMinVisibleChange:F

    goto :goto_57

    :cond_52
    :goto_52
    const v0, 0x3dcccccd    # 0.1f

    iput v0, p0, Lcom/miui/internal/dynamicanimation/animation/DynamicAnimation;->mMinVisibleChange:F

    :goto_57
    return-void
.end method

.method private endAnimationInternal(Z)V
    .registers 6

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/internal/dynamicanimation/animation/DynamicAnimation;->mRunning:Z

    iget-boolean v1, p0, Lcom/miui/internal/dynamicanimation/animation/DynamicAnimation;->mManualAnim:Z

    if-nez v1, :cond_e

    invoke-static {}, Lcom/miui/internal/dynamicanimation/animation/AnimationHandler;->getInstance()Lcom/miui/internal/dynamicanimation/animation/AnimationHandler;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/miui/internal/dynamicanimation/animation/AnimationHandler;->removeCallback(Lcom/miui/internal/dynamicanimation/animation/AnimationHandler$AnimationFrameCallback;)V

    :cond_e
    iput-boolean v0, p0, Lcom/miui/internal/dynamicanimation/animation/DynamicAnimation;->mManualAnim:Z

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/miui/internal/dynamicanimation/animation/DynamicAnimation;->mLastFrameTime:J

    iput-boolean v0, p0, Lcom/miui/internal/dynamicanimation/animation/DynamicAnimation;->mStartValueIsSet:Z

    const/4 v0, 0x0

    :goto_17
    iget-object v1, p0, Lcom/miui/internal/dynamicanimation/animation/DynamicAnimation;->mEndListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_39

    iget-object v1, p0, Lcom/miui/internal/dynamicanimation/animation/DynamicAnimation;->mEndListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_36

    iget-object v1, p0, Lcom/miui/internal/dynamicanimation/animation/DynamicAnimation;->mEndListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/internal/dynamicanimation/animation/DynamicAnimation$OnAnimationEndListener;

    iget v2, p0, Lcom/miui/internal/dynamicanimation/animation/DynamicAnimation;->mValue:F

    iget v3, p0, Lcom/miui/internal/dynamicanimation/animation/DynamicAnimation;->mVelocity:F

    invoke-interface {v1, p0, p1, v2, v3}, Lcom/miui/internal/dynamicanimation/animation/DynamicAnimation$OnAnimationEndListener;->onAnimationEnd(Lcom/miui/internal/dynamicanimation/animation/DynamicAnimation;ZFF)V

    :cond_36
    add-int/lit8 v0, v0, 0x1

    goto :goto_17

    :cond_39
    iget-object v0, p0, Lcom/miui/internal/dynamicanimation/animation/DynamicAnimation;->mEndListeners:Ljava/util/ArrayList;

    invoke-static {v0}, Lcom/miui/internal/dynamicanimation/animation/DynamicAnimation;->removeNullEntries(Ljava/util/ArrayList;)V

    return-void
.end method

.method private getPropertyValue()F
    .registers 3

    iget-object v0, p0, Lcom/miui/internal/dynamicanimation/animation/DynamicAnimation;->mProperty:Lcom/miui/internal/dynamicanimation/animation/FloatPropertyCompat;

    iget-object v1, p0, Lcom/miui/internal/dynamicanimation/animation/DynamicAnimation;->mTarget:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/miui/internal/dynamicanimation/animation/FloatPropertyCompat;->getValue(Ljava/lang/Object;)F

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

.method private startAnimationInternal(Z)V
    .registers 5

    iget-boolean v0, p0, Lcom/miui/internal/dynamicanimation/animation/DynamicAnimation;->mRunning:Z

    if-nez v0, :cond_35

    iput-boolean p1, p0, Lcom/miui/internal/dynamicanimation/animation/DynamicAnimation;->mManualAnim:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/internal/dynamicanimation/animation/DynamicAnimation;->mRunning:Z

    iget-boolean v0, p0, Lcom/miui/internal/dynamicanimation/animation/DynamicAnimation;->mStartValueIsSet:Z

    if-nez v0, :cond_13

    invoke-direct {p0}, Lcom/miui/internal/dynamicanimation/animation/DynamicAnimation;->getPropertyValue()F

    move-result v0

    iput v0, p0, Lcom/miui/internal/dynamicanimation/animation/DynamicAnimation;->mValue:F

    :cond_13
    iget v0, p0, Lcom/miui/internal/dynamicanimation/animation/DynamicAnimation;->mValue:F

    iget v1, p0, Lcom/miui/internal/dynamicanimation/animation/DynamicAnimation;->mMaxValue:F

    cmpl-float v1, v0, v1

    if-gtz v1, :cond_2d

    iget v1, p0, Lcom/miui/internal/dynamicanimation/animation/DynamicAnimation;->mMinValue:F

    cmpg-float v0, v0, v1

    if-ltz v0, :cond_2d

    if-nez p1, :cond_35

    invoke-static {}, Lcom/miui/internal/dynamicanimation/animation/AnimationHandler;->getInstance()Lcom/miui/internal/dynamicanimation/animation/AnimationHandler;

    move-result-object v0

    const-wide/16 v1, 0x0

    invoke-virtual {v0, p0, v1, v2}, Lcom/miui/internal/dynamicanimation/animation/AnimationHandler;->addAnimationFrameCallback(Lcom/miui/internal/dynamicanimation/animation/AnimationHandler$AnimationFrameCallback;J)V

    goto :goto_35

    :cond_2d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Starting value need to be in between min value and max value"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_35
    :goto_35
    return-void
.end method


# virtual methods
.method public addEndListener(Lcom/miui/internal/dynamicanimation/animation/DynamicAnimation$OnAnimationEndListener;)Lcom/miui/internal/dynamicanimation/animation/DynamicAnimation;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/miui/internal/dynamicanimation/animation/DynamicAnimation$OnAnimationEndListener;",
            ")TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/miui/internal/dynamicanimation/animation/DynamicAnimation;->mEndListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    iget-object v0, p0, Lcom/miui/internal/dynamicanimation/animation/DynamicAnimation;->mEndListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_d
    return-object p0
.end method

.method public addUpdateListener(Lcom/miui/internal/dynamicanimation/animation/DynamicAnimation$OnAnimationUpdateListener;)Lcom/miui/internal/dynamicanimation/animation/DynamicAnimation;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/miui/internal/dynamicanimation/animation/DynamicAnimation$OnAnimationUpdateListener;",
            ")TT;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/miui/internal/dynamicanimation/animation/DynamicAnimation;->isRunning()Z

    move-result v0

    if-nez v0, :cond_14

    iget-object v0, p0, Lcom/miui/internal/dynamicanimation/animation/DynamicAnimation;->mUpdateListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_13

    iget-object v0, p0, Lcom/miui/internal/dynamicanimation/animation/DynamicAnimation;->mUpdateListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_13
    return-object p0

    :cond_14
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Error: Update listeners must be added beforethe animation."

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

    iget-boolean v0, p0, Lcom/miui/internal/dynamicanimation/animation/DynamicAnimation;->mRunning:Z

    if-eqz v0, :cond_12

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/miui/internal/dynamicanimation/animation/DynamicAnimation;->endAnimationInternal(Z)V

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

    iget-wide v0, p0, Lcom/miui/internal/dynamicanimation/animation/DynamicAnimation;->mLastFrameTime:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    const/4 v3, 0x0

    if-nez v2, :cond_11

    iput-wide p1, p0, Lcom/miui/internal/dynamicanimation/animation/DynamicAnimation;->mLastFrameTime:J

    iget v0, p0, Lcom/miui/internal/dynamicanimation/animation/DynamicAnimation;->mValue:F

    invoke-virtual {p0, v0}, Lcom/miui/internal/dynamicanimation/animation/DynamicAnimation;->setPropertyValue(F)V

    return v3

    :cond_11
    sub-long v0, p1, v0

    iput-wide p1, p0, Lcom/miui/internal/dynamicanimation/animation/DynamicAnimation;->mLastFrameTime:J

    invoke-virtual {p0, v0, v1}, Lcom/miui/internal/dynamicanimation/animation/DynamicAnimation;->updateValueAndVelocity(J)Z

    move-result v2

    iget v4, p0, Lcom/miui/internal/dynamicanimation/animation/DynamicAnimation;->mValue:F

    iget v5, p0, Lcom/miui/internal/dynamicanimation/animation/DynamicAnimation;->mMaxValue:F

    invoke-static {v4, v5}, Ljava/lang/Math;->min(FF)F

    move-result v4

    iput v4, p0, Lcom/miui/internal/dynamicanimation/animation/DynamicAnimation;->mValue:F

    iget v5, p0, Lcom/miui/internal/dynamicanimation/animation/DynamicAnimation;->mMinValue:F

    invoke-static {v4, v5}, Ljava/lang/Math;->max(FF)F

    move-result v4

    iput v4, p0, Lcom/miui/internal/dynamicanimation/animation/DynamicAnimation;->mValue:F

    invoke-virtual {p0, v4}, Lcom/miui/internal/dynamicanimation/animation/DynamicAnimation;->setPropertyValue(F)V

    if-eqz v2, :cond_33

    invoke-direct {p0, v3}, Lcom/miui/internal/dynamicanimation/animation/DynamicAnimation;->endAnimationInternal(Z)V

    :cond_33
    return v2
.end method

.method abstract getAcceleration(FF)F
.end method

.method public getMinimumVisibleChange()F
    .registers 2

    iget v0, p0, Lcom/miui/internal/dynamicanimation/animation/DynamicAnimation;->mMinVisibleChange:F

    return v0
.end method

.method getValueThreshold()F
    .registers 3

    iget v0, p0, Lcom/miui/internal/dynamicanimation/animation/DynamicAnimation;->mMinVisibleChange:F

    const/high16 v1, 0x3f400000    # 0.75f

    mul-float/2addr v0, v1

    return v0
.end method

.method abstract isAtEquilibrium(FF)Z
.end method

.method public isRunning()Z
    .registers 2

    iget-boolean v0, p0, Lcom/miui/internal/dynamicanimation/animation/DynamicAnimation;->mRunning:Z

    return v0
.end method

.method public removeEndListener(Lcom/miui/internal/dynamicanimation/animation/DynamicAnimation$OnAnimationEndListener;)V
    .registers 3

    iget-object v0, p0, Lcom/miui/internal/dynamicanimation/animation/DynamicAnimation;->mEndListeners:Ljava/util/ArrayList;

    invoke-static {v0, p1}, Lcom/miui/internal/dynamicanimation/animation/DynamicAnimation;->removeEntry(Ljava/util/ArrayList;Ljava/lang/Object;)V

    return-void
.end method

.method public removeUpdateListener(Lcom/miui/internal/dynamicanimation/animation/DynamicAnimation$OnAnimationUpdateListener;)V
    .registers 3

    iget-object v0, p0, Lcom/miui/internal/dynamicanimation/animation/DynamicAnimation;->mUpdateListeners:Ljava/util/ArrayList;

    invoke-static {v0, p1}, Lcom/miui/internal/dynamicanimation/animation/DynamicAnimation;->removeEntry(Ljava/util/ArrayList;Ljava/lang/Object;)V

    return-void
.end method

.method public setMaxValue(F)Lcom/miui/internal/dynamicanimation/animation/DynamicAnimation;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F)TT;"
        }
    .end annotation

    iput p1, p0, Lcom/miui/internal/dynamicanimation/animation/DynamicAnimation;->mMaxValue:F

    return-object p0
.end method

.method public setMinValue(F)Lcom/miui/internal/dynamicanimation/animation/DynamicAnimation;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F)TT;"
        }
    .end annotation

    iput p1, p0, Lcom/miui/internal/dynamicanimation/animation/DynamicAnimation;->mMinValue:F

    return-object p0
.end method

.method public setMinimumVisibleChange(F)Lcom/miui/internal/dynamicanimation/animation/DynamicAnimation;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F)TT;"
        }
    .end annotation

    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-lez v0, :cond_e

    iput p1, p0, Lcom/miui/internal/dynamicanimation/animation/DynamicAnimation;->mMinVisibleChange:F

    const/high16 v0, 0x3f400000    # 0.75f

    mul-float/2addr v0, p1

    invoke-virtual {p0, v0}, Lcom/miui/internal/dynamicanimation/animation/DynamicAnimation;->setValueThreshold(F)V

    return-object p0

    :cond_e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Minimum visible change must be positive."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method setPropertyValue(F)V
    .registers 6

    iget-object v0, p0, Lcom/miui/internal/dynamicanimation/animation/DynamicAnimation;->mProperty:Lcom/miui/internal/dynamicanimation/animation/FloatPropertyCompat;

    iget-object v1, p0, Lcom/miui/internal/dynamicanimation/animation/DynamicAnimation;->mTarget:Ljava/lang/Object;

    invoke-virtual {v0, v1, p1}, Lcom/miui/internal/dynamicanimation/animation/FloatPropertyCompat;->setValue(Ljava/lang/Object;F)V

    const/4 v0, 0x0

    :goto_8
    iget-object v1, p0, Lcom/miui/internal/dynamicanimation/animation/DynamicAnimation;->mUpdateListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_2a

    iget-object v1, p0, Lcom/miui/internal/dynamicanimation/animation/DynamicAnimation;->mUpdateListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_27

    iget-object v1, p0, Lcom/miui/internal/dynamicanimation/animation/DynamicAnimation;->mUpdateListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/internal/dynamicanimation/animation/DynamicAnimation$OnAnimationUpdateListener;

    iget v2, p0, Lcom/miui/internal/dynamicanimation/animation/DynamicAnimation;->mValue:F

    iget v3, p0, Lcom/miui/internal/dynamicanimation/animation/DynamicAnimation;->mVelocity:F

    invoke-interface {v1, p0, v2, v3}, Lcom/miui/internal/dynamicanimation/animation/DynamicAnimation$OnAnimationUpdateListener;->onAnimationUpdate(Lcom/miui/internal/dynamicanimation/animation/DynamicAnimation;FF)V

    :cond_27
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    :cond_2a
    iget-object v0, p0, Lcom/miui/internal/dynamicanimation/animation/DynamicAnimation;->mUpdateListeners:Ljava/util/ArrayList;

    invoke-static {v0}, Lcom/miui/internal/dynamicanimation/animation/DynamicAnimation;->removeNullEntries(Ljava/util/ArrayList;)V

    return-void
.end method

.method public setStartValue(F)Lcom/miui/internal/dynamicanimation/animation/DynamicAnimation;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F)TT;"
        }
    .end annotation

    iput p1, p0, Lcom/miui/internal/dynamicanimation/animation/DynamicAnimation;->mValue:F

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/internal/dynamicanimation/animation/DynamicAnimation;->mStartValueIsSet:Z

    return-object p0
.end method

.method public setStartVelocity(F)Lcom/miui/internal/dynamicanimation/animation/DynamicAnimation;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F)TT;"
        }
    .end annotation

    iput p1, p0, Lcom/miui/internal/dynamicanimation/animation/DynamicAnimation;->mVelocity:F

    return-object p0
.end method

.method abstract setValueThreshold(F)V
.end method

.method public start()V
    .registers 2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/miui/internal/dynamicanimation/animation/DynamicAnimation;->start(Z)V

    return-void
.end method

.method public start(Z)V
    .registers 4

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_12

    iget-boolean v0, p0, Lcom/miui/internal/dynamicanimation/animation/DynamicAnimation;->mRunning:Z

    if-nez v0, :cond_11

    invoke-direct {p0, p1}, Lcom/miui/internal/dynamicanimation/animation/DynamicAnimation;->startAnimationInternal(Z)V

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
