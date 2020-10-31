.class public Lmiui/animation/controller/FolmeTouch;
.super Lmiui/animation/controller/FolmeBase;
.source "FolmeTouch.java"

# interfaces
.implements Lmiui/animation/ITouchStyle;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/animation/controller/FolmeTouch$InnerViewTouchListener;,
        Lmiui/animation/controller/FolmeTouch$InnerListViewTouchListener;,
        Lmiui/animation/controller/FolmeTouch$ListViewInfo;
    }
.end annotation


# static fields
.field private static final DEFAULT_SCALE:F = 0.9f

.field private static final SCALE_DIS:I = 0xa

.field private static sTouchRecord:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap<",
            "Landroid/view/View;",
            "Lmiui/animation/controller/FolmeTouch$InnerViewTouchListener;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mAlphaConfig:Lmiui/animation/base/AnimConfig;

.field private mDownConfig:Lmiui/animation/base/AnimConfig;

.field private mDownWeight:I

.field private mFontStyle:Lmiui/animation/controller/FolmeFont;

.field private mIsDown:Z

.field private mListView:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mLocation:[I

.field private mScaleDist:F

.field private mScaleSetMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lmiui/animation/ITouchStyle$TouchType;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mSetTint:Z

.field private mTouchView:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mUpConfig:Lmiui/animation/base/AnimConfig;

.field private mUpWeight:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Lmiui/animation/controller/FolmeTouch;->sTouchRecord:Ljava/util/WeakHashMap;

    return-void
.end method

.method public varargs constructor <init>([Lmiui/animation/IAnimTarget;)V
    .registers 11

    invoke-direct {p0, p1}, Lmiui/animation/controller/FolmeBase;-><init>([Lmiui/animation/IAnimTarget;)V

    const/4 v0, 0x2

    new-array v1, v0, [I

    iput-object v1, p0, Lmiui/animation/controller/FolmeTouch;->mLocation:[I

    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    iput-object v1, p0, Lmiui/animation/controller/FolmeTouch;->mScaleSetMap:Ljava/util/Map;

    new-instance v1, Lmiui/animation/base/AnimConfig;

    invoke-direct {v1}, Lmiui/animation/base/AnimConfig;-><init>()V

    iput-object v1, p0, Lmiui/animation/controller/FolmeTouch;->mDownConfig:Lmiui/animation/base/AnimConfig;

    new-instance v1, Lmiui/animation/base/AnimConfig;

    invoke-direct {v1}, Lmiui/animation/base/AnimConfig;-><init>()V

    iput-object v1, p0, Lmiui/animation/controller/FolmeTouch;->mUpConfig:Lmiui/animation/base/AnimConfig;

    array-length v1, p1

    const/4 v2, 0x0

    if-lez v1, :cond_24

    aget-object v1, p1, v2

    goto :goto_25

    :cond_24
    const/4 v1, 0x0

    :goto_25
    invoke-direct {p0, v1}, Lmiui/animation/controller/FolmeTouch;->initScaleDist(Lmiui/animation/IAnimTarget;)V

    invoke-virtual {p0, v0}, Lmiui/animation/controller/FolmeTouch;->getProperty(I)Lmiui/animation/property/FloatProperty;

    move-result-object v1

    const/4 v3, 0x3

    invoke-virtual {p0, v3}, Lmiui/animation/controller/FolmeTouch;->getProperty(I)Lmiui/animation/property/FloatProperty;

    move-result-object v3

    iget-object v4, p0, Lmiui/animation/controller/FolmeTouch;->mState:Lmiui/animation/controller/IFolmeStateStyle;

    sget-object v5, Lmiui/animation/ITouchStyle$TouchType;->UP:Lmiui/animation/ITouchStyle$TouchType;

    invoke-interface {v4, v5}, Lmiui/animation/controller/IFolmeStateStyle;->getState(Ljava/lang/Object;)Lmiui/animation/controller/AnimState;

    move-result-object v4

    new-array v5, v2, [J

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-virtual {v4, v1, v6, v5}, Lmiui/animation/controller/AnimState;->add(Lmiui/animation/property/FloatProperty;F[J)Lmiui/animation/controller/AnimState;

    move-result-object v4

    new-array v5, v2, [J

    invoke-virtual {v4, v3, v6, v5}, Lmiui/animation/controller/AnimState;->add(Lmiui/animation/property/FloatProperty;F[J)Lmiui/animation/controller/AnimState;

    iget-object v4, p0, Lmiui/animation/controller/FolmeTouch;->mState:Lmiui/animation/controller/IFolmeStateStyle;

    sget-object v5, Lmiui/animation/ITouchStyle$TouchType;->DOWN:Lmiui/animation/ITouchStyle$TouchType;

    invoke-interface {v4, v5}, Lmiui/animation/controller/IFolmeStateStyle;->getState(Ljava/lang/Object;)Lmiui/animation/controller/AnimState;

    move-result-object v4

    new-array v5, v2, [J

    const v6, 0x3f666666    # 0.9f

    invoke-virtual {v4, v1, v6, v5}, Lmiui/animation/controller/AnimState;->add(Lmiui/animation/property/FloatProperty;F[J)Lmiui/animation/controller/AnimState;

    move-result-object v4

    new-array v5, v2, [J

    invoke-virtual {v4, v3, v6, v5}, Lmiui/animation/controller/AnimState;->add(Lmiui/animation/property/FloatProperty;F[J)Lmiui/animation/controller/AnimState;

    invoke-direct {p0}, Lmiui/animation/controller/FolmeTouch;->setTintColor()V

    iget-object v4, p0, Lmiui/animation/controller/FolmeTouch;->mDownConfig:Lmiui/animation/base/AnimConfig;

    new-array v5, v0, [F

    fill-array-data v5, :array_a2

    const/4 v6, -0x2

    invoke-static {v6, v5}, Lmiui/animation/utils/EaseManager;->getStyle(I[F)Lmiui/animation/utils/EaseManager$EaseStyle;

    move-result-object v5

    iput-object v5, v4, Lmiui/animation/base/AnimConfig;->ease:Lmiui/animation/utils/EaseManager$EaseStyle;

    iget-object v4, p0, Lmiui/animation/controller/FolmeTouch;->mDownConfig:Lmiui/animation/base/AnimConfig;

    const/4 v5, 0x1

    new-array v7, v5, [Lmiui/animation/listener/TransitionListener;

    new-instance v8, Lmiui/animation/controller/FolmeTouch$1;

    invoke-direct {v8, p0}, Lmiui/animation/controller/FolmeTouch$1;-><init>(Lmiui/animation/controller/FolmeTouch;)V

    aput-object v8, v7, v2

    invoke-virtual {v4, v7}, Lmiui/animation/base/AnimConfig;->addListeners([Lmiui/animation/listener/TransitionListener;)Lmiui/animation/base/AnimConfig;

    iget-object v2, p0, Lmiui/animation/controller/FolmeTouch;->mUpConfig:Lmiui/animation/base/AnimConfig;

    new-array v4, v0, [F

    fill-array-data v4, :array_aa

    invoke-static {v6, v4}, Lmiui/animation/utils/EaseManager;->getStyle(I[F)Lmiui/animation/utils/EaseManager$EaseStyle;

    move-result-object v4

    iput-object v4, v2, Lmiui/animation/base/AnimConfig;->ease:Lmiui/animation/utils/EaseManager$EaseStyle;

    new-instance v2, Lmiui/animation/base/AnimConfig;

    const/4 v4, 0x4

    invoke-virtual {p0, v4}, Lmiui/animation/controller/FolmeTouch;->getProperty(I)Lmiui/animation/property/FloatProperty;

    move-result-object v4

    invoke-direct {v2, v4}, Lmiui/animation/base/AnimConfig;-><init>(Lmiui/animation/property/FloatProperty;)V

    new-array v0, v0, [F

    fill-array-data v0, :array_b2

    invoke-virtual {v2, v6, v0}, Lmiui/animation/base/AnimConfig;->setEase(I[F)Lmiui/animation/base/AnimConfig;

    move-result-object v0

    iput-object v0, p0, Lmiui/animation/controller/FolmeTouch;->mAlphaConfig:Lmiui/animation/base/AnimConfig;

    invoke-virtual {p0, v5}, Lmiui/animation/controller/FolmeTouch;->setTintMode(I)Lmiui/animation/ITouchStyle;

    return-void

    :array_a2
    .array-data 4
        0x3f7d70a4    # 0.99f
        0x3e19999a    # 0.15f
    .end array-data

    :array_aa
    .array-data 4
        0x3f7d70a4    # 0.99f
        0x3e99999a    # 0.3f
    .end array-data

    :array_b2
    .array-data 4
        0x3f666666    # 0.9f
        0x3e4ccccd    # 0.2f
    .end array-data
.end method

.method static synthetic access$000(Lmiui/animation/controller/FolmeTouch;Lmiui/animation/ITouchStyle$TouchType;)Z
    .registers 3

    invoke-direct {p0, p1}, Lmiui/animation/controller/FolmeTouch;->isScaleSet(Lmiui/animation/ITouchStyle$TouchType;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lmiui/animation/controller/FolmeTouch;)F
    .registers 2

    iget v0, p0, Lmiui/animation/controller/FolmeTouch;->mScaleDist:F

    return v0
.end method

.method static synthetic access$200(Lmiui/animation/controller/FolmeTouch;Landroid/view/View;Z[Lmiui/animation/base/AnimConfig;)Z
    .registers 5

    invoke-direct {p0, p1, p2, p3}, Lmiui/animation/controller/FolmeTouch;->bindListView(Landroid/view/View;Z[Lmiui/animation/base/AnimConfig;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lmiui/animation/controller/FolmeTouch;Landroid/view/View;Z)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lmiui/animation/controller/FolmeTouch;->resetViewTouch(Landroid/view/View;Z)V

    return-void
.end method

.method static synthetic access$500(Lmiui/animation/controller/FolmeTouch;[Lmiui/animation/base/AnimConfig;)V
    .registers 2

    invoke-direct {p0, p1}, Lmiui/animation/controller/FolmeTouch;->onEventUp([Lmiui/animation/base/AnimConfig;)V

    return-void
.end method

.method static synthetic access$600(Lmiui/animation/controller/FolmeTouch;Landroid/view/View;Landroid/view/MotionEvent;[Lmiui/animation/base/AnimConfig;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lmiui/animation/controller/FolmeTouch;->handleMotionEvent(Landroid/view/View;Landroid/view/MotionEvent;[Lmiui/animation/base/AnimConfig;)V

    return-void
.end method

.method private varargs bindListView(Landroid/view/View;Z[Lmiui/animation/base/AnimConfig;)Z
    .registers 8

    iget-object v0, p0, Lmiui/animation/controller/FolmeTouch;->mState:Lmiui/animation/controller/IFolmeStateStyle;

    invoke-interface {v0}, Lmiui/animation/controller/IFolmeStateStyle;->getTarget()Lmiui/animation/IAnimTarget;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_37

    invoke-direct {p0, p1}, Lmiui/animation/controller/FolmeTouch;->getListViewInfo(Landroid/view/View;)Lmiui/animation/controller/FolmeTouch$ListViewInfo;

    move-result-object v0

    move-object v2, v0

    if-eqz v0, :cond_37

    iget-object v0, v2, Lmiui/animation/controller/FolmeTouch$ListViewInfo;->listView:Landroid/widget/AbsListView;

    if-eqz v0, :cond_37

    invoke-static {}, Lmiui/animation/utils/LogUtils;->isLogEnabled()Z

    move-result v0

    if-eqz v0, :cond_30

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleListViewTouch for "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lmiui/animation/utils/LogUtils;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_30
    iget-object v0, v2, Lmiui/animation/controller/FolmeTouch$ListViewInfo;->listView:Landroid/widget/AbsListView;

    invoke-direct {p0, v0, p1, p2, p3}, Lmiui/animation/controller/FolmeTouch;->handleListViewTouch(Landroid/widget/AbsListView;Landroid/view/View;Z[Lmiui/animation/base/AnimConfig;)V

    const/4 v0, 0x1

    return v0

    :cond_37
    return v1
.end method

.method private varargs getDownConfig([Lmiui/animation/base/AnimConfig;)[Lmiui/animation/base/AnimConfig;
    .registers 5

    const/4 v0, 0x1

    new-array v0, v0, [Lmiui/animation/base/AnimConfig;

    iget-object v1, p0, Lmiui/animation/controller/FolmeTouch;->mDownConfig:Lmiui/animation/base/AnimConfig;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {p1, v0}, Lmiui/animation/utils/CommonUtils;->mergeArray([Ljava/lang/Object;[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lmiui/animation/base/AnimConfig;

    return-object v0
.end method

.method private getListViewInfo(Landroid/view/View;)Lmiui/animation/controller/FolmeTouch$ListViewInfo;
    .registers 8

    new-instance v0, Lmiui/animation/controller/FolmeTouch$ListViewInfo;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lmiui/animation/controller/FolmeTouch$ListViewInfo;-><init>(Lmiui/animation/controller/FolmeTouch$1;)V

    const/4 v1, 0x0

    move-object v2, p1

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    :goto_c
    if-eqz v3, :cond_22

    instance-of v4, v3, Landroid/widget/AbsListView;

    if-eqz v4, :cond_16

    move-object v1, v3

    check-cast v1, Landroid/widget/AbsListView;

    goto :goto_22

    :cond_16
    instance-of v4, v3, Landroid/view/View;

    if-eqz v4, :cond_1d

    move-object v2, v3

    check-cast v2, Landroid/view/View;

    :cond_1d
    invoke-interface {v3}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    goto :goto_c

    :cond_22
    :goto_22
    if-eqz v1, :cond_31

    new-instance v4, Ljava/lang/ref/WeakReference;

    iget-object v5, v0, Lmiui/animation/controller/FolmeTouch$ListViewInfo;->listView:Landroid/widget/AbsListView;

    invoke-direct {v4, v5}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v4, p0, Lmiui/animation/controller/FolmeTouch;->mListView:Ljava/lang/ref/WeakReference;

    iput-object v1, v0, Lmiui/animation/controller/FolmeTouch$ListViewInfo;->listView:Landroid/widget/AbsListView;

    iput-object v2, v0, Lmiui/animation/controller/FolmeTouch$ListViewInfo;->itemView:Landroid/view/View;

    :cond_31
    return-object v0
.end method

.method public static getListViewTouchListener(Landroid/widget/AbsListView;)Lmiui/animation/controller/ListViewTouchListener;
    .registers 2

    const v0, 0x100b0002

    invoke-virtual {p0, v0}, Landroid/widget/AbsListView;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/animation/controller/ListViewTouchListener;

    return-object v0
.end method

.method private varargs getType([Lmiui/animation/ITouchStyle$TouchType;)Lmiui/animation/ITouchStyle$TouchType;
    .registers 3

    array-length v0, p1

    if-lez v0, :cond_7

    const/4 v0, 0x0

    aget-object v0, p1, v0

    goto :goto_9

    :cond_7
    sget-object v0, Lmiui/animation/ITouchStyle$TouchType;->DOWN:Lmiui/animation/ITouchStyle$TouchType;

    :goto_9
    return-object v0
.end method

.method private varargs getUpConfig([Lmiui/animation/base/AnimConfig;)[Lmiui/animation/base/AnimConfig;
    .registers 5

    const/4 v0, 0x2

    new-array v0, v0, [Lmiui/animation/base/AnimConfig;

    iget-object v1, p0, Lmiui/animation/controller/FolmeTouch;->mUpConfig:Lmiui/animation/base/AnimConfig;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lmiui/animation/controller/FolmeTouch;->mAlphaConfig:Lmiui/animation/base/AnimConfig;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {p1, v0}, Lmiui/animation/utils/CommonUtils;->mergeArray([Ljava/lang/Object;[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lmiui/animation/base/AnimConfig;

    return-object v0
.end method

.method private varargs handleListViewTouch(Landroid/widget/AbsListView;Landroid/view/View;Z[Lmiui/animation/base/AnimConfig;)V
    .registers 7

    invoke-static {p1}, Lmiui/animation/controller/FolmeTouch;->getListViewTouchListener(Landroid/widget/AbsListView;)Lmiui/animation/controller/ListViewTouchListener;

    move-result-object v0

    if-nez v0, :cond_12

    new-instance v1, Lmiui/animation/controller/ListViewTouchListener;

    invoke-direct {v1, p1}, Lmiui/animation/controller/ListViewTouchListener;-><init>(Landroid/widget/AbsListView;)V

    move-object v0, v1

    const v1, 0x100b0002

    invoke-virtual {p1, v1, v0}, Landroid/widget/AbsListView;->setTag(ILjava/lang/Object;)V

    :cond_12
    if-eqz p3, :cond_17

    invoke-virtual {p1, v0}, Landroid/widget/AbsListView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :cond_17
    new-instance v1, Lmiui/animation/controller/FolmeTouch$InnerListViewTouchListener;

    invoke-direct {v1, p0, p4}, Lmiui/animation/controller/FolmeTouch$InnerListViewTouchListener;-><init>(Lmiui/animation/controller/FolmeTouch;[Lmiui/animation/base/AnimConfig;)V

    invoke-virtual {v0, p2, v1}, Lmiui/animation/controller/ListViewTouchListener;->putListener(Landroid/view/View;Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method private varargs handleMotionEvent(Landroid/view/View;Landroid/view/MotionEvent;[Lmiui/animation/base/AnimConfig;)V
    .registers 6

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-eqz v0, :cond_11

    const/4 v1, 0x2

    if-eq v0, v1, :cond_d

    invoke-direct {p0, p3}, Lmiui/animation/controller/FolmeTouch;->onEventUp([Lmiui/animation/base/AnimConfig;)V

    goto :goto_15

    :cond_d
    invoke-direct {p0, p2, p1, p3}, Lmiui/animation/controller/FolmeTouch;->onEventMove(Landroid/view/MotionEvent;Landroid/view/View;[Lmiui/animation/base/AnimConfig;)V

    goto :goto_15

    :cond_11
    invoke-direct {p0, p3}, Lmiui/animation/controller/FolmeTouch;->onEventDown([Lmiui/animation/base/AnimConfig;)V

    nop

    :goto_15
    return-void
.end method

.method private varargs handleViewTouch(Landroid/view/View;[Lmiui/animation/base/AnimConfig;)V
    .registers 6

    sget-object v0, Lmiui/animation/controller/FolmeTouch;->sTouchRecord:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/animation/controller/FolmeTouch$InnerViewTouchListener;

    if-nez v0, :cond_16

    new-instance v1, Lmiui/animation/controller/FolmeTouch$InnerViewTouchListener;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lmiui/animation/controller/FolmeTouch$InnerViewTouchListener;-><init>(Lmiui/animation/controller/FolmeTouch$1;)V

    move-object v0, v1

    sget-object v1, Lmiui/animation/controller/FolmeTouch;->sTouchRecord:Ljava/util/WeakHashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_16
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    invoke-virtual {v0, p0, p2}, Lmiui/animation/controller/FolmeTouch$InnerViewTouchListener;->addTouch(Lmiui/animation/controller/FolmeTouch;[Lmiui/animation/base/AnimConfig;)V

    return-void
.end method

.method private initScaleDist(Lmiui/animation/IAnimTarget;)V
    .registers 6

    instance-of v0, p1, Lmiui/animation/ViewTarget;

    if-eqz v0, :cond_c

    move-object v0, p1

    check-cast v0, Lmiui/animation/ViewTarget;

    invoke-virtual {v0}, Lmiui/animation/ViewTarget;->getTargetObject()Landroid/view/View;

    move-result-object v0

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    if-eqz v0, :cond_20

    const/4 v1, 0x1

    const/high16 v2, 0x41200000    # 10.0f

    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    invoke-static {v1, v2, v3}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v1

    iput v1, p0, Lmiui/animation/controller/FolmeTouch;->mScaleDist:F

    :cond_20
    return-void
.end method

.method static isOnTouchView(Landroid/view/View;[ILandroid/view/MotionEvent;)Z
    .registers 9

    const/4 v0, 0x1

    if-eqz p0, :cond_2e

    invoke-virtual {p0, p1}, Landroid/view/View;->getLocationOnScreen([I)V

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    float-to-int v2, v2

    const/4 v3, 0x0

    aget v4, p1, v3

    if-lt v1, v4, :cond_2c

    aget v4, p1, v3

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v5

    add-int/2addr v4, v5

    if-gt v1, v4, :cond_2c

    aget v4, p1, v0

    if-lt v2, v4, :cond_2c

    aget v4, p1, v0

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v5

    add-int/2addr v4, v5

    if-gt v2, v4, :cond_2c

    goto :goto_2d

    :cond_2c
    move v0, v3

    :goto_2d
    return v0

    :cond_2e
    return v0
.end method

.method private isScaleSet(Lmiui/animation/ITouchStyle$TouchType;)Z
    .registers 4

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iget-object v1, p0, Lmiui/animation/controller/FolmeTouch;->mScaleSetMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private varargs onEventDown([Lmiui/animation/base/AnimConfig;)V
    .registers 4

    invoke-static {}, Lmiui/animation/utils/LogUtils;->isLogEnabled()Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "onEventDown, touchDown"

    invoke-static {v1, v0}, Lmiui/animation/utils/LogUtils;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_e
    const/4 v0, 0x1

    iput-boolean v0, p0, Lmiui/animation/controller/FolmeTouch;->mIsDown:Z

    invoke-virtual {p0, p1}, Lmiui/animation/controller/FolmeTouch;->touchDown([Lmiui/animation/base/AnimConfig;)V

    return-void
.end method

.method private varargs onEventMove(Landroid/view/MotionEvent;Landroid/view/View;[Lmiui/animation/base/AnimConfig;)V
    .registers 5

    iget-boolean v0, p0, Lmiui/animation/controller/FolmeTouch;->mIsDown:Z

    if-eqz v0, :cond_12

    iget-object v0, p0, Lmiui/animation/controller/FolmeTouch;->mLocation:[I

    invoke-static {p2, v0, p1}, Lmiui/animation/controller/FolmeTouch;->isOnTouchView(Landroid/view/View;[ILandroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_12

    invoke-virtual {p0, p3}, Lmiui/animation/controller/FolmeTouch;->touchUp([Lmiui/animation/base/AnimConfig;)V

    invoke-direct {p0}, Lmiui/animation/controller/FolmeTouch;->resetTouchStatus()V

    :cond_12
    return-void
.end method

.method private varargs onEventUp([Lmiui/animation/base/AnimConfig;)V
    .registers 4

    iget-boolean v0, p0, Lmiui/animation/controller/FolmeTouch;->mIsDown:Z

    if-eqz v0, :cond_18

    invoke-static {}, Lmiui/animation/utils/LogUtils;->isLogEnabled()Z

    move-result v0

    if-eqz v0, :cond_12

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "onEventUp, touchUp"

    invoke-static {v1, v0}, Lmiui/animation/utils/LogUtils;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_12
    invoke-virtual {p0, p1}, Lmiui/animation/controller/FolmeTouch;->touchUp([Lmiui/animation/base/AnimConfig;)V

    invoke-direct {p0}, Lmiui/animation/controller/FolmeTouch;->resetTouchStatus()V

    :cond_18
    return-void
.end method

.method private resetTouchStatus()V
    .registers 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lmiui/animation/controller/FolmeTouch;->mIsDown:Z

    return-void
.end method

.method private resetView(Ljava/lang/ref/WeakReference;)Landroid/view/View;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;)",
            "Landroid/view/View;"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-eqz v0, :cond_c

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :cond_c
    return-object v0
.end method

.method private resetViewTouch(Landroid/view/View;Z)V
    .registers 4

    invoke-virtual {p1, p2}, Landroid/view/View;->setClickable(Z)V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method private setTintColor()V
    .registers 9

    iget-boolean v0, p0, Lmiui/animation/controller/FolmeTouch;->mSetTint:Z

    if-eqz v0, :cond_5

    return-void

    :cond_5
    const/16 v0, 0x14

    const/4 v1, 0x0

    invoke-static {v0, v1, v1, v1}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    iget-object v2, p0, Lmiui/animation/controller/FolmeTouch;->mState:Lmiui/animation/controller/IFolmeStateStyle;

    invoke-interface {v2}, Lmiui/animation/controller/IFolmeStateStyle;->getTarget()Lmiui/animation/IAnimTarget;

    move-result-object v2

    invoke-virtual {v2}, Lmiui/animation/IAnimTarget;->getTargetObject()Ljava/lang/Object;

    move-result-object v2

    instance-of v3, v2, Landroid/view/View;

    if-eqz v3, :cond_3e

    move-object v3, v2

    check-cast v3, Landroid/view/View;

    sget v4, Lmiui/R$color;->folme_color_touch_tint:I

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    const-string v6, "uimode"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/UiModeManager;

    if-eqz v5, :cond_36

    invoke-virtual {v5}, Landroid/app/UiModeManager;->getNightMode()I

    move-result v6

    const/4 v7, 0x2

    if-ne v6, v7, :cond_36

    sget v4, Lmiui/R$color;->folme_color_touch_tint_dark:I

    :cond_36
    invoke-virtual {v3}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    :cond_3e
    iget-object v3, p0, Lmiui/animation/controller/FolmeTouch;->mState:Lmiui/animation/controller/IFolmeStateStyle;

    sget-object v4, Lmiui/animation/ITouchStyle$TouchType;->DOWN:Lmiui/animation/ITouchStyle$TouchType;

    invoke-interface {v3, v4}, Lmiui/animation/controller/IFolmeStateStyle;->getState(Ljava/lang/Object;)Lmiui/animation/controller/AnimState;

    move-result-object v3

    const/4 v4, 0x7

    invoke-virtual {p0, v4}, Lmiui/animation/controller/FolmeTouch;->getProperty(I)Lmiui/animation/property/FloatProperty;

    move-result-object v4

    new-array v1, v1, [J

    invoke-virtual {v3, v4, v0, v1}, Lmiui/animation/controller/AnimState;->add(Lmiui/animation/property/FloatProperty;I[J)Lmiui/animation/controller/AnimState;

    return-void
.end method

.method private setTouchView(Landroid/view/View;)Z
    .registers 4

    iget-object v0, p0, Lmiui/animation/controller/FolmeTouch;->mTouchView:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_b

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    if-ne v0, p1, :cond_10

    const/4 v1, 0x0

    return v1

    :cond_10
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lmiui/animation/controller/FolmeTouch;->mTouchView:Ljava/lang/ref/WeakReference;

    const/4 v1, 0x1

    return v1
.end method


# virtual methods
.method public varargs bindViewOfListItem(Landroid/view/View;[Lmiui/animation/base/AnimConfig;)V
    .registers 4

    invoke-direct {p0, p1}, Lmiui/animation/controller/FolmeTouch;->setTouchView(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    :cond_7
    new-instance v0, Lmiui/animation/controller/FolmeTouch$2;

    invoke-direct {v0, p0, p1, p2}, Lmiui/animation/controller/FolmeTouch$2;-><init>(Lmiui/animation/controller/FolmeTouch;Landroid/view/View;[Lmiui/animation/base/AnimConfig;)V

    invoke-static {p1, v0}, Lmiui/animation/utils/CommonUtils;->runOnPreDraw(Landroid/view/View;Ljava/lang/Runnable;)V

    return-void
.end method

.method public cancel()V
    .registers 2

    invoke-super {p0}, Lmiui/animation/controller/FolmeBase;->cancel()V

    iget-object v0, p0, Lmiui/animation/controller/FolmeTouch;->mFontStyle:Lmiui/animation/controller/FolmeFont;

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Lmiui/animation/controller/FolmeFont;->cancel()V

    :cond_a
    return-void
.end method

.method public clean()V
    .registers 4

    invoke-super {p0}, Lmiui/animation/controller/FolmeBase;->clean()V

    iget-object v0, p0, Lmiui/animation/controller/FolmeTouch;->mFontStyle:Lmiui/animation/controller/FolmeFont;

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Lmiui/animation/controller/FolmeFont;->clean()V

    :cond_a
    iget-object v0, p0, Lmiui/animation/controller/FolmeTouch;->mScaleSetMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    iget-object v0, p0, Lmiui/animation/controller/FolmeTouch;->mTouchView:Ljava/lang/ref/WeakReference;

    const/4 v1, 0x0

    if-eqz v0, :cond_19

    invoke-direct {p0, v0}, Lmiui/animation/controller/FolmeTouch;->resetView(Ljava/lang/ref/WeakReference;)Landroid/view/View;

    iput-object v1, p0, Lmiui/animation/controller/FolmeTouch;->mTouchView:Ljava/lang/ref/WeakReference;

    :cond_19
    iget-object v0, p0, Lmiui/animation/controller/FolmeTouch;->mListView:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_2b

    invoke-direct {p0, v0}, Lmiui/animation/controller/FolmeTouch;->resetView(Ljava/lang/ref/WeakReference;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_29

    const v2, 0x100b0002

    invoke-virtual {v0, v2, v1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    :cond_29
    iput-object v1, p0, Lmiui/animation/controller/FolmeTouch;->mListView:Ljava/lang/ref/WeakReference;

    :cond_2b
    invoke-direct {p0}, Lmiui/animation/controller/FolmeTouch;->resetTouchStatus()V

    return-void
.end method

.method public varargs handleTouchOf(Landroid/view/View;Z[Lmiui/animation/base/AnimConfig;)V
    .registers 12

    invoke-direct {p0, p1, p3}, Lmiui/animation/controller/FolmeTouch;->handleViewTouch(Landroid/view/View;[Lmiui/animation/base/AnimConfig;)V

    invoke-direct {p0, p1}, Lmiui/animation/controller/FolmeTouch;->setTouchView(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_3c

    invoke-static {}, Lmiui/animation/utils/LogUtils;->isLogEnabled()Z

    move-result v0

    if-eqz v0, :cond_26

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleViewTouch for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lmiui/animation/utils/LogUtils;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_26
    invoke-virtual {p1}, Landroid/view/View;->isClickable()Z

    move-result v0

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Landroid/view/View;->setClickable(Z)V

    new-instance v1, Lmiui/animation/controller/FolmeTouch$3;

    move-object v2, v1

    move-object v3, p0

    move v4, p2

    move-object v5, p1

    move-object v6, p3

    move v7, v0

    invoke-direct/range {v2 .. v7}, Lmiui/animation/controller/FolmeTouch$3;-><init>(Lmiui/animation/controller/FolmeTouch;ZLandroid/view/View;[Lmiui/animation/base/AnimConfig;Z)V

    invoke-static {p1, v1}, Lmiui/animation/utils/CommonUtils;->runOnPreDraw(Landroid/view/View;Ljava/lang/Runnable;)V

    :cond_3c
    return-void
.end method

.method public varargs handleTouchOf(Landroid/view/View;[Lmiui/animation/base/AnimConfig;)V
    .registers 4

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lmiui/animation/controller/FolmeTouch;->handleTouchOf(Landroid/view/View;Z[Lmiui/animation/base/AnimConfig;)V

    return-void
.end method

.method public ignoreTouchOf(Landroid/view/View;)V
    .registers 4

    sget-object v0, Lmiui/animation/controller/FolmeTouch;->sTouchRecord:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/animation/controller/FolmeTouch$InnerViewTouchListener;

    if-eqz v0, :cond_15

    invoke-virtual {v0, p0}, Lmiui/animation/controller/FolmeTouch$InnerViewTouchListener;->removeTouch(Lmiui/animation/controller/FolmeTouch;)Z

    move-result v1

    if-eqz v1, :cond_15

    sget-object v1, Lmiui/animation/controller/FolmeTouch;->sTouchRecord:Ljava/util/WeakHashMap;

    invoke-virtual {v1, p1}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_15
    return-void
.end method

.method public onMotionEvent(Landroid/view/MotionEvent;)V
    .registers 4

    const/4 v0, 0x0

    new-array v0, v0, [Lmiui/animation/base/AnimConfig;

    const/4 v1, 0x0

    invoke-direct {p0, v1, p1, v0}, Lmiui/animation/controller/FolmeTouch;->handleMotionEvent(Landroid/view/View;Landroid/view/MotionEvent;[Lmiui/animation/base/AnimConfig;)V

    return-void
.end method

.method public varargs onMotionEventEx(Landroid/view/View;Landroid/view/MotionEvent;[Lmiui/animation/base/AnimConfig;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lmiui/animation/controller/FolmeTouch;->handleMotionEvent(Landroid/view/View;Landroid/view/MotionEvent;[Lmiui/animation/base/AnimConfig;)V

    return-void
.end method

.method public varargs setAlpha(F[Lmiui/animation/ITouchStyle$TouchType;)Lmiui/animation/ITouchStyle;
    .registers 6

    iget-object v0, p0, Lmiui/animation/controller/FolmeTouch;->mState:Lmiui/animation/controller/IFolmeStateStyle;

    invoke-direct {p0, p2}, Lmiui/animation/controller/FolmeTouch;->getType([Lmiui/animation/ITouchStyle$TouchType;)Lmiui/animation/ITouchStyle$TouchType;

    move-result-object v1

    invoke-interface {v0, v1}, Lmiui/animation/controller/IFolmeStateStyle;->getState(Ljava/lang/Object;)Lmiui/animation/controller/AnimState;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {p0, v1}, Lmiui/animation/controller/FolmeTouch;->getProperty(I)Lmiui/animation/property/FloatProperty;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [J

    invoke-virtual {v0, v1, p1, v2}, Lmiui/animation/controller/AnimState;->add(Lmiui/animation/property/FloatProperty;F[J)Lmiui/animation/controller/AnimState;

    return-object p0
.end method

.method public setBackgroundColor(FFFF)Lmiui/animation/ITouchStyle;
    .registers 9

    const/high16 v0, 0x437f0000    # 255.0f

    mul-float v1, p1, v0

    float-to-int v1, v1

    mul-float v2, p2, v0

    float-to-int v2, v2

    mul-float v3, p3, v0

    float-to-int v3, v3

    mul-float/2addr v0, p4

    float-to-int v0, v0

    invoke-static {v1, v2, v3, v0}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    invoke-virtual {p0, v0}, Lmiui/animation/controller/FolmeTouch;->setBackgroundColor(I)Lmiui/animation/ITouchStyle;

    move-result-object v0

    return-object v0
.end method

.method public setBackgroundColor(I)Lmiui/animation/ITouchStyle;
    .registers 5

    iget-object v0, p0, Lmiui/animation/controller/FolmeTouch;->mState:Lmiui/animation/controller/IFolmeStateStyle;

    sget-object v1, Lmiui/animation/ITouchStyle$TouchType;->DOWN:Lmiui/animation/ITouchStyle$TouchType;

    invoke-interface {v0, v1}, Lmiui/animation/controller/IFolmeStateStyle;->getState(Ljava/lang/Object;)Lmiui/animation/controller/AnimState;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {p0, v1}, Lmiui/animation/controller/FolmeTouch;->getProperty(I)Lmiui/animation/property/FloatProperty;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [J

    invoke-virtual {v0, v1, p1, v2}, Lmiui/animation/controller/AnimState;->add(Lmiui/animation/property/FloatProperty;I[J)Lmiui/animation/controller/AnimState;

    return-object p0
.end method

.method public setFontStyle(Lmiui/animation/controller/FolmeFont;)V
    .registers 2

    iput-object p1, p0, Lmiui/animation/controller/FolmeTouch;->mFontStyle:Lmiui/animation/controller/FolmeFont;

    return-void
.end method

.method public varargs setScale(F[Lmiui/animation/ITouchStyle$TouchType;)Lmiui/animation/ITouchStyle;
    .registers 8

    invoke-direct {p0, p2}, Lmiui/animation/controller/FolmeTouch;->getType([Lmiui/animation/ITouchStyle$TouchType;)Lmiui/animation/ITouchStyle$TouchType;

    move-result-object v0

    iget-object v1, p0, Lmiui/animation/controller/FolmeTouch;->mScaleSetMap:Ljava/util/Map;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lmiui/animation/controller/FolmeTouch;->mState:Lmiui/animation/controller/IFolmeStateStyle;

    invoke-interface {v1, v0}, Lmiui/animation/controller/IFolmeStateStyle;->getState(Ljava/lang/Object;)Lmiui/animation/controller/AnimState;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {p0, v2}, Lmiui/animation/controller/FolmeTouch;->getProperty(I)Lmiui/animation/property/FloatProperty;

    move-result-object v2

    const/4 v3, 0x0

    new-array v4, v3, [J

    invoke-virtual {v1, v2, p1, v4}, Lmiui/animation/controller/AnimState;->add(Lmiui/animation/property/FloatProperty;F[J)Lmiui/animation/controller/AnimState;

    move-result-object v1

    const/4 v2, 0x3

    invoke-virtual {p0, v2}, Lmiui/animation/controller/FolmeTouch;->getProperty(I)Lmiui/animation/property/FloatProperty;

    move-result-object v2

    new-array v3, v3, [J

    invoke-virtual {v1, v2, p1, v3}, Lmiui/animation/controller/AnimState;->add(Lmiui/animation/property/FloatProperty;F[J)Lmiui/animation/controller/AnimState;

    return-object p0
.end method

.method public setTint(FFFF)Lmiui/animation/ITouchStyle;
    .registers 9

    const/high16 v0, 0x437f0000    # 255.0f

    mul-float v1, p1, v0

    float-to-int v1, v1

    mul-float v2, p2, v0

    float-to-int v2, v2

    mul-float v3, p3, v0

    float-to-int v3, v3

    mul-float/2addr v0, p4

    float-to-int v0, v0

    invoke-static {v1, v2, v3, v0}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    invoke-virtual {p0, v0}, Lmiui/animation/controller/FolmeTouch;->setTint(I)Lmiui/animation/ITouchStyle;

    move-result-object v0

    return-object v0
.end method

.method public setTint(I)Lmiui/animation/ITouchStyle;
    .registers 5

    const/4 v0, 0x1

    iput-boolean v0, p0, Lmiui/animation/controller/FolmeTouch;->mSetTint:Z

    iget-object v0, p0, Lmiui/animation/controller/FolmeTouch;->mState:Lmiui/animation/controller/IFolmeStateStyle;

    sget-object v1, Lmiui/animation/ITouchStyle$TouchType;->DOWN:Lmiui/animation/ITouchStyle$TouchType;

    invoke-interface {v0, v1}, Lmiui/animation/controller/IFolmeStateStyle;->getState(Ljava/lang/Object;)Lmiui/animation/controller/AnimState;

    move-result-object v0

    const/4 v1, 0x7

    invoke-virtual {p0, v1}, Lmiui/animation/controller/FolmeTouch;->getProperty(I)Lmiui/animation/property/FloatProperty;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [J

    invoke-virtual {v0, v1, p1, v2}, Lmiui/animation/controller/AnimState;->add(Lmiui/animation/property/FloatProperty;I[J)Lmiui/animation/controller/AnimState;

    return-object p0
.end method

.method public setTintMode(I)Lmiui/animation/ITouchStyle;
    .registers 3

    iget-object v0, p0, Lmiui/animation/controller/FolmeTouch;->mDownConfig:Lmiui/animation/base/AnimConfig;

    invoke-virtual {v0, p1}, Lmiui/animation/base/AnimConfig;->setTintMode(I)Lmiui/animation/base/AnimConfig;

    iget-object v0, p0, Lmiui/animation/controller/FolmeTouch;->mUpConfig:Lmiui/animation/base/AnimConfig;

    invoke-virtual {v0, p1}, Lmiui/animation/base/AnimConfig;->setTintMode(I)Lmiui/animation/base/AnimConfig;

    return-object p0
.end method

.method public setTouchDown()V
    .registers 3

    invoke-direct {p0}, Lmiui/animation/controller/FolmeTouch;->setTintColor()V

    iget-object v0, p0, Lmiui/animation/controller/FolmeTouch;->mState:Lmiui/animation/controller/IFolmeStateStyle;

    sget-object v1, Lmiui/animation/ITouchStyle$TouchType;->DOWN:Lmiui/animation/ITouchStyle$TouchType;

    invoke-interface {v0, v1}, Lmiui/animation/controller/IFolmeStateStyle;->setTo(Ljava/lang/Object;)Lmiui/animation/IStateStyle;

    return-void
.end method

.method public setTouchUp()V
    .registers 3

    iget-object v0, p0, Lmiui/animation/controller/FolmeTouch;->mState:Lmiui/animation/controller/IFolmeStateStyle;

    sget-object v1, Lmiui/animation/ITouchStyle$TouchType;->UP:Lmiui/animation/ITouchStyle$TouchType;

    invoke-interface {v0, v1}, Lmiui/animation/controller/IFolmeStateStyle;->setTo(Ljava/lang/Object;)Lmiui/animation/IStateStyle;

    return-void
.end method

.method public varargs touchDown([Lmiui/animation/base/AnimConfig;)V
    .registers 6

    invoke-direct {p0}, Lmiui/animation/controller/FolmeTouch;->setTintColor()V

    sget-object v0, Lmiui/animation/ITouchStyle$TouchType;->UP:Lmiui/animation/ITouchStyle$TouchType;

    sget-object v1, Lmiui/animation/ITouchStyle$TouchType;->DOWN:Lmiui/animation/ITouchStyle$TouchType;

    invoke-virtual {p0, v0, v1}, Lmiui/animation/controller/FolmeTouch;->alignState(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-direct {p0, p1}, Lmiui/animation/controller/FolmeTouch;->getDownConfig([Lmiui/animation/base/AnimConfig;)[Lmiui/animation/base/AnimConfig;

    move-result-object v0

    iget-object v1, p0, Lmiui/animation/controller/FolmeTouch;->mFontStyle:Lmiui/animation/controller/FolmeFont;

    if-eqz v1, :cond_17

    iget v2, p0, Lmiui/animation/controller/FolmeTouch;->mDownWeight:I

    invoke-virtual {v1, v2, v0}, Lmiui/animation/controller/FolmeFont;->to(I[Lmiui/animation/base/AnimConfig;)Lmiui/animation/IVarFontStyle;

    :cond_17
    iget-object v1, p0, Lmiui/animation/controller/FolmeTouch;->mState:Lmiui/animation/controller/IFolmeStateStyle;

    iget-object v2, p0, Lmiui/animation/controller/FolmeTouch;->mState:Lmiui/animation/controller/IFolmeStateStyle;

    sget-object v3, Lmiui/animation/ITouchStyle$TouchType;->DOWN:Lmiui/animation/ITouchStyle$TouchType;

    invoke-interface {v2, v3}, Lmiui/animation/controller/IFolmeStateStyle;->getState(Ljava/lang/Object;)Lmiui/animation/controller/AnimState;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Lmiui/animation/controller/IFolmeStateStyle;->to(Ljava/lang/Object;[Lmiui/animation/base/AnimConfig;)Lmiui/animation/IStateStyle;

    return-void
.end method

.method public varargs touchUp([Lmiui/animation/base/AnimConfig;)V
    .registers 6

    sget-object v0, Lmiui/animation/ITouchStyle$TouchType;->DOWN:Lmiui/animation/ITouchStyle$TouchType;

    sget-object v1, Lmiui/animation/ITouchStyle$TouchType;->UP:Lmiui/animation/ITouchStyle$TouchType;

    invoke-virtual {p0, v0, v1}, Lmiui/animation/controller/FolmeTouch;->alignState(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-direct {p0, p1}, Lmiui/animation/controller/FolmeTouch;->getUpConfig([Lmiui/animation/base/AnimConfig;)[Lmiui/animation/base/AnimConfig;

    move-result-object v0

    iget-object v1, p0, Lmiui/animation/controller/FolmeTouch;->mFontStyle:Lmiui/animation/controller/FolmeFont;

    if-eqz v1, :cond_14

    iget v2, p0, Lmiui/animation/controller/FolmeTouch;->mUpWeight:I

    invoke-virtual {v1, v2, v0}, Lmiui/animation/controller/FolmeFont;->to(I[Lmiui/animation/base/AnimConfig;)Lmiui/animation/IVarFontStyle;

    :cond_14
    iget-object v1, p0, Lmiui/animation/controller/FolmeTouch;->mState:Lmiui/animation/controller/IFolmeStateStyle;

    iget-object v2, p0, Lmiui/animation/controller/FolmeTouch;->mState:Lmiui/animation/controller/IFolmeStateStyle;

    sget-object v3, Lmiui/animation/ITouchStyle$TouchType;->UP:Lmiui/animation/ITouchStyle$TouchType;

    invoke-interface {v2, v3}, Lmiui/animation/controller/IFolmeStateStyle;->getState(Ljava/lang/Object;)Lmiui/animation/controller/AnimState;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Lmiui/animation/controller/IFolmeStateStyle;->to(Ljava/lang/Object;[Lmiui/animation/base/AnimConfig;)Lmiui/animation/IStateStyle;

    return-void
.end method

.method public useVarFont(Landroid/widget/TextView;III)Lmiui/animation/ITouchStyle;
    .registers 6

    iget-object v0, p0, Lmiui/animation/controller/FolmeTouch;->mFontStyle:Lmiui/animation/controller/FolmeFont;

    if-eqz v0, :cond_b

    iput p3, p0, Lmiui/animation/controller/FolmeTouch;->mUpWeight:I

    iput p4, p0, Lmiui/animation/controller/FolmeTouch;->mDownWeight:I

    invoke-virtual {v0, p1, p2, p3}, Lmiui/animation/controller/FolmeFont;->useAt(Landroid/widget/TextView;II)Lmiui/animation/IVarFontStyle;

    :cond_b
    return-object p0
.end method
