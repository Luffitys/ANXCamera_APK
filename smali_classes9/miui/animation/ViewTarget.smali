.class public Lmiui/animation/ViewTarget;
.super Lmiui/animation/IAnimTarget;
.source ""


# static fields
.field public static final sCreator:Lmiui/animation/ITargetCreator;


# instance fields
.field private mViewInThread:Z

.field private mViewRef:Ljava/lang/ref/WeakReference;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lmiui/animation/ViewTarget$1;

    invoke-direct {v0}, Lmiui/animation/ViewTarget$1;-><init>()V

    sput-object v0, Lmiui/animation/ViewTarget;->sCreator:Lmiui/animation/ITargetCreator;

    return-void
.end method

.method private constructor <init>(Landroid/view/View;)V
    .locals 1

    invoke-direct {p0}, Lmiui/animation/IAnimTarget;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lmiui/animation/ViewTarget;->mViewRef:Ljava/lang/ref/WeakReference;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    if-eq p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lmiui/animation/ViewTarget;->mViewInThread:Z

    return-void
.end method

.method synthetic constructor <init>(Landroid/view/View;Lmiui/animation/ViewTarget$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lmiui/animation/ViewTarget;-><init>(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$100(Lmiui/animation/ViewTarget;Landroid/view/View;Ljava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lmiui/animation/ViewTarget;->initLayout(Landroid/view/View;Ljava/lang/Runnable;)V

    return-void
.end method

.method private initLayout(Landroid/view/View;Ljava/lang/Runnable;)V
    .locals 2

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    instance-of v0, p0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const v1, 0x100b0004

    invoke-virtual {p1, v1, v0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    check-cast p0, Landroid/view/ViewGroup;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getMeasuredWidthAndState()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getMeasuredHeightAndState()I

    move-result p0

    invoke-virtual {p1, v0, p0}, Landroid/view/View;->measure(II)V

    invoke-interface {p2}, Ljava/lang/Runnable;->run()V

    const/4 p0, 0x0

    invoke-virtual {p1, v1, p0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public allowAnimRun()Z
    .locals 0

    invoke-virtual {p0}, Lmiui/animation/ViewTarget;->getTargetObject()Landroid/view/View;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-static {p0}, Lmiui/animation/Folme;->isInDraggingState(Landroid/view/View;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public executeOnInitialized(Ljava/lang/Runnable;)V
    .locals 3

    iget-object v0, p0, Lmiui/animation/ViewTarget;->mViewRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v1

    const/16 v2, 0x8

    if-ne v1, v2, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->isLaidOut()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    new-instance v1, Lmiui/animation/ViewTarget$2;

    invoke-direct {v1, p0, v0, p1}, Lmiui/animation/ViewTarget$2;-><init>(Lmiui/animation/ViewTarget;Landroid/view/View;Ljava/lang/Runnable;)V

    invoke-virtual {p0, v1}, Lmiui/animation/ViewTarget;->post(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p1}, Lmiui/animation/ViewTarget;->post(Ljava/lang/Runnable;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public getLocationOnScreen([I)V
    .locals 2

    iget-object p0, p0, Lmiui/animation/ViewTarget;->mViewRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/View;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    const/4 v0, 0x1

    const v1, 0x7fffffff

    aput v1, p1, v0

    aput v1, p1, p0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Landroid/view/View;->getLocationOnScreen([I)V

    :goto_0
    return-void
.end method

.method public getProperty(I)Lmiui/animation/property/FloatProperty;
    .locals 0

    packed-switch p1, :pswitch_data_0

    const/4 p0, 0x0

    return-object p0

    :pswitch_0
    sget-object p0, Lmiui/animation/property/ViewProperty;->TRANSLATION_Z:Lmiui/animation/property/ViewProperty;

    return-object p0

    :pswitch_1
    sget-object p0, Lmiui/animation/property/ViewProperty;->Z:Lmiui/animation/property/ViewProperty;

    return-object p0

    :pswitch_2
    sget-object p0, Lmiui/animation/property/ViewProperty;->TRANSLATION_Y:Lmiui/animation/property/ViewProperty;

    return-object p0

    :pswitch_3
    sget-object p0, Lmiui/animation/property/ViewProperty;->TRANSLATION_X:Lmiui/animation/property/ViewProperty;

    return-object p0

    :pswitch_4
    sget-object p0, Lmiui/animation/property/ViewProperty;->AUTO_ALPHA:Lmiui/animation/property/ViewProperty;

    return-object p0

    :pswitch_5
    sget-object p0, Lmiui/animation/property/ViewProperty;->SCROLL_Y:Lmiui/animation/property/ViewProperty;

    return-object p0

    :pswitch_6
    sget-object p0, Lmiui/animation/property/ViewProperty;->SCROLL_X:Lmiui/animation/property/ViewProperty;

    return-object p0

    :pswitch_7
    sget-object p0, Lmiui/animation/property/ViewProperty;->ROTATION_Y:Lmiui/animation/property/ViewProperty;

    return-object p0

    :pswitch_8
    sget-object p0, Lmiui/animation/property/ViewProperty;->ROTATION_X:Lmiui/animation/property/ViewProperty;

    return-object p0

    :pswitch_9
    sget-object p0, Lmiui/animation/property/ViewProperty;->ROTATION:Lmiui/animation/property/ViewProperty;

    return-object p0

    :pswitch_a
    sget-object p0, Lmiui/animation/property/ViewPropertyExt;->BACKGROUND:Lmiui/animation/property/ViewPropertyExt$BackgroundProperty;

    return-object p0

    :pswitch_b
    sget-object p0, Lmiui/animation/property/ViewPropertyExt;->FOREGROUND:Lmiui/animation/property/ViewPropertyExt$ForegroundProperty;

    return-object p0

    :pswitch_c
    sget-object p0, Lmiui/animation/property/ViewProperty;->WIDTH:Lmiui/animation/property/ViewProperty;

    return-object p0

    :pswitch_d
    sget-object p0, Lmiui/animation/property/ViewProperty;->HEIGHT:Lmiui/animation/property/ViewProperty;

    return-object p0

    :pswitch_e
    sget-object p0, Lmiui/animation/property/ViewProperty;->ALPHA:Lmiui/animation/property/ViewProperty;

    return-object p0

    :pswitch_f
    sget-object p0, Lmiui/animation/property/ViewProperty;->SCALE_Y:Lmiui/animation/property/ViewProperty;

    return-object p0

    :pswitch_10
    sget-object p0, Lmiui/animation/property/ViewProperty;->SCALE_X:Lmiui/animation/property/ViewProperty;

    return-object p0

    :pswitch_11
    sget-object p0, Lmiui/animation/property/ViewProperty;->Y:Lmiui/animation/property/ViewProperty;

    return-object p0

    :pswitch_12
    sget-object p0, Lmiui/animation/property/ViewProperty;->X:Lmiui/animation/property/ViewProperty;

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getTargetObject()Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lmiui/animation/ViewTarget;->mViewRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/View;

    return-object p0
.end method

.method public bridge synthetic getTargetObject()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lmiui/animation/ViewTarget;->getTargetObject()Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public getType(Lmiui/animation/property/FloatProperty;)I
    .locals 0

    sget-object p0, Lmiui/animation/property/ViewProperty;->X:Lmiui/animation/property/ViewProperty;

    invoke-virtual {p1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    sget-object p0, Lmiui/animation/property/ViewProperty;->Y:Lmiui/animation/property/ViewProperty;

    invoke-virtual {p1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    sget-object p0, Lmiui/animation/property/ViewProperty;->TRANSLATION_X:Lmiui/animation/property/ViewProperty;

    invoke-virtual {p1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    const/16 p0, 0xf

    return p0

    :cond_2
    sget-object p0, Lmiui/animation/property/ViewProperty;->TRANSLATION_Y:Lmiui/animation/property/ViewProperty;

    invoke-virtual {p1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    const/16 p0, 0x10

    return p0

    :cond_3
    sget-object p0, Lmiui/animation/property/ViewProperty;->SCALE_X:Lmiui/animation/property/ViewProperty;

    invoke-virtual {p1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_4

    const/4 p0, 0x2

    return p0

    :cond_4
    sget-object p0, Lmiui/animation/property/ViewProperty;->SCALE_Y:Lmiui/animation/property/ViewProperty;

    invoke-virtual {p1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_5

    const/4 p0, 0x3

    return p0

    :cond_5
    sget-object p0, Lmiui/animation/property/ViewProperty;->ALPHA:Lmiui/animation/property/ViewProperty;

    invoke-virtual {p1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_6

    const/4 p0, 0x4

    return p0

    :cond_6
    sget-object p0, Lmiui/animation/property/ViewProperty;->HEIGHT:Lmiui/animation/property/ViewProperty;

    invoke-virtual {p1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_7

    const/4 p0, 0x5

    return p0

    :cond_7
    sget-object p0, Lmiui/animation/property/ViewProperty;->WIDTH:Lmiui/animation/property/ViewProperty;

    invoke-virtual {p1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_8

    const/4 p0, 0x6

    return p0

    :cond_8
    sget-object p0, Lmiui/animation/property/ViewPropertyExt;->FOREGROUND:Lmiui/animation/property/ViewPropertyExt$ForegroundProperty;

    invoke-virtual {p1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_9

    const/4 p0, 0x7

    return p0

    :cond_9
    sget-object p0, Lmiui/animation/property/ViewPropertyExt;->BACKGROUND:Lmiui/animation/property/ViewPropertyExt$BackgroundProperty;

    invoke-virtual {p1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_a

    const/16 p0, 0x8

    return p0

    :cond_a
    sget-object p0, Lmiui/animation/property/ViewProperty;->AUTO_ALPHA:Lmiui/animation/property/ViewProperty;

    invoke-virtual {p1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_b

    const/16 p0, 0xe

    return p0

    :cond_b
    sget-object p0, Lmiui/animation/property/ViewProperty;->ROTATION:Lmiui/animation/property/ViewProperty;

    invoke-virtual {p1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_c

    const/16 p0, 0x9

    return p0

    :cond_c
    sget-object p0, Lmiui/animation/property/ViewProperty;->ROTATION_X:Lmiui/animation/property/ViewProperty;

    invoke-virtual {p1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_d

    const/16 p0, 0xa

    return p0

    :cond_d
    sget-object p0, Lmiui/animation/property/ViewProperty;->ROTATION_Y:Lmiui/animation/property/ViewProperty;

    invoke-virtual {p1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_e

    const/16 p0, 0xb

    return p0

    :cond_e
    sget-object p0, Lmiui/animation/property/ViewProperty;->SCROLL_X:Lmiui/animation/property/ViewProperty;

    invoke-virtual {p1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_f

    const/16 p0, 0xc

    return p0

    :cond_f
    sget-object p0, Lmiui/animation/property/ViewProperty;->SCROLL_Y:Lmiui/animation/property/ViewProperty;

    invoke-virtual {p1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_10

    const/16 p0, 0xd

    return p0

    :cond_10
    sget-object p0, Lmiui/animation/property/ViewProperty;->TRANSLATION_Z:Lmiui/animation/property/ViewProperty;

    invoke-virtual {p1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_11

    const/16 p0, 0x12

    return p0

    :cond_11
    sget-object p0, Lmiui/animation/property/ViewProperty;->Z:Lmiui/animation/property/ViewProperty;

    invoke-virtual {p1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_12

    const/16 p0, 0x11

    return p0

    :cond_12
    const/4 p0, -0x1

    return p0
.end method

.method public isValid()Z
    .locals 0

    iget-object p0, p0, Lmiui/animation/ViewTarget;->mViewRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/View;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public onFrameEnd(Z)V
    .locals 1

    iget-object p0, p0, Lmiui/animation/ViewTarget;->mViewRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/View;

    if-eqz p1, :cond_0

    if-eqz p0, :cond_0

    const p1, 0x100b0007

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    const p1, 0x100b0006

    invoke-virtual {p0, p1, v0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public post(Ljava/lang/Runnable;)V
    .locals 2

    invoke-virtual {p0}, Lmiui/animation/ViewTarget;->getTargetObject()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-boolean v1, p0, Lmiui/animation/ViewTarget;->mViewInThread:Z

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0, p1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_1
    :try_start_0
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ViewTarget.post failed, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lmiui/animation/ViewTarget;->getTargetObject()Landroid/view/View;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "miuisdk_anim"

    invoke-static {v0, p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public shouldUseIntValue(Lmiui/animation/property/FloatProperty;)Z
    .locals 1

    sget-object v0, Lmiui/animation/property/ViewProperty;->WIDTH:Lmiui/animation/property/ViewProperty;

    if-eq p1, v0, :cond_1

    sget-object v0, Lmiui/animation/property/ViewProperty;->HEIGHT:Lmiui/animation/property/ViewProperty;

    if-eq p1, v0, :cond_1

    sget-object v0, Lmiui/animation/property/ViewProperty;->SCROLL_X:Lmiui/animation/property/ViewProperty;

    if-eq p1, v0, :cond_1

    sget-object v0, Lmiui/animation/property/ViewProperty;->SCROLL_Y:Lmiui/animation/property/ViewProperty;

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-super {p0, p1}, Lmiui/animation/IAnimTarget;->shouldUseIntValue(Lmiui/animation/property/FloatProperty;)Z

    move-result p0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method
