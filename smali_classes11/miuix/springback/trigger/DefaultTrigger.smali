.class public Lmiuix/springback/trigger/DefaultTrigger;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final OFFSET_RESET_STATE:F = 0.25f

.field private static final OFFSET_SIMPLE_VELOCITY_Y:F = 1000.0f

.field private static final TAG:Ljava/lang/String; = "DefaultTrigger"

.field private static mIndeterminateDistance:I

.field private static mIndeterminateTop:I

.field private static mSimpleEnter:I

.field private static mSimpleTrigger:I

.field private static mUpIndeterminateDistance:I


# instance fields
.field private final mActionComplete:Lmiuix/springback/trigger/DefaultTrigger$ActionComplete;

.field private mActionIndex:I

.field private final mActionStart:Lmiuix/springback/trigger/DefaultTrigger$ActionStart;

.field private final mActionTriggered:Lmiuix/springback/trigger/DefaultTrigger$ActionTriggered;

.field private mActions:Ljava/util/List;

.field private mCompleteListener:Lmiuix/springback/trigger/DefaultTrigger$IndeterminateAction$OnActionCompleteListener;

.field private mContainer:Landroid/widget/RelativeLayout;

.field private mContext:Landroid/content/Context;

.field private mCurrentAction:Lmiuix/springback/trigger/DefaultTrigger$Action;

.field private mCurrentState:Lmiuix/springback/trigger/DefaultTrigger$TriggerState;

.field private final mIdle:Lmiuix/springback/trigger/DefaultTrigger$Idle;

.field private mIndicatorContainer:Landroid/view/ViewGroup;

.field private mLastScrollDistance:I

.field private mLayout:Lmiuix/springback/view/SpringBackLayout;

.field private mLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

.field private mLayoutInflater:Landroid/view/LayoutInflater;

.field private mLoadingIndicator:Landroid/widget/ProgressBar;

.field private mOnScrollListener:Lmiuix/springback/view/SpringBackLayout$OnScrollListener;

.field private mOnSpringListener:Lmiuix/springback/view/SpringBackLayout$OnSpringListener;

.field private mScrollDistance:I

.field private mScrollState:I

.field private mScrollerFinished:Z

.field private mSimpleActionView:Landroid/view/View;

.field private final mTracking:Lmiuix/springback/trigger/DefaultTrigger$Tracking;

.field private mTrackingIndicator:Landroid/view/View;

.field private mTrackingIndicatorBottom:I

.field private mTrackingIndicatorLabel:Landroid/widget/TextView;

.field private mTrackingIndicatorLabelBottom:I

.field private mTrackingIndicatorLabelTop:I

.field private mUpAction:Lmiuix/springback/trigger/DefaultTrigger$Action;

.field private mUpActionBegin:Z

.field private mUpActionDataListener:Lmiuix/springback/trigger/DefaultTrigger$IndeterminateUpAction$OnUpActionDataListener;

.field private mUpContainer:Landroid/widget/RelativeLayout;

.field private mUpLoadingIndicator:Landroid/widget/ProgressBar;

.field private mUpTrackingContainer:Landroid/widget/RelativeLayout;

.field private mUpTrackingIndicator:Landroid/view/View;

.field private mUpTrackingIndicatorLabel:Landroid/widget/TextView;

.field private mVelocityMonitor:Lmiuix/animation/utils/VelocityMonitor;

.field private mVelocityY:F

.field private final mWaitForIndeterminate:Lmiuix/springback/trigger/DefaultTrigger$WaitForIndeterminate;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lmiuix/springback/trigger/DefaultTrigger;->mVelocityY:F

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmiuix/springback/trigger/DefaultTrigger;->mActions:Ljava/util/List;

    const/4 v0, -0x1

    iput v0, p0, Lmiuix/springback/trigger/DefaultTrigger;->mActionIndex:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lmiuix/springback/trigger/DefaultTrigger;->mUpActionBegin:Z

    iput v0, p0, Lmiuix/springback/trigger/DefaultTrigger;->mTrackingIndicatorBottom:I

    iput v0, p0, Lmiuix/springback/trigger/DefaultTrigger;->mTrackingIndicatorLabelTop:I

    iput v0, p0, Lmiuix/springback/trigger/DefaultTrigger;->mTrackingIndicatorLabelBottom:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lmiuix/springback/trigger/DefaultTrigger;->mScrollerFinished:Z

    new-instance v0, Lmiuix/springback/trigger/DefaultTrigger$1;

    invoke-direct {v0, p0}, Lmiuix/springback/trigger/DefaultTrigger$1;-><init>(Lmiuix/springback/trigger/DefaultTrigger;)V

    iput-object v0, p0, Lmiuix/springback/trigger/DefaultTrigger;->mOnScrollListener:Lmiuix/springback/view/SpringBackLayout$OnScrollListener;

    new-instance v0, Lmiuix/springback/trigger/DefaultTrigger$2;

    invoke-direct {v0, p0}, Lmiuix/springback/trigger/DefaultTrigger$2;-><init>(Lmiuix/springback/trigger/DefaultTrigger;)V

    iput-object v0, p0, Lmiuix/springback/trigger/DefaultTrigger;->mOnSpringListener:Lmiuix/springback/view/SpringBackLayout$OnSpringListener;

    new-instance v0, Lmiuix/springback/trigger/DefaultTrigger$3;

    invoke-direct {v0, p0}, Lmiuix/springback/trigger/DefaultTrigger$3;-><init>(Lmiuix/springback/trigger/DefaultTrigger;)V

    iput-object v0, p0, Lmiuix/springback/trigger/DefaultTrigger;->mLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

    new-instance v0, Lmiuix/springback/trigger/DefaultTrigger$4;

    invoke-direct {v0, p0}, Lmiuix/springback/trigger/DefaultTrigger$4;-><init>(Lmiuix/springback/trigger/DefaultTrigger;)V

    iput-object v0, p0, Lmiuix/springback/trigger/DefaultTrigger;->mUpActionDataListener:Lmiuix/springback/trigger/DefaultTrigger$IndeterminateUpAction$OnUpActionDataListener;

    new-instance v0, Lmiuix/springback/trigger/DefaultTrigger$5;

    invoke-direct {v0, p0}, Lmiuix/springback/trigger/DefaultTrigger$5;-><init>(Lmiuix/springback/trigger/DefaultTrigger;)V

    iput-object v0, p0, Lmiuix/springback/trigger/DefaultTrigger;->mCompleteListener:Lmiuix/springback/trigger/DefaultTrigger$IndeterminateAction$OnActionCompleteListener;

    new-instance v0, Lmiuix/springback/trigger/DefaultTrigger$Idle;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lmiuix/springback/trigger/DefaultTrigger$Idle;-><init>(Lmiuix/springback/trigger/DefaultTrigger;Lmiuix/springback/trigger/DefaultTrigger$1;)V

    iput-object v0, p0, Lmiuix/springback/trigger/DefaultTrigger;->mIdle:Lmiuix/springback/trigger/DefaultTrigger$Idle;

    new-instance v0, Lmiuix/springback/trigger/DefaultTrigger$Tracking;

    invoke-direct {v0, p0, v1}, Lmiuix/springback/trigger/DefaultTrigger$Tracking;-><init>(Lmiuix/springback/trigger/DefaultTrigger;Lmiuix/springback/trigger/DefaultTrigger$1;)V

    iput-object v0, p0, Lmiuix/springback/trigger/DefaultTrigger;->mTracking:Lmiuix/springback/trigger/DefaultTrigger$Tracking;

    new-instance v0, Lmiuix/springback/trigger/DefaultTrigger$ActionStart;

    invoke-direct {v0, p0, v1}, Lmiuix/springback/trigger/DefaultTrigger$ActionStart;-><init>(Lmiuix/springback/trigger/DefaultTrigger;Lmiuix/springback/trigger/DefaultTrigger$1;)V

    iput-object v0, p0, Lmiuix/springback/trigger/DefaultTrigger;->mActionStart:Lmiuix/springback/trigger/DefaultTrigger$ActionStart;

    new-instance v0, Lmiuix/springback/trigger/DefaultTrigger$ActionComplete;

    invoke-direct {v0, p0, v1}, Lmiuix/springback/trigger/DefaultTrigger$ActionComplete;-><init>(Lmiuix/springback/trigger/DefaultTrigger;Lmiuix/springback/trigger/DefaultTrigger$1;)V

    iput-object v0, p0, Lmiuix/springback/trigger/DefaultTrigger;->mActionComplete:Lmiuix/springback/trigger/DefaultTrigger$ActionComplete;

    new-instance v0, Lmiuix/springback/trigger/DefaultTrigger$WaitForIndeterminate;

    invoke-direct {v0, p0, v1}, Lmiuix/springback/trigger/DefaultTrigger$WaitForIndeterminate;-><init>(Lmiuix/springback/trigger/DefaultTrigger;Lmiuix/springback/trigger/DefaultTrigger$1;)V

    iput-object v0, p0, Lmiuix/springback/trigger/DefaultTrigger;->mWaitForIndeterminate:Lmiuix/springback/trigger/DefaultTrigger$WaitForIndeterminate;

    new-instance v0, Lmiuix/springback/trigger/DefaultTrigger$ActionTriggered;

    invoke-direct {v0, p0, v1}, Lmiuix/springback/trigger/DefaultTrigger$ActionTriggered;-><init>(Lmiuix/springback/trigger/DefaultTrigger;Lmiuix/springback/trigger/DefaultTrigger$1;)V

    iput-object v0, p0, Lmiuix/springback/trigger/DefaultTrigger;->mActionTriggered:Lmiuix/springback/trigger/DefaultTrigger$ActionTriggered;

    iget-object v0, p0, Lmiuix/springback/trigger/DefaultTrigger;->mIdle:Lmiuix/springback/trigger/DefaultTrigger$Idle;

    iput-object v0, p0, Lmiuix/springback/trigger/DefaultTrigger;->mCurrentState:Lmiuix/springback/trigger/DefaultTrigger$TriggerState;

    invoke-direct {p0, p1}, Lmiuix/springback/trigger/DefaultTrigger;->init(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$1000(Lmiuix/springback/trigger/DefaultTrigger;)Landroid/widget/RelativeLayout;
    .locals 0

    iget-object p0, p0, Lmiuix/springback/trigger/DefaultTrigger;->mContainer:Landroid/widget/RelativeLayout;

    return-object p0
.end method

.method static synthetic access$1100(Lmiuix/springback/trigger/DefaultTrigger;)Lmiuix/springback/trigger/DefaultTrigger$Action;
    .locals 0

    iget-object p0, p0, Lmiuix/springback/trigger/DefaultTrigger;->mUpAction:Lmiuix/springback/trigger/DefaultTrigger$Action;

    return-object p0
.end method

.method static synthetic access$1200(Lmiuix/springback/trigger/DefaultTrigger;)Landroid/widget/RelativeLayout;
    .locals 0

    iget-object p0, p0, Lmiuix/springback/trigger/DefaultTrigger;->mUpTrackingContainer:Landroid/widget/RelativeLayout;

    return-object p0
.end method

.method static synthetic access$1300(Lmiuix/springback/trigger/DefaultTrigger;)Lmiuix/springback/trigger/DefaultTrigger$WaitForIndeterminate;
    .locals 0

    iget-object p0, p0, Lmiuix/springback/trigger/DefaultTrigger;->mWaitForIndeterminate:Lmiuix/springback/trigger/DefaultTrigger$WaitForIndeterminate;

    return-object p0
.end method

.method static synthetic access$1400(Lmiuix/springback/trigger/DefaultTrigger;)I
    .locals 0

    iget p0, p0, Lmiuix/springback/trigger/DefaultTrigger;->mLastScrollDistance:I

    return p0
.end method

.method static synthetic access$1402(Lmiuix/springback/trigger/DefaultTrigger;I)I
    .locals 0

    iput p1, p0, Lmiuix/springback/trigger/DefaultTrigger;->mLastScrollDistance:I

    return p1
.end method

.method static synthetic access$1500(Lmiuix/springback/trigger/DefaultTrigger;)I
    .locals 0

    iget p0, p0, Lmiuix/springback/trigger/DefaultTrigger;->mScrollDistance:I

    return p0
.end method

.method static synthetic access$1502(Lmiuix/springback/trigger/DefaultTrigger;I)I
    .locals 0

    iput p1, p0, Lmiuix/springback/trigger/DefaultTrigger;->mScrollDistance:I

    return p1
.end method

.method static synthetic access$1600(Lmiuix/springback/trigger/DefaultTrigger;)Lmiuix/animation/utils/VelocityMonitor;
    .locals 0

    iget-object p0, p0, Lmiuix/springback/trigger/DefaultTrigger;->mVelocityMonitor:Lmiuix/animation/utils/VelocityMonitor;

    return-object p0
.end method

.method static synthetic access$1700(Lmiuix/springback/trigger/DefaultTrigger;)F
    .locals 0

    iget p0, p0, Lmiuix/springback/trigger/DefaultTrigger;->mVelocityY:F

    return p0
.end method

.method static synthetic access$1702(Lmiuix/springback/trigger/DefaultTrigger;F)F
    .locals 0

    iput p1, p0, Lmiuix/springback/trigger/DefaultTrigger;->mVelocityY:F

    return p1
.end method

.method static synthetic access$1800(Lmiuix/springback/trigger/DefaultTrigger;)Lmiuix/springback/view/SpringBackLayout;
    .locals 0

    iget-object p0, p0, Lmiuix/springback/trigger/DefaultTrigger;->mLayout:Lmiuix/springback/view/SpringBackLayout;

    return-object p0
.end method

.method static synthetic access$1900(Lmiuix/springback/trigger/DefaultTrigger;)Landroid/widget/RelativeLayout;
    .locals 0

    iget-object p0, p0, Lmiuix/springback/trigger/DefaultTrigger;->mUpContainer:Landroid/widget/RelativeLayout;

    return-object p0
.end method

.method static synthetic access$2000(Lmiuix/springback/trigger/DefaultTrigger;)Lmiuix/springback/trigger/DefaultTrigger$Action;
    .locals 0

    iget-object p0, p0, Lmiuix/springback/trigger/DefaultTrigger;->mCurrentAction:Lmiuix/springback/trigger/DefaultTrigger$Action;

    return-object p0
.end method

.method static synthetic access$2002(Lmiuix/springback/trigger/DefaultTrigger;Lmiuix/springback/trigger/DefaultTrigger$Action;)Lmiuix/springback/trigger/DefaultTrigger$Action;
    .locals 0

    iput-object p1, p0, Lmiuix/springback/trigger/DefaultTrigger;->mCurrentAction:Lmiuix/springback/trigger/DefaultTrigger$Action;

    return-object p1
.end method

.method static synthetic access$2100(Lmiuix/springback/trigger/DefaultTrigger;)Lmiuix/springback/trigger/DefaultTrigger$ActionComplete;
    .locals 0

    iget-object p0, p0, Lmiuix/springback/trigger/DefaultTrigger;->mActionComplete:Lmiuix/springback/trigger/DefaultTrigger$ActionComplete;

    return-object p0
.end method

.method static synthetic access$2200(Lmiuix/springback/trigger/DefaultTrigger;)Lmiuix/springback/trigger/DefaultTrigger$Tracking;
    .locals 0

    iget-object p0, p0, Lmiuix/springback/trigger/DefaultTrigger;->mTracking:Lmiuix/springback/trigger/DefaultTrigger$Tracking;

    return-object p0
.end method

.method static synthetic access$2300(Lmiuix/springback/trigger/DefaultTrigger;Lmiuix/springback/trigger/DefaultTrigger$TriggerState;)V
    .locals 0

    invoke-direct {p0, p1}, Lmiuix/springback/trigger/DefaultTrigger;->transition(Lmiuix/springback/trigger/DefaultTrigger$TriggerState;)V

    return-void
.end method

.method static synthetic access$2400(Lmiuix/springback/trigger/DefaultTrigger;)Landroid/view/ViewGroup;
    .locals 0

    iget-object p0, p0, Lmiuix/springback/trigger/DefaultTrigger;->mIndicatorContainer:Landroid/view/ViewGroup;

    return-object p0
.end method

.method static synthetic access$2500(Lmiuix/springback/trigger/DefaultTrigger;)Landroid/widget/ProgressBar;
    .locals 0

    iget-object p0, p0, Lmiuix/springback/trigger/DefaultTrigger;->mLoadingIndicator:Landroid/widget/ProgressBar;

    return-object p0
.end method

.method static synthetic access$2600(Lmiuix/springback/trigger/DefaultTrigger;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lmiuix/springback/trigger/DefaultTrigger;->mTrackingIndicator:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$2700(Lmiuix/springback/trigger/DefaultTrigger;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lmiuix/springback/trigger/DefaultTrigger;->mTrackingIndicatorLabel:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$2800(Lmiuix/springback/trigger/DefaultTrigger;)I
    .locals 0

    iget p0, p0, Lmiuix/springback/trigger/DefaultTrigger;->mTrackingIndicatorBottom:I

    return p0
.end method

.method static synthetic access$2802(Lmiuix/springback/trigger/DefaultTrigger;I)I
    .locals 0

    iput p1, p0, Lmiuix/springback/trigger/DefaultTrigger;->mTrackingIndicatorBottom:I

    return p1
.end method

.method static synthetic access$2900(Lmiuix/springback/trigger/DefaultTrigger;)I
    .locals 0

    iget p0, p0, Lmiuix/springback/trigger/DefaultTrigger;->mTrackingIndicatorLabelTop:I

    return p0
.end method

.method static synthetic access$2902(Lmiuix/springback/trigger/DefaultTrigger;I)I
    .locals 0

    iput p1, p0, Lmiuix/springback/trigger/DefaultTrigger;->mTrackingIndicatorLabelTop:I

    return p1
.end method

.method static synthetic access$3000(Lmiuix/springback/trigger/DefaultTrigger;)I
    .locals 0

    iget p0, p0, Lmiuix/springback/trigger/DefaultTrigger;->mTrackingIndicatorLabelBottom:I

    return p0
.end method

.method static synthetic access$3002(Lmiuix/springback/trigger/DefaultTrigger;I)I
    .locals 0

    iput p1, p0, Lmiuix/springback/trigger/DefaultTrigger;->mTrackingIndicatorLabelBottom:I

    return p1
.end method

.method static synthetic access$3100(Lmiuix/springback/trigger/DefaultTrigger;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lmiuix/springback/trigger/DefaultTrigger;->mSimpleActionView:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$3102(Lmiuix/springback/trigger/DefaultTrigger;Landroid/view/View;)Landroid/view/View;
    .locals 0

    iput-object p1, p0, Lmiuix/springback/trigger/DefaultTrigger;->mSimpleActionView:Landroid/view/View;

    return-object p1
.end method

.method static synthetic access$3200(Lmiuix/springback/trigger/DefaultTrigger;Landroid/view/ViewGroup;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lmiuix/springback/trigger/DefaultTrigger;->viewShow(Landroid/view/ViewGroup;Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$3300(Lmiuix/springback/trigger/DefaultTrigger;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lmiuix/springback/trigger/DefaultTrigger;->mActions:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$3400()I
    .locals 1

    sget v0, Lmiuix/springback/trigger/DefaultTrigger;->mIndeterminateTop:I

    return v0
.end method

.method static synthetic access$3500(Lmiuix/springback/trigger/DefaultTrigger;)Lmiuix/springback/trigger/DefaultTrigger$ActionStart;
    .locals 0

    iget-object p0, p0, Lmiuix/springback/trigger/DefaultTrigger;->mActionStart:Lmiuix/springback/trigger/DefaultTrigger$ActionStart;

    return-object p0
.end method

.method static synthetic access$3600(Lmiuix/springback/trigger/DefaultTrigger;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lmiuix/springback/trigger/DefaultTrigger;->mUpTrackingIndicatorLabel:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$3700(Lmiuix/springback/trigger/DefaultTrigger;)Landroid/widget/ProgressBar;
    .locals 0

    iget-object p0, p0, Lmiuix/springback/trigger/DefaultTrigger;->mUpLoadingIndicator:Landroid/widget/ProgressBar;

    return-object p0
.end method

.method static synthetic access$3800(Lmiuix/springback/trigger/DefaultTrigger;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lmiuix/springback/trigger/DefaultTrigger;->mUpTrackingIndicator:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$3900()I
    .locals 1

    sget v0, Lmiuix/springback/trigger/DefaultTrigger;->mIndeterminateDistance:I

    return v0
.end method

.method static synthetic access$4000()I
    .locals 1

    sget v0, Lmiuix/springback/trigger/DefaultTrigger;->mUpIndeterminateDistance:I

    return v0
.end method

.method static synthetic access$4100()I
    .locals 1

    sget v0, Lmiuix/springback/trigger/DefaultTrigger;->mSimpleEnter:I

    return v0
.end method

.method static synthetic access$4200()I
    .locals 1

    sget v0, Lmiuix/springback/trigger/DefaultTrigger;->mSimpleTrigger:I

    return v0
.end method

.method static synthetic access$4400(Lmiuix/springback/trigger/DefaultTrigger;)Lmiuix/springback/trigger/DefaultTrigger$ActionTriggered;
    .locals 0

    iget-object p0, p0, Lmiuix/springback/trigger/DefaultTrigger;->mActionTriggered:Lmiuix/springback/trigger/DefaultTrigger$ActionTriggered;

    return-object p0
.end method

.method static synthetic access$4500(Lmiuix/springback/trigger/DefaultTrigger;)Z
    .locals 0

    iget-boolean p0, p0, Lmiuix/springback/trigger/DefaultTrigger;->mUpActionBegin:Z

    return p0
.end method

.method static synthetic access$4502(Lmiuix/springback/trigger/DefaultTrigger;Z)Z
    .locals 0

    iput-boolean p1, p0, Lmiuix/springback/trigger/DefaultTrigger;->mUpActionBegin:Z

    return p1
.end method

.method static synthetic access$4600(Lmiuix/springback/trigger/DefaultTrigger;)I
    .locals 0

    iget p0, p0, Lmiuix/springback/trigger/DefaultTrigger;->mActionIndex:I

    return p0
.end method

.method static synthetic access$4602(Lmiuix/springback/trigger/DefaultTrigger;I)I
    .locals 0

    iput p1, p0, Lmiuix/springback/trigger/DefaultTrigger;->mActionIndex:I

    return p1
.end method

.method static synthetic access$4700(Lmiuix/springback/trigger/DefaultTrigger;)Landroid/view/LayoutInflater;
    .locals 0

    iget-object p0, p0, Lmiuix/springback/trigger/DefaultTrigger;->mLayoutInflater:Landroid/view/LayoutInflater;

    return-object p0
.end method

.method static synthetic access$600(Lmiuix/springback/trigger/DefaultTrigger;)I
    .locals 0

    iget p0, p0, Lmiuix/springback/trigger/DefaultTrigger;->mScrollState:I

    return p0
.end method

.method static synthetic access$602(Lmiuix/springback/trigger/DefaultTrigger;I)I
    .locals 0

    iput p1, p0, Lmiuix/springback/trigger/DefaultTrigger;->mScrollState:I

    return p1
.end method

.method static synthetic access$702(Lmiuix/springback/trigger/DefaultTrigger;Z)Z
    .locals 0

    iput-boolean p1, p0, Lmiuix/springback/trigger/DefaultTrigger;->mScrollerFinished:Z

    return p1
.end method

.method static synthetic access$800(Lmiuix/springback/trigger/DefaultTrigger;)Lmiuix/springback/trigger/DefaultTrigger$TriggerState;
    .locals 0

    iget-object p0, p0, Lmiuix/springback/trigger/DefaultTrigger;->mCurrentState:Lmiuix/springback/trigger/DefaultTrigger$TriggerState;

    return-object p0
.end method

.method static synthetic access$900(Lmiuix/springback/trigger/DefaultTrigger;)Lmiuix/springback/trigger/DefaultTrigger$Idle;
    .locals 0

    iget-object p0, p0, Lmiuix/springback/trigger/DefaultTrigger;->mIdle:Lmiuix/springback/trigger/DefaultTrigger$Idle;

    return-object p0
.end method

.method private init(Landroid/content/Context;)V
    .locals 3

    iput-object p1, p0, Lmiuix/springback/trigger/DefaultTrigger;->mContext:Landroid/content/Context;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lmiuix/springback/trigger/DefaultTrigger;->mLayoutInflater:Landroid/view/LayoutInflater;

    new-instance v0, Lmiuix/animation/utils/VelocityMonitor;

    invoke-direct {v0}, Lmiuix/animation/utils/VelocityMonitor;-><init>()V

    iput-object v0, p0, Lmiuix/springback/trigger/DefaultTrigger;->mVelocityMonitor:Lmiuix/animation/utils/VelocityMonitor;

    iget-object v0, p0, Lmiuix/springback/trigger/DefaultTrigger;->mLayoutInflater:Landroid/view/LayoutInflater;

    sget v1, Lmiuix/springback/R$layout;->miuix_sbl_trigger_layout:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lmiuix/springback/trigger/DefaultTrigger;->mContainer:Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lmiuix/springback/trigger/DefaultTrigger;->mLayoutInflater:Landroid/view/LayoutInflater;

    sget v1, Lmiuix/springback/R$layout;->miuix_sbl_trigger_up_layout:I

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lmiuix/springback/trigger/DefaultTrigger;->mUpContainer:Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lmiuix/springback/trigger/DefaultTrigger;->mContainer:Landroid/widget/RelativeLayout;

    sget v1, Lmiuix/springback/R$id;->indicator_container:I

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lmiuix/springback/trigger/DefaultTrigger;->mIndicatorContainer:Landroid/view/ViewGroup;

    iget-object v0, p0, Lmiuix/springback/trigger/DefaultTrigger;->mContainer:Landroid/widget/RelativeLayout;

    sget v1, Lmiuix/springback/R$id;->tracking_progress:I

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lmiuix/springback/trigger/DefaultTrigger;->mTrackingIndicator:Landroid/view/View;

    iget-object v0, p0, Lmiuix/springback/trigger/DefaultTrigger;->mContainer:Landroid/widget/RelativeLayout;

    sget v1, Lmiuix/springback/R$id;->tracking_progress_label:I

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lmiuix/springback/trigger/DefaultTrigger;->mTrackingIndicatorLabel:Landroid/widget/TextView;

    iget-object v0, p0, Lmiuix/springback/trigger/DefaultTrigger;->mContainer:Landroid/widget/RelativeLayout;

    sget v1, Lmiuix/springback/R$id;->loading_progress:I

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lmiuix/springback/trigger/DefaultTrigger;->mLoadingIndicator:Landroid/widget/ProgressBar;

    iget-object v0, p0, Lmiuix/springback/trigger/DefaultTrigger;->mUpContainer:Landroid/widget/RelativeLayout;

    sget v1, Lmiuix/springback/R$id;->tracking_progress_up_container:I

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lmiuix/springback/trigger/DefaultTrigger;->mUpTrackingContainer:Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lmiuix/springback/trigger/DefaultTrigger;->mUpContainer:Landroid/widget/RelativeLayout;

    sget v1, Lmiuix/springback/R$id;->tracking_progress_up:I

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lmiuix/springback/trigger/DefaultTrigger;->mUpTrackingIndicator:Landroid/view/View;

    iget-object v0, p0, Lmiuix/springback/trigger/DefaultTrigger;->mUpContainer:Landroid/widget/RelativeLayout;

    sget v1, Lmiuix/springback/R$id;->tracking_progress_up_label:I

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lmiuix/springback/trigger/DefaultTrigger;->mUpTrackingIndicatorLabel:Landroid/widget/TextView;

    iget-object v0, p0, Lmiuix/springback/trigger/DefaultTrigger;->mUpContainer:Landroid/widget/RelativeLayout;

    sget v1, Lmiuix/springback/R$id;->loading_progress_up:I

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lmiuix/springback/trigger/DefaultTrigger;->mUpLoadingIndicator:Landroid/widget/ProgressBar;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v0, Lmiuix/springback/R$dimen;->miuix_sbl_action_indeterminate_distance:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    sput p0, Lmiuix/springback/trigger/DefaultTrigger;->mIndeterminateDistance:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v0, Lmiuix/springback/R$dimen;->miuix_sbl_action_upindeterminate_distance:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    sput p0, Lmiuix/springback/trigger/DefaultTrigger;->mUpIndeterminateDistance:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v0, Lmiuix/springback/R$dimen;->miuix_sbl_action_simple_enter:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    sput p0, Lmiuix/springback/trigger/DefaultTrigger;->mSimpleEnter:I

    sput p0, Lmiuix/springback/trigger/DefaultTrigger;->mSimpleTrigger:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget p1, Lmiuix/springback/R$dimen;->miuix_sbl_tracking_progress_bg_margintop:I

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    sput p0, Lmiuix/springback/trigger/DefaultTrigger;->mIndeterminateTop:I

    return-void
.end method

.method private transition(Lmiuix/springback/trigger/DefaultTrigger$TriggerState;)V
    .locals 1

    iput-object p1, p0, Lmiuix/springback/trigger/DefaultTrigger;->mCurrentState:Lmiuix/springback/trigger/DefaultTrigger$TriggerState;

    iget-object v0, p0, Lmiuix/springback/trigger/DefaultTrigger;->mIdle:Lmiuix/springback/trigger/DefaultTrigger$Idle;

    if-ne p1, v0, :cond_1

    iget-boolean p1, p0, Lmiuix/springback/trigger/DefaultTrigger;->mScrollerFinished:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lmiuix/springback/trigger/DefaultTrigger;->mCurrentAction:Lmiuix/springback/trigger/DefaultTrigger$Action;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lmiuix/springback/trigger/DefaultTrigger$Action;->onFinished()V

    :cond_0
    const/4 p1, 0x0

    iput-object p1, p0, Lmiuix/springback/trigger/DefaultTrigger;->mCurrentAction:Lmiuix/springback/trigger/DefaultTrigger$Action;

    const/4 p1, -0x1

    iput p1, p0, Lmiuix/springback/trigger/DefaultTrigger;->mActionIndex:I

    iget-object p1, p0, Lmiuix/springback/trigger/DefaultTrigger;->mVelocityMonitor:Lmiuix/animation/utils/VelocityMonitor;

    invoke-virtual {p1}, Lmiuix/animation/utils/VelocityMonitor;->clear()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lmiuix/springback/trigger/DefaultTrigger;->mUpActionBegin:Z

    :cond_1
    return-void
.end method

.method private updateTextIdToString(Landroid/content/Context;[I[Ljava/lang/String;)V
    .locals 2

    if-eqz p2, :cond_0

    const/4 p0, 0x0

    :goto_0
    array-length v0, p2

    if-ge p0, v0, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    aget v1, p2, p0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, p3, p0

    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private viewShow(Landroid/view/ViewGroup;Landroid/view/View;)V
    .locals 8

    if-eqz p2, :cond_1

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p0

    if-nez p0, :cond_0

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_0
    const/4 p0, 0x0

    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->setVisibility(I)V

    new-instance p2, Lmiuix/animation/controller/AnimState;

    const-string v0, "start"

    invoke-direct {p2, v0}, Lmiuix/animation/controller/AnimState;-><init>(Ljava/lang/Object;)V

    sget-object v0, Lmiuix/animation/property/ViewProperty;->ALPHA:Lmiuix/animation/property/ViewProperty;

    new-array v1, p0, [J

    const/4 v2, 0x0

    invoke-virtual {p2, v0, v2, v1}, Lmiuix/animation/controller/AnimState;->add(Lmiuix/animation/property/ViewProperty;F[J)Lmiuix/animation/controller/AnimState;

    move-result-object p2

    sget-object v0, Lmiuix/animation/property/ViewProperty;->TRANSLATION_Y:Lmiuix/animation/property/ViewProperty;

    const/16 v1, -0xb4

    new-array v3, p0, [J

    invoke-virtual {p2, v0, v1, v3}, Lmiuix/animation/controller/AnimState;->add(Lmiuix/animation/property/ViewProperty;I[J)Lmiuix/animation/controller/AnimState;

    move-result-object p2

    new-instance v0, Lmiuix/animation/controller/AnimState;

    const-string v1, "show"

    invoke-direct {v0, v1}, Lmiuix/animation/controller/AnimState;-><init>(Ljava/lang/Object;)V

    sget-object v1, Lmiuix/animation/property/ViewProperty;->ALPHA:Lmiuix/animation/property/ViewProperty;

    new-array v3, p0, [J

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1, v4, v3}, Lmiuix/animation/controller/AnimState;->add(Lmiuix/animation/property/ViewProperty;F[J)Lmiuix/animation/controller/AnimState;

    move-result-object v0

    sget-object v1, Lmiuix/animation/property/ViewProperty;->TRANSLATION_Y:Lmiuix/animation/property/ViewProperty;

    const/high16 v3, 0x41c80000    # 25.0f

    new-array v5, p0, [J

    invoke-virtual {v0, v1, v3, v5}, Lmiuix/animation/controller/AnimState;->add(Lmiuix/animation/property/ViewProperty;F[J)Lmiuix/animation/controller/AnimState;

    move-result-object v0

    new-instance v1, Lmiuix/animation/controller/AnimState;

    const-string v3, "hide"

    invoke-direct {v1, v3}, Lmiuix/animation/controller/AnimState;-><init>(Ljava/lang/Object;)V

    sget-object v3, Lmiuix/animation/property/ViewProperty;->ALPHA:Lmiuix/animation/property/ViewProperty;

    new-array v5, p0, [J

    invoke-virtual {v1, v3, v4, v5}, Lmiuix/animation/controller/AnimState;->add(Lmiuix/animation/property/ViewProperty;F[J)Lmiuix/animation/controller/AnimState;

    move-result-object v1

    sget-object v3, Lmiuix/animation/property/ViewProperty;->TRANSLATION_Y:Lmiuix/animation/property/ViewProperty;

    new-array v4, p0, [J

    invoke-virtual {v1, v3, v2, v4}, Lmiuix/animation/controller/AnimState;->add(Lmiuix/animation/property/ViewProperty;F[J)Lmiuix/animation/controller/AnimState;

    move-result-object v1

    const/4 v2, 0x1

    new-array v3, v2, [Landroid/view/View;

    aput-object p1, v3, p0

    invoke-static {v3}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    move-result-object p1

    invoke-interface {p1}, Lmiuix/animation/IFolme;->state()Lmiuix/animation/IStateStyle;

    move-result-object p1

    new-array v3, v2, [Lmiuix/animation/base/AnimConfig;

    new-instance v4, Lmiuix/animation/base/AnimConfig;

    invoke-direct {v4}, Lmiuix/animation/base/AnimConfig;-><init>()V

    const/4 v5, 0x3

    new-array v6, v5, [F

    fill-array-data v6, :array_0

    const/4 v7, 0x4

    invoke-static {v7, v6}, Lmiuix/animation/utils/EaseManager;->getStyle(I[F)Lmiuix/animation/utils/EaseManager$EaseStyle;

    move-result-object v6

    invoke-virtual {v4, v6}, Lmiuix/animation/base/AnimConfig;->setEase(Lmiuix/animation/utils/EaseManager$EaseStyle;)Lmiuix/animation/base/AnimConfig;

    move-result-object v4

    aput-object v4, v3, p0

    invoke-interface {p1, p2, v0, v3}, Lmiuix/animation/IStateStyle;->fromTo(Ljava/lang/Object;Ljava/lang/Object;[Lmiuix/animation/base/AnimConfig;)Lmiuix/animation/IStateStyle;

    move-result-object p1

    new-array p2, v2, [Lmiuix/animation/base/AnimConfig;

    new-instance v0, Lmiuix/animation/base/AnimConfig;

    invoke-direct {v0}, Lmiuix/animation/base/AnimConfig;-><init>()V

    new-array v2, v5, [F

    fill-array-data v2, :array_1

    invoke-static {v7, v2}, Lmiuix/animation/utils/EaseManager;->getStyle(I[F)Lmiuix/animation/utils/EaseManager$EaseStyle;

    move-result-object v2

    invoke-virtual {v0, v2}, Lmiuix/animation/base/AnimConfig;->setEase(Lmiuix/animation/utils/EaseManager$EaseStyle;)Lmiuix/animation/base/AnimConfig;

    move-result-object v0

    aput-object v0, p2, p0

    invoke-interface {p1, v1, p2}, Lmiuix/animation/IStateStyle;->then(Ljava/lang/Object;[Lmiuix/animation/base/AnimConfig;)Lmiuix/animation/IStateStyle;

    :cond_1
    return-void

    :array_0
    .array-data 4
        0x42f00000    # 120.0f
        0x3f7d70a4    # 0.99f
        0x3dcccccd    # 0.1f
    .end array-data

    :array_1
    .array-data 4
        0x42200000    # 40.0f
        0x3f7d70a4    # 0.99f
        0x3dcccccd    # 0.1f
    .end array-data
.end method


# virtual methods
.method public addAction(Lmiuix/springback/trigger/DefaultTrigger$Action;)V
    .locals 3

    instance-of v0, p1, Lmiuix/springback/trigger/DefaultTrigger$IndeterminateUpAction;

    if-eqz v0, :cond_0

    iput-object p1, p0, Lmiuix/springback/trigger/DefaultTrigger;->mUpAction:Lmiuix/springback/trigger/DefaultTrigger$Action;

    check-cast p1, Lmiuix/springback/trigger/DefaultTrigger$IndeterminateUpAction;

    iget-object v0, p0, Lmiuix/springback/trigger/DefaultTrigger;->mUpActionDataListener:Lmiuix/springback/trigger/DefaultTrigger$IndeterminateUpAction$OnUpActionDataListener;

    invoke-static {p1, v0}, Lmiuix/springback/trigger/DefaultTrigger$IndeterminateUpAction;->access$002(Lmiuix/springback/trigger/DefaultTrigger$IndeterminateUpAction;Lmiuix/springback/trigger/DefaultTrigger$IndeterminateUpAction$OnUpActionDataListener;)Lmiuix/springback/trigger/DefaultTrigger$IndeterminateUpAction$OnUpActionDataListener;

    iget-object v0, p0, Lmiuix/springback/trigger/DefaultTrigger;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lmiuix/springback/trigger/DefaultTrigger$IndeterminateUpAction;->access$100(Lmiuix/springback/trigger/DefaultTrigger$IndeterminateUpAction;)[I

    move-result-object v1

    invoke-static {p1}, Lmiuix/springback/trigger/DefaultTrigger$IndeterminateUpAction;->access$200(Lmiuix/springback/trigger/DefaultTrigger$IndeterminateUpAction;)[Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lmiuix/springback/trigger/DefaultTrigger;->updateTextIdToString(Landroid/content/Context;[I[Ljava/lang/String;)V

    iget-object p0, p0, Lmiuix/springback/trigger/DefaultTrigger;->mUpTrackingIndicatorLabel:Landroid/widget/TextView;

    invoke-static {p1}, Lmiuix/springback/trigger/DefaultTrigger$IndeterminateUpAction;->access$200(Lmiuix/springback/trigger/DefaultTrigger$IndeterminateUpAction;)[Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    aget-object p1, p1, v0

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    :cond_0
    iget-object v0, p0, Lmiuix/springback/trigger/DefaultTrigger;->mActions:Ljava/util/List;

    sget-object v1, Lmiuix/springback/trigger/DefaultTrigger$Action;->DISTANCE_COMPARATOR:Ljava/util/Comparator;

    invoke-static {v0, p1, v1}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;Ljava/util/Comparator;)I

    move-result v0

    if-gez v0, :cond_2

    iget-object v1, p0, Lmiuix/springback/trigger/DefaultTrigger;->mActions:Ljava/util/List;

    neg-int v0, v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {v1, v0, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    instance-of v0, p1, Lmiuix/springback/trigger/DefaultTrigger$IndeterminateAction;

    if-eqz v0, :cond_1

    check-cast p1, Lmiuix/springback/trigger/DefaultTrigger$IndeterminateAction;

    iget-object v0, p0, Lmiuix/springback/trigger/DefaultTrigger;->mCompleteListener:Lmiuix/springback/trigger/DefaultTrigger$IndeterminateAction$OnActionCompleteListener;

    invoke-static {p1, v0}, Lmiuix/springback/trigger/DefaultTrigger$IndeterminateAction;->access$302(Lmiuix/springback/trigger/DefaultTrigger$IndeterminateAction;Lmiuix/springback/trigger/DefaultTrigger$IndeterminateAction$OnActionCompleteListener;)Lmiuix/springback/trigger/DefaultTrigger$IndeterminateAction$OnActionCompleteListener;

    iget-object v0, p0, Lmiuix/springback/trigger/DefaultTrigger;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lmiuix/springback/trigger/DefaultTrigger$IndeterminateAction;->access$400(Lmiuix/springback/trigger/DefaultTrigger$IndeterminateAction;)[I

    move-result-object v1

    invoke-static {p1}, Lmiuix/springback/trigger/DefaultTrigger$IndeterminateAction;->access$500(Lmiuix/springback/trigger/DefaultTrigger$IndeterminateAction;)[Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v0, v1, p1}, Lmiuix/springback/trigger/DefaultTrigger;->updateTextIdToString(Landroid/content/Context;[I[Ljava/lang/String;)V

    :cond_1
    return-void

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "action conflict."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public attach(Lmiuix/springback/view/SpringBackLayout;)V
    .locals 1

    invoke-virtual {p1}, Lmiuix/springback/view/SpringBackLayout;->springBackEnable()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lmiuix/springback/view/SpringBackLayout;->setSpringBackEnable(Z)V

    :cond_0
    iput-object p1, p0, Lmiuix/springback/trigger/DefaultTrigger;->mLayout:Lmiuix/springback/view/SpringBackLayout;

    iget-object v0, p0, Lmiuix/springback/trigger/DefaultTrigger;->mContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lmiuix/springback/trigger/DefaultTrigger;->mUpContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lmiuix/springback/trigger/DefaultTrigger;->mLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    iget-object v0, p0, Lmiuix/springback/trigger/DefaultTrigger;->mOnSpringListener:Lmiuix/springback/view/SpringBackLayout$OnSpringListener;

    invoke-virtual {p1, v0}, Lmiuix/springback/view/SpringBackLayout;->setOnSpringListener(Lmiuix/springback/view/SpringBackLayout$OnSpringListener;)V

    iget-object p0, p0, Lmiuix/springback/trigger/DefaultTrigger;->mOnScrollListener:Lmiuix/springback/view/SpringBackLayout$OnScrollListener;

    invoke-virtual {p1, p0}, Lmiuix/springback/view/SpringBackLayout;->addOnScrollListener(Lmiuix/springback/view/SpringBackLayout$OnScrollListener;)V

    return-void
.end method

.method public containAction(Lmiuix/springback/trigger/DefaultTrigger$Action;)Z
    .locals 3

    instance-of v0, p1, Lmiuix/springback/trigger/DefaultTrigger$IndeterminateUpAction;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lmiuix/springback/trigger/DefaultTrigger;->mUpAction:Lmiuix/springback/trigger/DefaultTrigger$Action;

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    return v1

    :cond_1
    if-eqz p1, :cond_2

    iget-object p0, p0, Lmiuix/springback/trigger/DefaultTrigger;->mActions:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    return v1

    :cond_2
    return v2
.end method

.method public isActionRunning()Z
    .locals 1

    iget-object v0, p0, Lmiuix/springback/trigger/DefaultTrigger;->mCurrentState:Lmiuix/springback/trigger/DefaultTrigger$TriggerState;

    if-eqz v0, :cond_1

    iget-object p0, p0, Lmiuix/springback/trigger/DefaultTrigger;->mIdle:Lmiuix/springback/trigger/DefaultTrigger$Idle;

    if-ne v0, p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public isActionRunning(Lmiuix/springback/trigger/DefaultTrigger$Action;)Z
    .locals 2

    iget-object v0, p0, Lmiuix/springback/trigger/DefaultTrigger;->mCurrentState:Lmiuix/springback/trigger/DefaultTrigger$TriggerState;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lmiuix/springback/trigger/DefaultTrigger;->mIdle:Lmiuix/springback/trigger/DefaultTrigger$Idle;

    if-eq v0, v1, :cond_0

    iget-object p0, p0, Lmiuix/springback/trigger/DefaultTrigger;->mCurrentAction:Lmiuix/springback/trigger/DefaultTrigger$Action;

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public removeAction(Lmiuix/springback/trigger/DefaultTrigger$Action;)Z
    .locals 3

    invoke-virtual {p0}, Lmiuix/springback/trigger/DefaultTrigger;->isActionRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    instance-of v0, p1, Lmiuix/springback/trigger/DefaultTrigger$IndeterminateUpAction;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    check-cast p1, Lmiuix/springback/trigger/DefaultTrigger$IndeterminateUpAction;

    invoke-static {p1, v2}, Lmiuix/springback/trigger/DefaultTrigger$IndeterminateUpAction;->access$002(Lmiuix/springback/trigger/DefaultTrigger$IndeterminateUpAction;Lmiuix/springback/trigger/DefaultTrigger$IndeterminateUpAction$OnUpActionDataListener;)Lmiuix/springback/trigger/DefaultTrigger$IndeterminateUpAction$OnUpActionDataListener;

    iput-object v2, p0, Lmiuix/springback/trigger/DefaultTrigger;->mUpAction:Lmiuix/springback/trigger/DefaultTrigger$Action;

    return v1

    :cond_1
    if-eqz p1, :cond_3

    iget-object v0, p0, Lmiuix/springback/trigger/DefaultTrigger;->mActions:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    instance-of v0, p1, Lmiuix/springback/trigger/DefaultTrigger$IndeterminateAction;

    if-eqz v0, :cond_2

    move-object v0, p1

    check-cast v0, Lmiuix/springback/trigger/DefaultTrigger$IndeterminateAction;

    invoke-static {v0, v2}, Lmiuix/springback/trigger/DefaultTrigger$IndeterminateAction;->access$302(Lmiuix/springback/trigger/DefaultTrigger$IndeterminateAction;Lmiuix/springback/trigger/DefaultTrigger$IndeterminateAction$OnActionCompleteListener;)Lmiuix/springback/trigger/DefaultTrigger$IndeterminateAction$OnActionCompleteListener;

    :cond_2
    iget-object p0, p0, Lmiuix/springback/trigger/DefaultTrigger;->mActions:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_3
    return v1
.end method
