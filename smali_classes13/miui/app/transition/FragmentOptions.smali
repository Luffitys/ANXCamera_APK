.class public Lmiui/app/transition/FragmentOptions;
.super Ljava/lang/Object;
.source "FragmentOptions.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/app/transition/FragmentOptions$RetainedFragment;,
        Lmiui/app/transition/FragmentOptions$Type;
    }
.end annotation


# static fields
.field private static final KEY_LAUNCH_BOUNDS:Ljava/lang/String; = "miui:fragment.launchBounds"

.field private static final KEY_LAUNCH_COLOR:Ljava/lang/String; = "miui:fragment.launchColor"

.field private static final KEY_LAUNCH_RADIUS:Ljava/lang/String; = "miui:fragment.launchRadius"

.field private static final KEY_LAUNCH_THUMB:Ljava/lang/String; = "miui:fragment.launchThumb"


# instance fields
.field private mColor:I

.field private mPositionRect:Landroid/graphics/Rect;

.field private mRadius:I

.field private mThumb:Landroid/graphics/Bitmap;

.field private mWorkFragment:Lmiui/app/transition/FragmentOptions$RetainedFragment;


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private constructor <init>(Landroid/app/Activity;Landroid/graphics/Rect;Landroid/graphics/Bitmap;II)V
    .registers 10

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lmiui/app/transition/FragmentOptions;->mPositionRect:Landroid/graphics/Rect;

    iput p4, p0, Lmiui/app/transition/FragmentOptions;->mColor:I

    iput p5, p0, Lmiui/app/transition/FragmentOptions;->mRadius:I

    iget-object v0, p0, Lmiui/app/transition/FragmentOptions;->mWorkFragment:Lmiui/app/transition/FragmentOptions$RetainedFragment;

    if-nez v0, :cond_31

    invoke-virtual {p1}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const-string v1, "miui:fragment.launchThumb"

    invoke-virtual {v0, v1}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v2

    check-cast v2, Lmiui/app/transition/FragmentOptions$RetainedFragment;

    iput-object v2, p0, Lmiui/app/transition/FragmentOptions;->mWorkFragment:Lmiui/app/transition/FragmentOptions$RetainedFragment;

    if-nez v2, :cond_31

    new-instance v2, Lmiui/app/transition/FragmentOptions$RetainedFragment;

    invoke-direct {v2}, Lmiui/app/transition/FragmentOptions$RetainedFragment;-><init>()V

    iput-object v2, p0, Lmiui/app/transition/FragmentOptions;->mWorkFragment:Lmiui/app/transition/FragmentOptions$RetainedFragment;

    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v2

    iget-object v3, p0, Lmiui/app/transition/FragmentOptions;->mWorkFragment:Lmiui/app/transition/FragmentOptions$RetainedFragment;

    invoke-virtual {v2, v3, v1}, Landroid/app/FragmentTransaction;->add(Landroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentTransaction;->commit()I

    :cond_31
    iget-object v0, p0, Lmiui/app/transition/FragmentOptions;->mWorkFragment:Lmiui/app/transition/FragmentOptions$RetainedFragment;

    invoke-virtual {v0, p3}, Lmiui/app/transition/FragmentOptions$RetainedFragment;->setThumb(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method private constructor <init>(Landroid/app/Activity;Landroid/os/Bundle;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "miui:fragment.launchBounds"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    iput-object v0, p0, Lmiui/app/transition/FragmentOptions;->mPositionRect:Landroid/graphics/Rect;

    const-string v0, "miui:fragment.launchColor"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lmiui/app/transition/FragmentOptions;->mColor:I

    const-string v0, "miui:fragment.launchRadius"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lmiui/app/transition/FragmentOptions;->mRadius:I

    iget-object v0, p0, Lmiui/app/transition/FragmentOptions;->mWorkFragment:Lmiui/app/transition/FragmentOptions$RetainedFragment;

    if-nez v0, :cond_2f

    invoke-virtual {p1}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const-string v1, "miui:fragment.launchThumb"

    invoke-virtual {v0, v1}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v1

    check-cast v1, Lmiui/app/transition/FragmentOptions$RetainedFragment;

    iput-object v1, p0, Lmiui/app/transition/FragmentOptions;->mWorkFragment:Lmiui/app/transition/FragmentOptions$RetainedFragment;

    :cond_2f
    iget-object v0, p0, Lmiui/app/transition/FragmentOptions;->mWorkFragment:Lmiui/app/transition/FragmentOptions$RetainedFragment;

    if-eqz v0, :cond_39

    invoke-virtual {v0}, Lmiui/app/transition/FragmentOptions$RetainedFragment;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lmiui/app/transition/FragmentOptions;->mThumb:Landroid/graphics/Bitmap;

    :cond_39
    return-void
.end method

.method private static fromBundle(Landroid/app/Activity;Landroid/os/Bundle;)Lmiui/app/transition/FragmentOptions;
    .registers 3

    if-eqz p1, :cond_8

    new-instance v0, Lmiui/app/transition/FragmentOptions;

    invoke-direct {v0, p0, p1}, Lmiui/app/transition/FragmentOptions;-><init>(Landroid/app/Activity;Landroid/os/Bundle;)V

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return-object v0
.end method

.method public static newFragmentTransition(Landroid/app/Activity;Landroid/os/Bundle;Lmiui/app/transition/FragmentOptions$Type;)Landroid/transition/Transition;
    .registers 6

    sget-object v0, Lmiui/app/transition/FragmentOptions$1;->$SwitchMap$miui$app$transition$FragmentOptions$Type:[I

    invoke-virtual {p2}, Lmiui/app/transition/FragmentOptions$Type;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2b

    const/4 v1, 0x2

    if-ne v0, v1, :cond_14

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lmiui/app/transition/FragmentOptions;->newScaleTransition(Landroid/app/Activity;Landroid/os/Bundle;Z)Landroid/transition/Transition;

    move-result-object v0

    goto :goto_30

    :cond_14
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot create transition: type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2b
    invoke-static {p0, p1, v1}, Lmiui/app/transition/FragmentOptions;->newScaleTransition(Landroid/app/Activity;Landroid/os/Bundle;Z)Landroid/transition/Transition;

    move-result-object v0

    nop

    :goto_30
    return-object v0
.end method

.method public static newFragmentTransition(Lmiui/app/transition/FragmentOptions$Type;)Landroid/transition/Transition;
    .registers 4

    sget-object v0, Lmiui/app/transition/FragmentOptions$1;->$SwitchMap$miui$app$transition$FragmentOptions$Type:[I

    invoke-virtual {p0}, Lmiui/app/transition/FragmentOptions$Type;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2b

    const/4 v1, 0x4

    if-ne v0, v1, :cond_14

    new-instance v0, Lmiui/app/transition/ExitFade;

    invoke-direct {v0}, Lmiui/app/transition/ExitFade;-><init>()V

    goto :goto_31

    :cond_14
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot create transition: type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2b
    new-instance v0, Lmiui/app/transition/PhysicalFade;

    invoke-direct {v0}, Lmiui/app/transition/PhysicalFade;-><init>()V

    nop

    :goto_31
    return-object v0
.end method

.method private static newScaleTransition(Landroid/app/Activity;Landroid/os/Bundle;Z)Landroid/transition/Transition;
    .registers 5

    invoke-static {p0, p1}, Lmiui/app/transition/FragmentOptions;->fromBundle(Landroid/app/Activity;Landroid/os/Bundle;)Lmiui/app/transition/FragmentOptions;

    move-result-object v0

    if-eqz v0, :cond_c

    new-instance v1, Lmiui/app/transition/ScaleUpOrDown;

    invoke-direct {v1, p0, v0, p2}, Lmiui/app/transition/ScaleUpOrDown;-><init>(Landroid/app/Activity;Lmiui/app/transition/FragmentOptions;Z)V

    return-object v1

    :cond_c
    const/4 v1, 0x0

    return-object v1
.end method

.method public static newTransitionBundle(Landroid/app/Activity;Landroid/graphics/Rect;Landroid/graphics/Bitmap;II)Landroid/os/Bundle;
    .registers 12

    new-instance v6, Lmiui/app/transition/FragmentOptions;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lmiui/app/transition/FragmentOptions;-><init>(Landroid/app/Activity;Landroid/graphics/Rect;Landroid/graphics/Bitmap;II)V

    invoke-direct {v0}, Lmiui/app/transition/FragmentOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v1

    return-object v1
.end method

.method private toBundle()Landroid/os/Bundle;
    .registers 4

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iget-object v1, p0, Lmiui/app/transition/FragmentOptions;->mPositionRect:Landroid/graphics/Rect;

    const-string v2, "miui:fragment.launchBounds"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    iget v1, p0, Lmiui/app/transition/FragmentOptions;->mColor:I

    const-string v2, "miui:fragment.launchColor"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget v1, p0, Lmiui/app/transition/FragmentOptions;->mRadius:I

    const-string v2, "miui:fragment.launchRadius"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object v0
.end method


# virtual methods
.method getColor()I
    .registers 2

    iget v0, p0, Lmiui/app/transition/FragmentOptions;->mColor:I

    return v0
.end method

.method getPositionRect()Landroid/graphics/Rect;
    .registers 2

    iget-object v0, p0, Lmiui/app/transition/FragmentOptions;->mPositionRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method getRadius()I
    .registers 2

    iget v0, p0, Lmiui/app/transition/FragmentOptions;->mRadius:I

    return v0
.end method

.method getThumb()Landroid/graphics/Bitmap;
    .registers 2

    iget-object v0, p0, Lmiui/app/transition/FragmentOptions;->mThumb:Landroid/graphics/Bitmap;

    return-object v0
.end method
