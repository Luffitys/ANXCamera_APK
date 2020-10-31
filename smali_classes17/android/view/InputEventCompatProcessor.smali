.class public Landroid/view/InputEventCompatProcessor;
.super Ljava/lang/Object;
.source "InputEventCompatProcessor.java"


# instance fields
.field protected mContext:Landroid/content/Context;

.field private mProcessedEvents:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/view/InputEvent;",
            ">;"
        }
    .end annotation
.end field

.field protected mTargetSdkVersion:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/view/InputEventCompatProcessor;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    iput v0, p0, Landroid/view/InputEventCompatProcessor;->mTargetSdkVersion:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/view/InputEventCompatProcessor;->mProcessedEvents:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public processInputEventBeforeFinish(Landroid/view/InputEvent;)Landroid/view/InputEvent;
    .registers 2

    return-object p1
.end method

.method public processInputEventForCompatibility(Landroid/view/InputEvent;)Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/InputEvent;",
            ")",
            "Ljava/util/List<",
            "Landroid/view/InputEvent;",
            ">;"
        }
    .end annotation

    iget v0, p0, Landroid/view/InputEventCompatProcessor;->mTargetSdkVersion:I

    const/16 v1, 0x17

    if-ge v0, v1, :cond_2b

    instance-of v0, p1, Landroid/view/MotionEvent;

    if-eqz v0, :cond_2b

    iget-object v0, p0, Landroid/view/InputEventCompatProcessor;->mProcessedEvents:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    move-object v0, p1

    check-cast v0, Landroid/view/MotionEvent;

    const/16 v1, 0x60

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v2

    and-int/lit8 v3, v2, 0x60

    shr-int/lit8 v3, v3, 0x4

    if-eqz v3, :cond_23

    or-int v4, v2, v3

    invoke-virtual {v0, v4}, Landroid/view/MotionEvent;->setButtonState(I)V

    :cond_23
    iget-object v4, p0, Landroid/view/InputEventCompatProcessor;->mProcessedEvents:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v4, p0, Landroid/view/InputEventCompatProcessor;->mProcessedEvents:Ljava/util/List;

    return-object v4

    :cond_2b
    const/4 v0, 0x0

    return-object v0
.end method
