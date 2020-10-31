.class public Lmiui/animation/ViewTarget;
.super Lmiui/animation/IAnimTarget;
.source "ViewTarget.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lmiui/animation/IAnimTarget<",
        "Landroid/view/View;",
        ">;"
    }
.end annotation


# static fields
.field public static final sCreator:Lmiui/animation/ITargetCreator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lmiui/animation/ITargetCreator<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mViewInThread:Z

.field private mViewRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lmiui/animation/ViewTarget$1;

    invoke-direct {v0}, Lmiui/animation/ViewTarget$1;-><init>()V

    sput-object v0, Lmiui/animation/ViewTarget;->sCreator:Lmiui/animation/ITargetCreator;

    return-void
.end method

.method private constructor <init>(Landroid/view/View;)V
    .registers 4

    invoke-direct {p0}, Lmiui/animation/IAnimTarget;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lmiui/animation/ViewTarget;->mViewRef:Ljava/lang/ref/WeakReference;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-eq v0, v1, :cond_16

    const/4 v0, 0x1

    goto :goto_17

    :cond_16
    const/4 v0, 0x0

    :goto_17
    iput-boolean v0, p0, Lmiui/animation/ViewTarget;->mViewInThread:Z

    return-void
.end method

.method synthetic constructor <init>(Landroid/view/View;Lmiui/animation/ViewTarget$1;)V
    .registers 3

    invoke-direct {p0, p1}, Lmiui/animation/ViewTarget;-><init>(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$100(Lmiui/animation/ViewTarget;Landroid/view/View;Ljava/lang/Runnable;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lmiui/animation/ViewTarget;->initLayout(Landroid/view/View;Ljava/lang/Runnable;)V

    return-void
.end method

.method private initLayout(Landroid/view/View;Ljava/lang/Runnable;)V
    .registers 8

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_28

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const v2, 0x100b0004

    invoke-virtual {p1, v2, v1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    move-object v1, v0

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getMeasuredWidthAndState()I

    move-result v3

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getMeasuredHeightAndState()I

    move-result v4

    invoke-virtual {p1, v3, v4}, Landroid/view/View;->measure(II)V

    invoke-interface {p2}, Ljava/lang/Runnable;->run()V

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    :cond_28
    return-void
.end method


# virtual methods
.method public allowAnimRun()Z
    .registers 3

    invoke-virtual {p0}, Lmiui/animation/ViewTarget;->getTargetObject()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_e

    invoke-static {v0}, Lmiui/animation/Folme;->isInDraggingState(Landroid/view/View;)Z

    move-result v1

    if-nez v1, :cond_e

    const/4 v1, 0x1

    goto :goto_f

    :cond_e
    const/4 v1, 0x0

    :goto_f
    return v1
.end method

.method public executeOnInitialized(Ljava/lang/Runnable;)V
    .registers 5

    iget-object v0, p0, Lmiui/animation/ViewTarget;->mViewRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-eqz v0, :cond_30

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v1

    const/16 v2, 0x8

    if-ne v1, v2, :cond_2d

    invoke-virtual {v0}, Landroid/view/View;->isLaidOut()Z

    move-result v1

    if-nez v1, :cond_2d

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v1

    if-eqz v1, :cond_24

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v1

    if-nez v1, :cond_2d

    :cond_24
    new-instance v1, Lmiui/animation/ViewTarget$2;

    invoke-direct {v1, p0, v0, p1}, Lmiui/animation/ViewTarget$2;-><init>(Lmiui/animation/ViewTarget;Landroid/view/View;Ljava/lang/Runnable;)V

    invoke-virtual {p0, v1}, Lmiui/animation/ViewTarget;->post(Ljava/lang/Runnable;)V

    goto :goto_30

    :cond_2d
    invoke-virtual {p0, p1}, Lmiui/animation/ViewTarget;->post(Ljava/lang/Runnable;)V

    :cond_30
    :goto_30
    return-void
.end method

.method public getLocationOnScreen([I)V
    .registers 6

    iget-object v0, p0, Lmiui/animation/ViewTarget;->mViewRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-nez v0, :cond_14

    const/4 v1, 0x0

    const/4 v2, 0x1

    const v3, 0x7fffffff

    aput v3, p1, v2

    aput v3, p1, v1

    goto :goto_17

    :cond_14
    invoke-virtual {v0, p1}, Landroid/view/View;->getLocationOnScreen([I)V

    :goto_17
    return-void
.end method

.method public getProperty(I)Lmiui/animation/property/FloatProperty;
    .registers 3

    packed-switch p1, :pswitch_data_3e

    const/4 v0, 0x0

    return-object v0

    :pswitch_5
    sget-object v0, Lmiui/animation/property/ViewProperty;->TRANSLATION_Z:Lmiui/animation/property/ViewProperty;

    return-object v0

    :pswitch_8
    sget-object v0, Lmiui/animation/property/ViewProperty;->Z:Lmiui/animation/property/ViewProperty;

    return-object v0

    :pswitch_b
    sget-object v0, Lmiui/animation/property/ViewProperty;->TRANSLATION_Y:Lmiui/animation/property/ViewProperty;

    return-object v0

    :pswitch_e
    sget-object v0, Lmiui/animation/property/ViewProperty;->TRANSLATION_X:Lmiui/animation/property/ViewProperty;

    return-object v0

    :pswitch_11
    sget-object v0, Lmiui/animation/property/ViewProperty;->AUTO_ALPHA:Lmiui/animation/property/ViewProperty;

    return-object v0

    :pswitch_14
    sget-object v0, Lmiui/animation/property/ViewProperty;->SCROLL_Y:Lmiui/animation/property/ViewProperty;

    return-object v0

    :pswitch_17
    sget-object v0, Lmiui/animation/property/ViewProperty;->SCROLL_X:Lmiui/animation/property/ViewProperty;

    return-object v0

    :pswitch_1a
    sget-object v0, Lmiui/animation/property/ViewProperty;->ROTATION_Y:Lmiui/animation/property/ViewProperty;

    return-object v0

    :pswitch_1d
    sget-object v0, Lmiui/animation/property/ViewProperty;->ROTATION_X:Lmiui/animation/property/ViewProperty;

    return-object v0

    :pswitch_20
    sget-object v0, Lmiui/animation/property/ViewProperty;->ROTATION:Lmiui/animation/property/ViewProperty;

    return-object v0

    :pswitch_23
    sget-object v0, Lmiui/animation/property/ViewPropertyExt;->BACKGROUND:Lmiui/animation/property/ViewPropertyExt$BackgroundProperty;

    return-object v0

    :pswitch_26
    sget-object v0, Lmiui/animation/property/ViewPropertyExt;->FOREGROUND:Lmiui/animation/property/ViewPropertyExt$ForegroundProperty;

    return-object v0

    :pswitch_29
    sget-object v0, Lmiui/animation/property/ViewProperty;->WIDTH:Lmiui/animation/property/ViewProperty;

    return-object v0

    :pswitch_2c
    sget-object v0, Lmiui/animation/property/ViewProperty;->HEIGHT:Lmiui/animation/property/ViewProperty;

    return-object v0

    :pswitch_2f
    sget-object v0, Lmiui/animation/property/ViewProperty;->ALPHA:Lmiui/animation/property/ViewProperty;

    return-object v0

    :pswitch_32
    sget-object v0, Lmiui/animation/property/ViewProperty;->SCALE_Y:Lmiui/animation/property/ViewProperty;

    return-object v0

    :pswitch_35
    sget-object v0, Lmiui/animation/property/ViewProperty;->SCALE_X:Lmiui/animation/property/ViewProperty;

    return-object v0

    :pswitch_38
    sget-object v0, Lmiui/animation/property/ViewProperty;->Y:Lmiui/animation/property/ViewProperty;

    return-object v0

    :pswitch_3b
    sget-object v0, Lmiui/animation/property/ViewProperty;->X:Lmiui/animation/property/ViewProperty;

    return-object v0

    :pswitch_data_3e
    .packed-switch 0x0
        :pswitch_3b
        :pswitch_38
        :pswitch_35
        :pswitch_32
        :pswitch_2f
        :pswitch_2c
        :pswitch_29
        :pswitch_26
        :pswitch_23
        :pswitch_20
        :pswitch_1d
        :pswitch_1a
        :pswitch_17
        :pswitch_14
        :pswitch_11
        :pswitch_e
        :pswitch_b
        :pswitch_8
        :pswitch_5
    .end packed-switch
.end method

.method public getTargetObject()Landroid/view/View;
    .registers 2

    iget-object v0, p0, Lmiui/animation/ViewTarget;->mViewRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    return-object v0
.end method

.method public bridge synthetic getTargetObject()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lmiui/animation/ViewTarget;->getTargetObject()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getType(Lmiui/animation/property/FloatProperty;)I
    .registers 3

    sget-object v0, Lmiui/animation/property/ViewProperty;->X:Lmiui/animation/property/ViewProperty;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 v0, 0x0

    return v0

    :cond_a
    sget-object v0, Lmiui/animation/property/ViewProperty;->Y:Lmiui/animation/property/ViewProperty;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    const/4 v0, 0x1

    return v0

    :cond_14
    sget-object v0, Lmiui/animation/property/ViewProperty;->TRANSLATION_X:Lmiui/animation/property/ViewProperty;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1f

    const/16 v0, 0xf

    return v0

    :cond_1f
    sget-object v0, Lmiui/animation/property/ViewProperty;->TRANSLATION_Y:Lmiui/animation/property/ViewProperty;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2a

    const/16 v0, 0x10

    return v0

    :cond_2a
    sget-object v0, Lmiui/animation/property/ViewProperty;->SCALE_X:Lmiui/animation/property/ViewProperty;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_34

    const/4 v0, 0x2

    return v0

    :cond_34
    sget-object v0, Lmiui/animation/property/ViewProperty;->SCALE_Y:Lmiui/animation/property/ViewProperty;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3e

    const/4 v0, 0x3

    return v0

    :cond_3e
    sget-object v0, Lmiui/animation/property/ViewProperty;->ALPHA:Lmiui/animation/property/ViewProperty;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_48

    const/4 v0, 0x4

    return v0

    :cond_48
    sget-object v0, Lmiui/animation/property/ViewProperty;->HEIGHT:Lmiui/animation/property/ViewProperty;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_52

    const/4 v0, 0x5

    return v0

    :cond_52
    sget-object v0, Lmiui/animation/property/ViewProperty;->WIDTH:Lmiui/animation/property/ViewProperty;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5c

    const/4 v0, 0x6

    return v0

    :cond_5c
    sget-object v0, Lmiui/animation/property/ViewPropertyExt;->FOREGROUND:Lmiui/animation/property/ViewPropertyExt$ForegroundProperty;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_66

    const/4 v0, 0x7

    return v0

    :cond_66
    sget-object v0, Lmiui/animation/property/ViewPropertyExt;->BACKGROUND:Lmiui/animation/property/ViewPropertyExt$BackgroundProperty;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_71

    const/16 v0, 0x8

    return v0

    :cond_71
    sget-object v0, Lmiui/animation/property/ViewProperty;->AUTO_ALPHA:Lmiui/animation/property/ViewProperty;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7c

    const/16 v0, 0xe

    return v0

    :cond_7c
    sget-object v0, Lmiui/animation/property/ViewProperty;->ROTATION:Lmiui/animation/property/ViewProperty;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_87

    const/16 v0, 0x9

    return v0

    :cond_87
    sget-object v0, Lmiui/animation/property/ViewProperty;->ROTATION_X:Lmiui/animation/property/ViewProperty;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_92

    const/16 v0, 0xa

    return v0

    :cond_92
    sget-object v0, Lmiui/animation/property/ViewProperty;->ROTATION_Y:Lmiui/animation/property/ViewProperty;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9d

    const/16 v0, 0xb

    return v0

    :cond_9d
    sget-object v0, Lmiui/animation/property/ViewProperty;->SCROLL_X:Lmiui/animation/property/ViewProperty;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a8

    const/16 v0, 0xc

    return v0

    :cond_a8
    sget-object v0, Lmiui/animation/property/ViewProperty;->SCROLL_Y:Lmiui/animation/property/ViewProperty;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b3

    const/16 v0, 0xd

    return v0

    :cond_b3
    sget-object v0, Lmiui/animation/property/ViewProperty;->TRANSLATION_Z:Lmiui/animation/property/ViewProperty;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_be

    const/16 v0, 0x12

    return v0

    :cond_be
    sget-object v0, Lmiui/animation/property/ViewProperty;->Z:Lmiui/animation/property/ViewProperty;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c9

    const/16 v0, 0x11

    return v0

    :cond_c9
    const/4 v0, -0x1

    return v0
.end method

.method public isValid()Z
    .registers 3

    iget-object v0, p0, Lmiui/animation/ViewTarget;->mViewRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-eqz v0, :cond_c

    const/4 v1, 0x1

    goto :goto_d

    :cond_c
    const/4 v1, 0x0

    :goto_d
    return v1
.end method

.method public onFrameEnd(Z)V
    .registers 5

    iget-object v0, p0, Lmiui/animation/ViewTarget;->mViewRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-eqz p1, :cond_19

    if-eqz v0, :cond_19

    const v1, 0x100b0007

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    const v1, 0x100b0006

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    :cond_19
    return-void
.end method

.method public post(Ljava/lang/Runnable;)V
    .registers 6

    invoke-virtual {p0}, Lmiui/animation/ViewTarget;->getTargetObject()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_7

    return-void

    :cond_7
    iget-boolean v1, p0, Lmiui/animation/ViewTarget;->mViewInThread:Z

    if-eqz v1, :cond_15

    invoke-virtual {v0}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v1

    if-eqz v1, :cond_15

    invoke-virtual {v0, p1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    goto :goto_34

    :cond_15
    :try_start_15
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_18} :catch_19

    goto :goto_34

    :catch_19
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ViewTarget.post failed, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lmiui/animation/ViewTarget;->getTargetObject()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "miuisdk_anim"

    invoke-static {v3, v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_34
    return-void
.end method

.method public shouldUseIntValue(Lmiui/animation/property/FloatProperty;)Z
    .registers 3

    sget-object v0, Lmiui/animation/property/ViewProperty;->WIDTH:Lmiui/animation/property/ViewProperty;

    if-eq p1, v0, :cond_16

    sget-object v0, Lmiui/animation/property/ViewProperty;->HEIGHT:Lmiui/animation/property/ViewProperty;

    if-eq p1, v0, :cond_16

    sget-object v0, Lmiui/animation/property/ViewProperty;->SCROLL_X:Lmiui/animation/property/ViewProperty;

    if-eq p1, v0, :cond_16

    sget-object v0, Lmiui/animation/property/ViewProperty;->SCROLL_Y:Lmiui/animation/property/ViewProperty;

    if-ne p1, v0, :cond_11

    goto :goto_16

    :cond_11
    invoke-super {p0, p1}, Lmiui/animation/IAnimTarget;->shouldUseIntValue(Lmiui/animation/property/FloatProperty;)Z

    move-result v0

    return v0

    :cond_16
    :goto_16
    const/4 v0, 0x1

    return v0
.end method
