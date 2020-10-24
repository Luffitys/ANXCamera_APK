.class public Lmiui/app/transition/FragmentOptions;
.super Ljava/lang/Object;
.source ""


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
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private constructor <init>(Landroid/app/Activity;Landroid/graphics/Rect;Landroid/graphics/Bitmap;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lmiui/app/transition/FragmentOptions;->mPositionRect:Landroid/graphics/Rect;

    iput p4, p0, Lmiui/app/transition/FragmentOptions;->mColor:I

    iput p5, p0, Lmiui/app/transition/FragmentOptions;->mRadius:I

    iget-object p2, p0, Lmiui/app/transition/FragmentOptions;->mWorkFragment:Lmiui/app/transition/FragmentOptions$RetainedFragment;

    if-nez p2, :cond_0

    invoke-virtual {p1}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object p1

    const-string p2, "miui:fragment.launchThumb"

    invoke-virtual {p1, p2}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object p4

    check-cast p4, Lmiui/app/transition/FragmentOptions$RetainedFragment;

    iput-object p4, p0, Lmiui/app/transition/FragmentOptions;->mWorkFragment:Lmiui/app/transition/FragmentOptions$RetainedFragment;

    if-nez p4, :cond_0

    new-instance p4, Lmiui/app/transition/FragmentOptions$RetainedFragment;

    invoke-direct {p4}, Lmiui/app/transition/FragmentOptions$RetainedFragment;-><init>()V

    iput-object p4, p0, Lmiui/app/transition/FragmentOptions;->mWorkFragment:Lmiui/app/transition/FragmentOptions$RetainedFragment;

    invoke-virtual {p1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object p1

    iget-object p4, p0, Lmiui/app/transition/FragmentOptions;->mWorkFragment:Lmiui/app/transition/FragmentOptions$RetainedFragment;

    invoke-virtual {p1, p4, p2}, Landroid/app/FragmentTransaction;->add(Landroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/FragmentTransaction;->commit()I

    :cond_0
    iget-object p0, p0, Lmiui/app/transition/FragmentOptions;->mWorkFragment:Lmiui/app/transition/FragmentOptions$RetainedFragment;

    invoke-virtual {p0, p3}, Lmiui/app/transition/FragmentOptions$RetainedFragment;->setThumb(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method private constructor <init>(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 1

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

    move-result p2

    iput p2, p0, Lmiui/app/transition/FragmentOptions;->mRadius:I

    iget-object p2, p0, Lmiui/app/transition/FragmentOptions;->mWorkFragment:Lmiui/app/transition/FragmentOptions$RetainedFragment;

    if-nez p2, :cond_0

    invoke-virtual {p1}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object p1

    const-string p2, "miui:fragment.launchThumb"

    invoke-virtual {p1, p2}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object p1

    check-cast p1, Lmiui/app/transition/FragmentOptions$RetainedFragment;

    iput-object p1, p0, Lmiui/app/transition/FragmentOptions;->mWorkFragment:Lmiui/app/transition/FragmentOptions$RetainedFragment;

    :cond_0
    iget-object p1, p0, Lmiui/app/transition/FragmentOptions;->mWorkFragment:Lmiui/app/transition/FragmentOptions$RetainedFragment;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lmiui/app/transition/FragmentOptions$RetainedFragment;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lmiui/app/transition/FragmentOptions;->mThumb:Landroid/graphics/Bitmap;

    :cond_1
    return-void
.end method

.method private static fromBundle(Landroid/app/Activity;Landroid/os/Bundle;)Lmiui/app/transition/FragmentOptions;
    .locals 1

    if-eqz p1, :cond_0

    new-instance v0, Lmiui/app/transition/FragmentOptions;

    invoke-direct {v0, p0, p1}, Lmiui/app/transition/FragmentOptions;-><init>(Landroid/app/Activity;Landroid/os/Bundle;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public static newFragmentTransition(Landroid/app/Activity;Landroid/os/Bundle;Lmiui/app/transition/FragmentOptions$Type;)Landroid/transition/Transition;
    .locals 2

    sget-object v0, Lmiui/app/transition/FragmentOptions$1;->$SwitchMap$miui$app$transition$FragmentOptions$Type:[I

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 p2, 0x0

    invoke-static {p0, p1, p2}, Lmiui/app/transition/FragmentOptions;->newScaleTransition(Landroid/app/Activity;Landroid/os/Bundle;Z)Landroid/transition/Transition;

    move-result-object p0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Cannot create transition: type "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    invoke-static {p0, p1, v1}, Lmiui/app/transition/FragmentOptions;->newScaleTransition(Landroid/app/Activity;Landroid/os/Bundle;Z)Landroid/transition/Transition;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public static newFragmentTransition(Lmiui/app/transition/FragmentOptions$Type;)Landroid/transition/Transition;
    .locals 3

    sget-object v0, Lmiui/app/transition/FragmentOptions$1;->$SwitchMap$miui$app$transition$FragmentOptions$Type:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    new-instance p0, Lmiui/app/transition/ExitFade;

    invoke-direct {p0}, Lmiui/app/transition/ExitFade;-><init>()V

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot create transition: type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance p0, Lmiui/app/transition/PhysicalFade;

    invoke-direct {p0}, Lmiui/app/transition/PhysicalFade;-><init>()V

    :goto_0
    return-object p0
.end method

.method private static newScaleTransition(Landroid/app/Activity;Landroid/os/Bundle;Z)Landroid/transition/Transition;
    .locals 1

    invoke-static {p0, p1}, Lmiui/app/transition/FragmentOptions;->fromBundle(Landroid/app/Activity;Landroid/os/Bundle;)Lmiui/app/transition/FragmentOptions;

    move-result-object p1

    if-eqz p1, :cond_0

    new-instance v0, Lmiui/app/transition/ScaleUpOrDown;

    invoke-direct {v0, p0, p1, p2}, Lmiui/app/transition/ScaleUpOrDown;-><init>(Landroid/app/Activity;Lmiui/app/transition/FragmentOptions;Z)V

    return-object v0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static newTransitionBundle(Landroid/app/Activity;Landroid/graphics/Rect;Landroid/graphics/Bitmap;II)Landroid/os/Bundle;
    .locals 7

    new-instance v6, Lmiui/app/transition/FragmentOptions;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lmiui/app/transition/FragmentOptions;-><init>(Landroid/app/Activity;Landroid/graphics/Rect;Landroid/graphics/Bitmap;II)V

    invoke-direct {v6}, Lmiui/app/transition/FragmentOptions;->toBundle()Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method private toBundle()Landroid/os/Bundle;
    .locals 3

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iget-object v1, p0, Lmiui/app/transition/FragmentOptions;->mPositionRect:Landroid/graphics/Rect;

    const-string v2, "miui:fragment.launchBounds"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    iget v1, p0, Lmiui/app/transition/FragmentOptions;->mColor:I

    const-string v2, "miui:fragment.launchColor"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget p0, p0, Lmiui/app/transition/FragmentOptions;->mRadius:I

    const-string v1, "miui:fragment.launchRadius"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object v0
.end method


# virtual methods
.method getColor()I
    .locals 0

    iget p0, p0, Lmiui/app/transition/FragmentOptions;->mColor:I

    return p0
.end method

.method getPositionRect()Landroid/graphics/Rect;
    .locals 0

    iget-object p0, p0, Lmiui/app/transition/FragmentOptions;->mPositionRect:Landroid/graphics/Rect;

    return-object p0
.end method

.method getRadius()I
    .locals 0

    iget p0, p0, Lmiui/app/transition/FragmentOptions;->mRadius:I

    return p0
.end method

.method getThumb()Landroid/graphics/Bitmap;
    .locals 0

    iget-object p0, p0, Lmiui/app/transition/FragmentOptions;->mThumb:Landroid/graphics/Bitmap;

    return-object p0
.end method
