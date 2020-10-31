.class public Lcom/android/internal/widget/MiuiPcDecorCaptionView;
.super Lcom/android/internal/widget/DecorCaptionView;
.source "MiuiPcDecorCaptionView.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;
.implements Landroid/view/GestureDetector$OnGestureListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "MiuiPcDecorCaptionView"

.field private static volatile sDecorPcFlags:I


# instance fields
.field private final CLIENT_DESCRIPTOR:Ljava/lang/String;

.field private final CODE_CLIENT_CLOSE:I

.field private final CODE_SEND_WIN_STATE:I

.field private final DECOR_CONTROLL_KEY:Ljava/lang/String;

.field private final OPERATE_UPDATE_INFO:I

.field private final OPERATE_WINDOWN_FULL:I

.field private final OPERATE_WINDOWN_MAX:I

.field private final OPERATE_WINDOWN_MIN:I

.field private final OPERATE_WINDOWN_RESTORE:I

.field private final RESIZE_MODE_FULL_BTN_FULL:I

.field private final RESIZE_MODE_FULL_BTN_HIDE_DECOR:I

.field private final RESIZE_MODE_MASK:I

.field private final RESIZE_MODE_MAX_BTN_MAX:I

.field private final RESIZE_MODE_MAX_BTN_RESTORE:I

.field private final RESIZE_MODE_PC_CHANGE_STATUS:I

.field private final RESIZE_MODE_PC_INTENT_INIT:I

.field private final SERVICE_CLASS_NAME:Ljava/lang/String;

.field private final SERVICE_DESCRIPTOR:Ljava/lang/String;

.field private final SERVICE_PACK_NAME:Ljava/lang/String;

.field private mAppBounds:Landroid/graphics/Rect;

.field private mCaption:Landroid/view/View;

.field private mCheckForDragging:Z

.field private mClickTarget:Landroid/view/View;

.field private mClientBinder:Landroid/os/Binder;

.field private mClose:Landroid/view/View;

.field private final mCloseRect:Landroid/graphics/Rect;

.field private mContent:Landroid/view/View;

.field private mContext:Landroid/content/Context;

.field private mDisplayId:I

.field private mDragSlop:I

.field private mDragging:Z

.field private mGestureDetector:Landroid/view/GestureDetector;

.field private mLastStartPcTime:J

.field private mMaximize:Landroid/view/View;

.field private final mMaximizeRect:Landroid/graphics/Rect;

.field private mOverlayWithAppContent:Z

.field private mOwner:Lcom/android/internal/policy/PhoneWindow;

.field private mPcBack:Landroid/view/View;

.field private final mPcBackRect:Landroid/graphics/Rect;

.field private mPcClose:Landroid/view/View;

.field private final mPcCloseRect:Landroid/graphics/Rect;

.field private mPcFull:Landroid/view/View;

.field private final mPcFullRect:Landroid/graphics/Rect;

.field private mPcMax:Landroid/view/View;

.field private final mPcMaxRect:Landroid/graphics/Rect;

.field private mPcMin:Landroid/view/View;

.field private final mPcMinRect:Landroid/graphics/Rect;

.field private mPcServConn:Landroid/content/ServiceConnection;

.field private mPcService:Landroid/os/IBinder;

.field private mPreBottom:I

.field private mPreLeft:I

.field private mPreRight:I

.field private mPreTop:I

.field private mRootScrollY:I

.field private mShow:Z

.field private mStackId:I

.field private mTouchDispatchList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mTouchDownX:I

.field private mTouchDownY:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    sput v0, Lcom/android/internal/widget/MiuiPcDecorCaptionView;->sDecorPcFlags:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 6

    invoke-direct {p0, p1}, Lcom/android/internal/widget/DecorCaptionView;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/widget/MiuiPcDecorCaptionView;->mOwner:Lcom/android/internal/policy/PhoneWindow;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/internal/widget/MiuiPcDecorCaptionView;->mShow:Z

    iput-boolean v1, p0, Lcom/android/internal/widget/MiuiPcDecorCaptionView;->mDragging:Z

    iput-boolean v1, p0, Lcom/android/internal/widget/MiuiPcDecorCaptionView;->mOverlayWithAppContent:Z

    new-instance v2, Ljava/util/ArrayList;

    const/4 v3, 0x2

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v2, p0, Lcom/android/internal/widget/MiuiPcDecorCaptionView;->mTouchDispatchList:Ljava/util/ArrayList;

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lcom/android/internal/widget/MiuiPcDecorCaptionView;->mCloseRect:Landroid/graphics/Rect;

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lcom/android/internal/widget/MiuiPcDecorCaptionView;->mMaximizeRect:Landroid/graphics/Rect;

    iput-object v0, p0, Lcom/android/internal/widget/MiuiPcDecorCaptionView;->mContext:Landroid/content/Context;

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lcom/android/internal/widget/MiuiPcDecorCaptionView;->mPcBackRect:Landroid/graphics/Rect;

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lcom/android/internal/widget/MiuiPcDecorCaptionView;->mPcFullRect:Landroid/graphics/Rect;

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lcom/android/internal/widget/MiuiPcDecorCaptionView;->mPcMinRect:Landroid/graphics/Rect;

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lcom/android/internal/widget/MiuiPcDecorCaptionView;->mPcMaxRect:Landroid/graphics/Rect;

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lcom/android/internal/widget/MiuiPcDecorCaptionView;->mPcCloseRect:Landroid/graphics/Rect;

    iput-object v0, p0, Lcom/android/internal/widget/MiuiPcDecorCaptionView;->mPcService:Landroid/os/IBinder;

    const-string v0, "com.android.pcmode.service.PcWinStateService"

    iput-object v0, p0, Lcom/android/internal/widget/MiuiPcDecorCaptionView;->SERVICE_DESCRIPTOR:Ljava/lang/String;

    const-string v2, "com.android.pcmode"

    iput-object v2, p0, Lcom/android/internal/widget/MiuiPcDecorCaptionView;->SERVICE_PACK_NAME:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/internal/widget/MiuiPcDecorCaptionView;->SERVICE_CLASS_NAME:Ljava/lang/String;

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/internal/widget/MiuiPcDecorCaptionView;->CODE_SEND_WIN_STATE:I

    const/16 v2, 0xc8

    iput v2, p0, Lcom/android/internal/widget/MiuiPcDecorCaptionView;->OPERATE_WINDOWN_FULL:I

    const/16 v2, 0xc9

    iput v2, p0, Lcom/android/internal/widget/MiuiPcDecorCaptionView;->OPERATE_WINDOWN_MAX:I

    const/16 v2, 0xca

    iput v2, p0, Lcom/android/internal/widget/MiuiPcDecorCaptionView;->OPERATE_WINDOWN_MIN:I

    const/16 v2, 0xcb

    iput v2, p0, Lcom/android/internal/widget/MiuiPcDecorCaptionView;->OPERATE_WINDOWN_RESTORE:I

    const/16 v2, 0xcc

    iput v2, p0, Lcom/android/internal/widget/MiuiPcDecorCaptionView;->OPERATE_UPDATE_INFO:I

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/android/internal/widget/MiuiPcDecorCaptionView;->mLastStartPcTime:J

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2, v1, v1, v1, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v2, p0, Lcom/android/internal/widget/MiuiPcDecorCaptionView;->mAppBounds:Landroid/graphics/Rect;

    const/4 v2, -0x1

    iput v2, p0, Lcom/android/internal/widget/MiuiPcDecorCaptionView;->mStackId:I

    iput v2, p0, Lcom/android/internal/widget/MiuiPcDecorCaptionView;->mDisplayId:I

    iput v1, p0, Lcom/android/internal/widget/MiuiPcDecorCaptionView;->mPreLeft:I

    iput v1, p0, Lcom/android/internal/widget/MiuiPcDecorCaptionView;->mPreTop:I

    iput v1, p0, Lcom/android/internal/widget/MiuiPcDecorCaptionView;->mPreRight:I

    iput v1, p0, Lcom/android/internal/widget/MiuiPcDecorCaptionView;->mPreBottom:I

    const-string v1, "pc_decor_control"

    iput-object v1, p0, Lcom/android/internal/widget/MiuiPcDecorCaptionView;->DECOR_CONTROLL_KEY:Ljava/lang/String;

    const v1, 0xff00

    iput v1, p0, Lcom/android/internal/widget/MiuiPcDecorCaptionView;->RESIZE_MODE_MASK:I

    const/16 v1, 0x100

    iput v1, p0, Lcom/android/internal/widget/MiuiPcDecorCaptionView;->RESIZE_MODE_PC_CHANGE_STATUS:I

    iput v1, p0, Lcom/android/internal/widget/MiuiPcDecorCaptionView;->RESIZE_MODE_PC_INTENT_INIT:I

    const/16 v1, 0x200

    iput v1, p0, Lcom/android/internal/widget/MiuiPcDecorCaptionView;->RESIZE_MODE_FULL_BTN_FULL:I

    const/16 v1, 0x400

    iput v1, p0, Lcom/android/internal/widget/MiuiPcDecorCaptionView;->RESIZE_MODE_MAX_BTN_MAX:I

    const/16 v1, 0x800

    iput v1, p0, Lcom/android/internal/widget/MiuiPcDecorCaptionView;->RESIZE_MODE_FULL_BTN_HIDE_DECOR:I

    const/16 v1, 0x1000

    iput v1, p0, Lcom/android/internal/widget/MiuiPcDecorCaptionView;->RESIZE_MODE_MAX_BTN_RESTORE:I

    const-string v1, "com.android.pcmode.Client"

    iput-object v1, p0, Lcom/android/internal/widget/MiuiPcDecorCaptionView;->CLIENT_DESCRIPTOR:Ljava/lang/String;

    iput v0, p0, Lcom/android/internal/widget/MiuiPcDecorCaptionView;->CODE_CLIENT_CLOSE:I

    new-instance v0, Lcom/android/internal/widget/MiuiPcDecorCaptionView$1;

    invoke-direct {v0, p0}, Lcom/android/internal/widget/MiuiPcDecorCaptionView$1;-><init>(Lcom/android/internal/widget/MiuiPcDecorCaptionView;)V

    iput-object v0, p0, Lcom/android/internal/widget/MiuiPcDecorCaptionView;->mClientBinder:Landroid/os/Binder;

    new-instance v0, Lcom/android/internal/widget/MiuiPcDecorCaptionView$2;

    invoke-direct {v0, p0}, Lcom/android/internal/widget/MiuiPcDecorCaptionView$2;-><init>(Lcom/android/internal/widget/MiuiPcDecorCaptionView;)V

    iput-object v0, p0, Lcom/android/internal/widget/MiuiPcDecorCaptionView;->mPcServConn:Landroid/content/ServiceConnection;

    invoke-direct {p0, p1}, Lcom/android/internal/widget/MiuiPcDecorCaptionView;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 7

    invoke-direct {p0, p1, p2}, Lcom/android/internal/widget/DecorCaptionView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/widget/MiuiPcDecorCaptionView;->mOwner:Lcom/android/internal/policy/PhoneWindow;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/internal/widget/MiuiPcDecorCaptionView;->mShow:Z

    iput-boolean v1, p0, Lcom/android/internal/widget/MiuiPcDecorCaptionView;->mDragging:Z

    iput-boolean v1, p0, Lcom/android/internal/widget/MiuiPcDecorCaptionView;->mOverlayWithAppContent:Z

    new-instance v2, Ljava/util/ArrayList;

    const/4 v3, 0x2

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v2, p0, Lcom/android/internal/widget/MiuiPcDecorCaptionView;->mTouchDispatchList:Ljava/util/ArrayList;

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lcom/android/internal/widget/MiuiPcDecorCaptionView;->mCloseRect:Landroid/graphics/Rect;

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lcom/android/internal/widget/MiuiPcDecorCaptionView;->mMaximizeRect:Landroid/graphics/Rect;

    iput-object v0, p0, Lcom/android/internal/widget/MiuiPcDecorCaptionView;->mContext:Landroid/content/Context;

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lcom/android/internal/widget/MiuiPcDecorCaptionView;->mPcBackRect:Landroid/graphics/Rect;

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lcom/android/internal/widget/MiuiPcDecorCaptionView;->mPcFullRect:Landroid/graphics/Rect;

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lcom/android/internal/widget/MiuiPcDecorCaptionView;->mPcMinRect:Landroid/graphics/Rect;

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lcom/android/internal/widget/MiuiPcDecorCaptionView;->mPcMaxRect:Landroid/graphics/Rect;

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lcom/android/internal/widget/MiuiPcDecorCaptionView;->mPcCloseRect:Landroid/graphics/Rect;

    iput-object v0, p0, Lcom/android/internal/widget/MiuiPcDecorCaptionView;->mPcService:Landroid/os/IBinder;

    const-string v0, "com.android.pcmode.service.PcWinStateService"

    iput-object v0, p0, Lcom/android/internal/widget/MiuiPcDecorCaptionView;->SERVICE_DESCRIPTOR:Ljava/lang/String;

    const-string v2, "com.android.pcmode"

    iput-object v2, p0, Lcom/android/internal/widget/MiuiPcDecorCaptionView;->SERVICE_PACK_NAME:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/internal/widget/MiuiPcDecorCaptionView;->SERVICE_CLASS_NAME:Ljava/lang/String;

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/internal/widget/MiuiPcDecorCaptionView;->CODE_SEND_WIN_STATE:I

    const/16 v2, 0xc8

    iput v2, p0, Lcom/android/internal/widget/MiuiPcDecorCaptionView;->OPERATE_WINDOWN_FULL:I

    const/16 v2, 0xc9

    iput v2, p0, Lcom/android/internal/widget/MiuiPcDecorCaptionView;->OPERATE_WINDOWN_MAX:I

    const/16 v2, 0xca

    iput v2, p0, Lcom/android/internal/widget/MiuiPcDecorCaptionView;->OPERATE_WINDOWN_MIN:I

    const/16 v2, 0xcb

    iput v2, p0, Lcom/android/internal/widget/MiuiPcDecorCaptionView;->OPERATE_WINDOWN_RESTORE:I

    const/16 v2, 0xcc

    iput v2, p0, Lcom/android/internal/widget/MiuiPcDecorCaptionView;->OPERATE_UPDATE_INFO:I

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/android/internal/widget/MiuiPcDecorCaptionView;->mLastStartPcTime:J

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2, v1, v1, v1, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v2, p0, Lcom/android/internal/widget/MiuiPcDecorCaptionView;->mAppBounds:Landroid/graphics/Rect;

    const/4 v2, -0x1

    iput v2, p0, Lcom/android/internal/widget/MiuiPcDecorCaptionView;->mStackId:I

    iput v2, p0, Lcom/android/internal/widget/MiuiPcDecorCaptionView;->mDisplayId:I

    iput v1, p0, Lcom/android/internal/widget/MiuiPcDecorCaptionView;->mPreLeft:I

    iput v1, p0, Lcom/android/internal/widget/MiuiPcDecorCaptionView;->mPreTop:I

    iput v1, p0, Lcom/android/internal/widget/MiuiPcDecorCaptionView;->mPreRight:I

    iput v1, p0, Lcom/android/internal/widget/MiuiPcDecorCaptionView;->mPreBottom:I

    const-string v1, "pc_decor_control"

    iput-object v1, p0, Lcom/android/internal/widget/MiuiPcDecorCaptionView;->DECOR_CONTROLL_KEY:Ljava/lang/String;

    const v1, 0xff00

    iput v1, p0, Lcom/android/internal/widget/MiuiPcDecorCaptionView;->RESIZE_MODE_MASK:I

    const/16 v1, 0x100

    iput v1, p0, Lcom/android/internal/widget/MiuiPcDecorCaptionView;->RESIZE_MODE_PC_CHANGE_STATUS:I

    iput v1, p0, Lcom/android/internal/widget/MiuiPcDecorCaptionView;->RESIZE_MODE_PC_INTENT_INIT:I

    const/16 v1, 0x200

    iput v1, p0, Lcom/android/internal/widget/MiuiPcDecorCaptionView;->RESIZE_MODE_FULL_BTN_FULL:I

    const/16 v1, 0x400

    iput v1, p0, Lcom/android/internal/widget/MiuiPcDecorCaptionView;->RESIZE_MODE_MAX_BTN_MAX:I

    const/16 v1, 0x800

    iput v1, p0, Lcom/android/internal/widget/MiuiPcDecorCaptionView;->RESIZE_MODE_FULL_BTN_HIDE_DECOR:I

    const/16 v1, 0x1000

    iput v1, p0, Lcom/android/internal/widget/MiuiPcDecorCaptionView;->RESIZE_MODE_MAX_BTN_RESTORE:I

    const-string v1, "com.android.pcmode.Client"

    iput-object v1, p0, Lcom/android/internal/widget/MiuiPcDecorCaptionView;->CLIENT_DESCRIPTOR:Ljava/lang/String;

    iput v0, p0, Lcom/android/internal/widget/MiuiPcDecorCaptionView;->CODE_CLIENT_CLOSE:I

    new-instance v0, Lcom/android/internal/widget/MiuiPcDecorCaptionView$1;

    invoke-direct {v0, p0}, Lcom/android/internal/widget/MiuiPcDecorCaptionView$1;-><init>(Lcom/android/internal/widget/MiuiPcDecorCaptionView;)V

    iput-object v0, p0, Lcom/android/internal/widget/MiuiPcDecorCaptionView;->mClientBinder:Landroid/os/Binder;

    new-instance v0, Lcom/android/internal/widget/MiuiPcDecorCaptionView$2;

    invoke-direct {v0, p0}, Lcom/android/internal/widget/MiuiPcDecorCaptionView$2;-><init>(Lcom/android/internal/widget/MiuiPcDecorCaptionView;)V

    iput-object v0, p0, Lcom/android/internal/widget/MiuiPcDecorCaptionView;->mPcServConn:Landroid/content/ServiceConnection;

    invoke-direct {p0, p1}, Lcom/android/internal/widget/MiuiPcDecorCaptionView;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 8

    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/widget/DecorCaptionView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/widget/MiuiPcDecorCaptionView;->mOwner:Lcom/android/internal/policy/PhoneWindow;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/internal/widget/MiuiPcDecorCaptionView;->mShow:Z

    iput-boolean v1, p0, Lcom/android/internal/widget/MiuiPcDecorCaptionView;->mDragging:Z

    iput-boolean v1, p0, Lcom/android/internal/widget/MiuiPcDecorCaptionView;->mOverlayWithAppContent:Z

    new-instance v2, Ljava/util/ArrayList;

    const/4 v3, 0x2

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v2, p0, Lcom/android/internal/widget/MiuiPcDecorCaptionView;->mTouchDispatchList:Ljava/util/ArrayList;

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lcom/android/internal/widget/MiuiPcDecorCaptionView;->mCloseRect:Landroid/graphics/Rect;

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lcom/android/internal/widget/MiuiPcDecorCaptionView;->mMaximizeRect:Landroid/graphics/Rect;

    iput-object v0, p0, Lcom/android/internal/widget/MiuiPcDecorCaptionView;->mContext:Landroid/content/Context;

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lcom/android/internal/widget/MiuiPcDecorCaptionView;->mPcBackRect:Landroid/graphics/Rect;

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lcom/android/internal/widget/MiuiPcDecorCaptionView;->mPcFullRect:Landroid/graphics/Rect;

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lcom/android/internal/widget/MiuiPcDecorCaptionView;->mPcMinRect:Landroid/graphics/Rect;

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lcom/android/internal/widget/MiuiPcDecorCaptionView;->mPcMaxRect:Landroid/graphics/Rect;

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lcom/android/internal/widget/MiuiPcDecorCaptionView;->mPcCloseRect:Landroid/graphics/Rect;

    iput-object v0, p0, Lcom/android/internal/widget/MiuiPcDecorCaptionView;->mPcService:Landroid/os/IBinder;

    const-string v0, "com.android.pcmode.service.PcWinStateService"

    iput-object v0, p0, Lcom/android/internal/widget/MiuiPcDecorCaptionView;->SERVICE_DESCRIPTOR:Ljava/lang/String;

    const-string v2, "com.android.pcmode"

    iput-object v2, p0, Lcom/android/internal/widget/MiuiPcDecorCaptionView;->SERVICE_PACK_NAME:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/internal/widget/MiuiPcDecorCaptionView;->SERVICE_CLASS_NAME:Ljava/lang/String;

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/internal/widget/MiuiPcDecorCaptionView;->CODE_SEND_WIN_STATE:I

    const/16 v2, 0xc8

    iput v2, p0, Lcom/android/internal/widget/MiuiPcDecorCaptionView;->OPERATE_WINDOWN_FULL:I

    const/16 v2, 0xc9

    iput v2, p0, Lcom/android/internal/widget/MiuiPcDecorCaptionView;->OPERATE_WINDOWN_MAX:I

    const/16 v2, 0xca

    iput v2, p0, Lcom/android/internal/widget/MiuiPcDecorCaptionView;->OPERATE_WINDOWN_MIN:I

    const/16 v2, 0xcb

    iput v2, p0, Lcom/android/internal/widget/MiuiPcDecorCaptionView;->OPERATE_WINDOWN_RESTORE:I

    const/16 v2, 0xcc

    iput v2, p0, Lcom/android/internal/widget/MiuiPcDecorCaptionView;->OPERATE_UPDATE_INFO:I

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/android/internal/widget/MiuiPcDecorCaptionView;->mLastStartPcTime:J

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2, v1, v1, v1, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v2, p0, Lcom/android/internal/widget/MiuiPcDecorCaptionView;->mAppBounds:Landroid/graphics/Rect;

    const/4 v2, -0x1

    iput v2, p0, Lcom/android/internal/widget/MiuiPcDecorCaptionView;->mStackId:I

    iput v2, p0, Lcom/android/internal/widget/MiuiPcDecorCaptionView;->mDisplayId:I

    iput v1, p0, Lcom/android/internal/widget/MiuiPcDecorCaptionView;->mPreLeft:I

    iput v1, p0, Lcom/android/internal/widget/MiuiPcDecorCaptionView;->mPreTop:I

    iput v1, p0, Lcom/android/internal/widget/MiuiPcDecorCaptionView;->mPreRight:I

    iput v1, p0, Lcom/android/internal/widget/MiuiPcDecorCaptionView;->mPreBottom:I

    const-string v1, "pc_decor_control"

    iput-object v1, p0, Lcom/android/internal/widget/MiuiPcDecorCaptionView;->DECOR_CONTROLL_KEY:Ljava/lang/String;

    const v1, 0xff00

    iput v1, p0, Lcom/android/internal/widget/MiuiPcDecorCaptionView;->RESIZE_MODE_MASK:I

    const/16 v1, 0x100

    iput v1, p0, Lcom/android/internal/widget/MiuiPcDecorCaptionView;->RESIZE_MODE_PC_CHANGE_STATUS:I

    iput v1, p0, Lcom/android/internal/widget/MiuiPcDecorCaptionView;->RESIZE_MODE_PC_INTENT_INIT:I

    const/16 v1, 0x200

    iput v1, p0, Lcom/android/internal/widget/MiuiPcDecorCaptionView;->RESIZE_MODE_FULL_BTN_FULL:I

    const/16 v1, 0x400

    iput v1, p0, Lcom/android/internal/widget/MiuiPcDecorCaptionView;->RESIZE_MODE_MAX_BTN_MAX:I

    const/16 v1, 0x800

    iput v1, p0, Lcom/android/internal/widget/MiuiPcDecorCaptionView;->RESIZE_MODE_FULL_BTN_HIDE_DECOR:I

    const/16 v1, 0x1000

    iput v1, p0, Lcom/android/internal/widget/MiuiPcDecorCaptionView;->RESIZE_MODE_MAX_BTN_RESTORE:I

    const-string v1, "com.android.pcmode.Client"

    iput-object v1, p0, Lcom/android/internal/widget/MiuiPcDecorCaptionView;->CLIENT_DESCRIPTOR:Ljava/lang/String;

    iput v0, p0, Lcom/android/internal/widget/MiuiPcDecorCaptionView;->CODE_CLIENT_CLOSE:I

    new-instance v0, Lcom/android/internal/widget/MiuiPcDecorCaptionView$1;

    invoke-direct {v0, p0}, Lcom/android/internal/widget/MiuiPcDecorCaptionView$1;-><init>(Lcom/android/internal/widget/MiuiPcDecorCaptionView;)V

    iput-object v0, p0, Lcom/android/internal/widget/MiuiPcDecorCaptionView;->mClientBinder:Landroid/os/Binder;

    new-instance v0, Lcom/android/internal/widget/MiuiPcDecorCaptionView$2;

    invoke-direct {v0, p0}, Lcom/android/internal/widget/MiuiPcDecorCaptionView$2;-><init>(Lcom/android/internal/widget/MiuiPcDecorCaptionView;)V

    iput-object v0, p0, Lcom/android/internal/widget/MiuiPcDecorCaptionView;->mPcServConn:Landroid/content/ServiceConnection;

    invoke-direct {p0, p1}, Lcom/android/internal/widget/MiuiPcDecorCaptionView;->init(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/widget/MiuiPcDecorCaptionView;)Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lcom/android/internal/widget/MiuiPcDecorCaptionView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/internal/widget/MiuiPcDecorCaptionView;)Landroid/os/IBinder;
    .registers 2

    iget-object v0, p0, Lcom/android/internal/widget/MiuiPcDecorCaptionView;->mPcService:Landroid/os/IBinder;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/internal/widget/MiuiPcDecorCaptionView;Landroid/os/IBinder;)Landroid/os/IBinder;
    .registers 2

    iput-object p1, p0, Lcom/android/internal/widget/MiuiPcDecorCaptionView;->mPcService:Landroid/os/IBinder;

    return-object p1
.end method

.method private getTaskId()I
    .registers 7

    iget-object v0, p0, Lcom/android/internal/widget/MiuiPcDecorCaptionView;->mContext:Landroid/content/Context;

    const-string v1, "activity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    invoke-virtual {v0}, Landroid/app/ActivityManager;->getAppTasks()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_6d

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getAppTasks "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/ActivityManager$AppTask;

    invoke-virtual {v5}, Landroid/app/ActivityManager$AppTask;->getTaskInfo()Landroid/app/ActivityManager$RecentTaskInfo;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "MiuiPcDecorCaptionView"

    invoke-static {v5, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/ActivityManager$AppTask;

    invoke-virtual {v4}, Landroid/app/ActivityManager$AppTask;->getTaskInfo()Landroid/app/ActivityManager$RecentTaskInfo;

    move-result-object v4

    iget v2, v4, Landroid/app/ActivityManager$RecentTaskInfo;->taskId:I

    invoke-virtual {v4}, Landroid/app/ActivityManager$RecentTaskInfo;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    iget-object v5, v5, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v5}, Landroid/app/WindowConfiguration;->getAppBounds()Landroid/graphics/Rect;

    move-result-object v5

    iput-object v5, p0, Lcom/android/internal/widget/MiuiPcDecorCaptionView;->mAppBounds:Landroid/graphics/Rect;

    iget v5, v4, Landroid/app/ActivityManager$RecentTaskInfo;->stackId:I

    iput v5, p0, Lcom/android/internal/widget/MiuiPcDecorCaptionView;->mStackId:I

    iget v5, v4, Landroid/app/ActivityManager$RecentTaskInfo;->displayId:I

    iput v5, p0, Lcom/android/internal/widget/MiuiPcDecorCaptionView;->mDisplayId:I

    invoke-direct {p0, v4}, Lcom/android/internal/widget/MiuiPcDecorCaptionView;->initMiuiPcDecorFlags(Landroid/app/ActivityManager$RecentTaskInfo;)V

    :cond_6d
    return v2
.end method

.method private init(Landroid/content/Context;)V
    .registers 5

    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    iput v0, p0, Lcom/android/internal/widget/MiuiPcDecorCaptionView;->mDragSlop:I

    new-instance v0, Landroid/view/GestureDetector;

    invoke-direct {v0, p1, p0}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/android/internal/widget/MiuiPcDecorCaptionView;->mGestureDetector:Landroid/view/GestureDetector;

    iput-object p1, p0, Lcom/android/internal/widget/MiuiPcDecorCaptionView;->mContext:Landroid/content/Context;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const v1, 0x10400cb

    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/MiuiPcDecorCaptionView;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private initDecorStatus()V
    .registers 4

    sget v0, Lcom/android/internal/widget/MiuiPcDecorCaptionView;->sDecorPcFlags:I

    if-nez v0, :cond_16

    iget-object v0, p0, Lcom/android/internal/widget/MiuiPcDecorCaptionView;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const/16 v1, 0x100

    const-string v2, "pc_decor_control"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/android/internal/widget/MiuiPcDecorCaptionView;->sDecorPcFlags:I

    :cond_16
    return-void
.end method

.method private initMiuiPcDecorFlags(Landroid/app/ActivityManager$RecentTaskInfo;)V
    .registers 6

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "miuiPcDecorFlags"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v1

    and-int/lit16 v2, v1, 0x100

    const/16 v3, 0x100

    if-ne v2, v3, :cond_16

    sput v1, Lcom/android/internal/widget/MiuiPcDecorCaptionView;->sDecorPcFlags:I
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_16} :catch_17

    :cond_16
    goto :goto_1b

    :catch_17
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1b
    return-void
.end method

.method private isFullBtnShowFull()Z
    .registers 3

    sget v0, Lcom/android/internal/widget/MiuiPcDecorCaptionView;->sDecorPcFlags:I

    const/16 v1, 0x200

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_9

    const/4 v0, 0x1

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return v0
.end method

.method private isMaxBtnShowMax()Z
    .registers 3

    sget v0, Lcom/android/internal/widget/MiuiPcDecorCaptionView;->sDecorPcFlags:I

    const/16 v1, 0x400

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_9

    const/4 v0, 0x1

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return v0
.end method

.method private needShowFullBtn()Z
    .registers 3

    invoke-direct {p0}, Lcom/android/internal/widget/MiuiPcDecorCaptionView;->initDecorStatus()V

    sget v0, Lcom/android/internal/widget/MiuiPcDecorCaptionView;->sDecorPcFlags:I

    const/16 v1, 0x200

    and-int/2addr v0, v1

    if-eq v0, v1, :cond_14

    sget v0, Lcom/android/internal/widget/MiuiPcDecorCaptionView;->sDecorPcFlags:I

    const/16 v1, 0x800

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_12

    goto :goto_14

    :cond_12
    const/4 v0, 0x0

    goto :goto_15

    :cond_14
    :goto_14
    const/4 v0, 0x1

    :goto_15
    return v0
.end method

.method private needShowMaxBtn()Z
    .registers 3

    invoke-direct {p0}, Lcom/android/internal/widget/MiuiPcDecorCaptionView;->initDecorStatus()V

    sget v0, Lcom/android/internal/widget/MiuiPcDecorCaptionView;->sDecorPcFlags:I

    const/16 v1, 0x400

    and-int/2addr v0, v1

    if-eq v0, v1, :cond_14

    sget v0, Lcom/android/internal/widget/MiuiPcDecorCaptionView;->sDecorPcFlags:I

    const/16 v1, 0x1000

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_12

    goto :goto_14

    :cond_12
    const/4 v0, 0x0

    goto :goto_15

    :cond_14
    :goto_14
    const/4 v0, 0x1

    :goto_15
    return v0
.end method

.method private passedSlop(II)Z
    .registers 5

    iget v0, p0, Lcom/android/internal/widget/MiuiPcDecorCaptionView;->mTouchDownX:I

    sub-int v0, p1, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iget v1, p0, Lcom/android/internal/widget/MiuiPcDecorCaptionView;->mDragSlop:I

    if-gt v0, v1, :cond_1b

    iget v0, p0, Lcom/android/internal/widget/MiuiPcDecorCaptionView;->mTouchDownY:I

    sub-int v0, p2, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iget v1, p0, Lcom/android/internal/widget/MiuiPcDecorCaptionView;->mDragSlop:I

    if-le v0, v1, :cond_19

    goto :goto_1b

    :cond_19
    const/4 v0, 0x0

    goto :goto_1c

    :cond_1b
    :goto_1b
    const/4 v0, 0x1

    :goto_1c
    return v0
.end method

.method private startPcService(Landroid/content/Context;)V
    .registers 8

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/android/internal/widget/MiuiPcDecorCaptionView;->mPcService:Landroid/os/IBinder;

    if-nez v2, :cond_3c

    iget-wide v2, p0, Lcom/android/internal/widget/MiuiPcDecorCaptionView;->mLastStartPcTime:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0x3e8

    cmp-long v2, v2, v4

    if-lez v2, :cond_3c

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "will bind PcWinStateService. now:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "MiuiPcDecorCaptionView"

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput-wide v0, p0, Lcom/android/internal/widget/MiuiPcDecorCaptionView;->mLastStartPcTime:J

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    const-string v3, "com.android.pcmode"

    const-string v4, "com.android.pcmode.service.PcWinStateService"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v3, p0, Lcom/android/internal/widget/MiuiPcDecorCaptionView;->mPcServConn:Landroid/content/ServiceConnection;

    const/4 v4, 0x1

    invoke-virtual {p1, v2, v3, v4}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    :cond_3c
    return-void
.end method

.method private stopPcServie(Landroid/content/Context;)V
    .registers 3

    iget-object v0, p0, Lcom/android/internal/widget/MiuiPcDecorCaptionView;->mPcService:Landroid/os/IBinder;

    if-eqz v0, :cond_c

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/widget/MiuiPcDecorCaptionView;->mPcService:Landroid/os/IBinder;

    iget-object v0, p0, Lcom/android/internal/widget/MiuiPcDecorCaptionView;->mPcServConn:Landroid/content/ServiceConnection;

    invoke-virtual {p1, v0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    :cond_c
    return-void
.end method

.method private toggleFreeformWindowingMode()V
    .registers 5

    iget-object v0, p0, Lcom/android/internal/widget/MiuiPcDecorCaptionView;->mOwner:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v0}, Lcom/android/internal/policy/PhoneWindow;->getWindowControllerCallback()Landroid/view/Window$WindowControllerCallback;

    move-result-object v0

    if-eqz v0, :cond_14

    :try_start_8
    invoke-interface {v0}, Landroid/view/Window$WindowControllerCallback;->toggleFreeformWindowingMode()V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_b} :catch_c

    goto :goto_14

    :catch_c
    move-exception v1

    const-string v2, "MiuiPcDecorCaptionView"

    const-string v3, "Cannot change task workspace."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_14
    :goto_14
    return-void
.end method

.method private updateCaptionVisibility()V
    .registers 3

    iget-object v0, p0, Lcom/android/internal/widget/MiuiPcDecorCaptionView;->mCaption:Landroid/view/View;

    iget-boolean v1, p0, Lcom/android/internal/widget/MiuiPcDecorCaptionView;->mShow:Z

    if-eqz v1, :cond_8

    const/4 v1, 0x0

    goto :goto_a

    :cond_8
    const/16 v1, 0x8

    :goto_a
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/internal/widget/MiuiPcDecorCaptionView;->mCaption:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method


# virtual methods
.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .registers 7

    instance-of v0, p3, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v0, :cond_1c

    const/4 v0, 0x3

    if-ge p2, v0, :cond_14

    invoke-virtual {p0}, Lcom/android/internal/widget/MiuiPcDecorCaptionView;->getChildCount()I

    move-result v1

    if-ge v1, v0, :cond_14

    const/4 v0, 0x0

    invoke-super {p0, p1, v0, p3}, Lcom/android/internal/widget/DecorCaptionView;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    iput-object p1, p0, Lcom/android/internal/widget/MiuiPcDecorCaptionView;->mContent:Landroid/view/View;

    return-void

    :cond_14
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "MiuiPcDecorCaptionView can only handle 1 client view"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "params "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " must subclass MarginLayoutParams"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .registers 3

    instance-of v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;

    return v0
.end method

.method protected generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .registers 3

    new-instance v0, Landroid/view/ViewGroup$MarginLayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .registers 4

    new-instance v0, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {p0}, Lcom/android/internal/widget/MiuiPcDecorCaptionView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .registers 3

    new-instance v0, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {v0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public getCaption()Landroid/view/View;
    .registers 2

    iget-object v0, p0, Lcom/android/internal/widget/MiuiPcDecorCaptionView;->mCaption:Landroid/view/View;

    return-object v0
.end method

.method public getCaptionHeight()I
    .registers 2

    iget-object v0, p0, Lcom/android/internal/widget/MiuiPcDecorCaptionView;->mCaption:Landroid/view/View;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return v0
.end method

.method public isCaptionShowing()Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/internal/widget/MiuiPcDecorCaptionView;->mShow:Z

    return v0
.end method

.method protected onAttachedToWindow()V
    .registers 3

    invoke-super {p0}, Lcom/android/internal/widget/DecorCaptionView;->onAttachedToWindow()V

    const-string v0, "MiuiPcDecorCaptionView"

    const-string v1, "onAttachedToWindow, try startPcService"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/internal/widget/MiuiPcDecorCaptionView;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/android/internal/widget/MiuiPcDecorCaptionView;->startPcService(Landroid/content/Context;)V

    return-void
.end method

.method public onConfigurationChanged(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/internal/widget/MiuiPcDecorCaptionView;->mShow:Z

    invoke-direct {p0}, Lcom/android/internal/widget/MiuiPcDecorCaptionView;->updateCaptionVisibility()V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .registers 3

    invoke-super {p0}, Lcom/android/internal/widget/DecorCaptionView;->onDetachedFromWindow()V

    const-string v0, "MiuiPcDecorCaptionView"

    const-string v1, "onDetachedFromWindow, release ServiceConnection"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/internal/widget/MiuiPcDecorCaptionView;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/android/internal/widget/MiuiPcDecorCaptionView;->stopPcServie(Landroid/content/Context;)V

    return-void
.end method

.method public onDown(Landroid/view/MotionEvent;)Z
    .registers 3

    const/4 v0, 0x0

    return v0
.end method

.method protected onFinishInflate()V
    .registers 2

    invoke-super {p0}, Lcom/android/internal/widget/DecorCaptionView;->onFinishInflate()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/MiuiPcDecorCaptionView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/widget/MiuiPcDecorCaptionView;->mCaption:Landroid/view/View;

    return-void
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .registers 6

    const/4 v0, 0x0

    return v0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_60

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    iget-object v2, p0, Lcom/android/internal/widget/MiuiPcDecorCaptionView;->mMaximizeRect:Landroid/graphics/Rect;

    iget v3, p0, Lcom/android/internal/widget/MiuiPcDecorCaptionView;->mRootScrollY:I

    sub-int v3, v1, v3

    invoke-virtual {v2, v0, v3}, Landroid/graphics/Rect;->contains(II)Z

    move-result v2

    if-eqz v2, :cond_20

    iget-object v2, p0, Lcom/android/internal/widget/MiuiPcDecorCaptionView;->mMaximize:Landroid/view/View;

    iput-object v2, p0, Lcom/android/internal/widget/MiuiPcDecorCaptionView;->mClickTarget:Landroid/view/View;

    :cond_20
    iget-object v2, p0, Lcom/android/internal/widget/MiuiPcDecorCaptionView;->mCloseRect:Landroid/graphics/Rect;

    iget v3, p0, Lcom/android/internal/widget/MiuiPcDecorCaptionView;->mRootScrollY:I

    sub-int v3, v1, v3

    invoke-virtual {v2, v0, v3}, Landroid/graphics/Rect;->contains(II)Z

    move-result v2

    if-eqz v2, :cond_30

    iget-object v2, p0, Lcom/android/internal/widget/MiuiPcDecorCaptionView;->mClose:Landroid/view/View;

    iput-object v2, p0, Lcom/android/internal/widget/MiuiPcDecorCaptionView;->mClickTarget:Landroid/view/View;

    :cond_30
    iget-object v2, p0, Lcom/android/internal/widget/MiuiPcDecorCaptionView;->mPcBackRect:Landroid/graphics/Rect;

    iget v3, p0, Lcom/android/internal/widget/MiuiPcDecorCaptionView;->mRootScrollY:I

    sub-int v3, v1, v3

    invoke-virtual {v2, v0, v3}, Landroid/graphics/Rect;->contains(II)Z

    move-result v2

    if-eqz v2, :cond_40

    iget-object v2, p0, Lcom/android/internal/widget/MiuiPcDecorCaptionView;->mPcBack:Landroid/view/View;

    iput-object v2, p0, Lcom/android/internal/widget/MiuiPcDecorCaptionView;->mClickTarget:Landroid/view/View;

    :cond_40
    iget-object v2, p0, Lcom/android/internal/widget/MiuiPcDecorCaptionView;->mPcFullRect:Landroid/graphics/Rect;

    iget v3, p0, Lcom/android/internal/widget/MiuiPcDecorCaptionView;->mRootScrollY:I

    sub-int v3, v1, v3

    invoke-virtual {v2, v0, v3}, Landroid/graphics/Rect;->contains(II)Z

    move-result v2

    if-eqz v2, :cond_50

    iget-object v2, p0, Lcom/android/internal/widget/MiuiPcDecorCaptionView;->mPcFull:Landroid/view/View;

    iput-object v2, p0, Lcom/android/internal/widget/MiuiPcDecorCaptionView;->mClickTarget:Landroid/view/View;

    :cond_50
    iget-object v2, p0, Lcom/android/internal/widget/MiuiPcDecorCaptionView;->mPcMinRect:Landroid/graphics/Rect;

    iget v3, p0, Lcom/android/internal/widget/MiuiPcDecorCaptionView;->mRootScrollY:I

    sub-int v3, v1, v3

    invoke-virtual {v2, v0, v3}, Landroid/graphics/Rect;->contains(II)Z

    move-result v2

    if-eqz v2, :cond_60

    iget-object v2, p0, Lcom/android/internal/widget/MiuiPcDecorCaptionView;->mPcMin:Landroid/view/View;

    iput-object v2, p0, Lcom/android/internal/widget/MiuiPcDecorCaptionView;->mClickTarget:Landroid/view/View;

    :cond_60
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onInterceptTouchEvent "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/widget/MiuiPcDecorCaptionView;->mClickTarget:Landroid/view/View;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_72

    move v1, v2

    goto :goto_73

    :cond_72
    move v1, v3

    :goto_73
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MiuiPcDecorCaptionView"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/internal/widget/MiuiPcDecorCaptionView;->mClickTarget:Landroid/view/View;

    if-eqz v0, :cond_8c

    goto :goto_8d

    :cond_8c
    move v2, v3

    :goto_8d
    return v2
.end method

.method protected onLayout(ZIIII)V
    .registers 14

    iget-object v0, p0, Lcom/android/internal/widget/MiuiPcDecorCaptionView;->mCaption:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-eq v0, v1, :cond_4b

    iget-object v0, p0, Lcom/android/internal/widget/MiuiPcDecorCaptionView;->mCaption:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    iget-object v4, p0, Lcom/android/internal/widget/MiuiPcDecorCaptionView;->mCaption:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    invoke-virtual {v0, v2, v2, v3, v4}, Landroid/view/View;->layout(IIII)V

    iget-object v0, p0, Lcom/android/internal/widget/MiuiPcDecorCaptionView;->mCaption:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v0

    iget-object v3, p0, Lcom/android/internal/widget/MiuiPcDecorCaptionView;->mCaption:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v3

    sub-int/2addr v0, v3

    iget-object v3, p0, Lcom/android/internal/widget/MiuiPcDecorCaptionView;->mMaximize:Landroid/view/View;

    iget-object v4, p0, Lcom/android/internal/widget/MiuiPcDecorCaptionView;->mMaximizeRect:Landroid/graphics/Rect;

    invoke-virtual {v3, v4}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    iget-object v3, p0, Lcom/android/internal/widget/MiuiPcDecorCaptionView;->mClose:Landroid/view/View;

    iget-object v4, p0, Lcom/android/internal/widget/MiuiPcDecorCaptionView;->mCloseRect:Landroid/graphics/Rect;

    invoke-virtual {v3, v4}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    iget-object v3, p0, Lcom/android/internal/widget/MiuiPcDecorCaptionView;->mPcBack:Landroid/view/View;

    iget-object v4, p0, Lcom/android/internal/widget/MiuiPcDecorCaptionView;->mPcBackRect:Landroid/graphics/Rect;

    invoke-virtual {v3, v4}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    iget-object v3, p0, Lcom/android/internal/widget/MiuiPcDecorCaptionView;->mPcFull:Landroid/view/View;

    iget-object v4, p0, Lcom/android/internal/widget/MiuiPcDecorCaptionView;->mPcFullRect:Landroid/graphics/Rect;

    invoke-virtual {v3, v4}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    iget-object v3, p0, Lcom/android/internal/widget/MiuiPcDecorCaptionView;->mPcMin:Landroid/view/View;

    iget-object v4, p0, Lcom/android/internal/widget/MiuiPcDecorCaptionView;->mPcMinRect:Landroid/graphics/Rect;

    invoke-virtual {v3, v4}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    goto :goto_65

    :cond_4b
    const/4 v0, 0x0

    iget-object v3, p0, Lcom/android/internal/widget/MiuiPcDecorCaptionView;->mMaximizeRect:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->setEmpty()V

    iget-object v3, p0, Lcom/android/internal/widget/MiuiPcDecorCaptionView;->mCloseRect:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->setEmpty()V

    iget-object v3, p0, Lcom/android/internal/widget/MiuiPcDecorCaptionView;->mPcBackRect:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->setEmpty()V

    iget-object v3, p0, Lcom/android/internal/widget/MiuiPcDecorCaptionView;->mPcFullRect:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->setEmpty()V

    iget-object v3, p0, Lcom/android/internal/widget/MiuiPcDecorCaptionView;->mPcMinRect:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->setEmpty()V

    :goto_65
    iget-object v3, p0, Lcom/android/internal/widget/MiuiPcDecorCaptionView;->mContent:Landroid/view/View;

    if-eqz v3, :cond_89

    iget-boolean v4, p0, Lcom/android/internal/widget/MiuiPcDecorCaptionView;->mOverlayWithAppContent:Z

    if-eqz v4, :cond_7b

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    iget-object v5, p0, Lcom/android/internal/widget/MiuiPcDecorCaptionView;->mContent:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    invoke-virtual {v3, v2, v2, v4, v5}, Landroid/view/View;->layout(IIII)V

    goto :goto_89

    :cond_7b
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    iget-object v5, p0, Lcom/android/internal/widget/MiuiPcDecorCaptionView;->mContent:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    add-int/2addr v5, v0

    invoke-virtual {v3, v2, v0, v4, v5}, Landroid/view/View;->layout(IIII)V

    :cond_89
    :goto_89
    iget-object v3, p0, Lcom/android/internal/widget/MiuiPcDecorCaptionView;->mOwner:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v3}, Lcom/android/internal/policy/PhoneWindow;->getDecorView()Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/internal/policy/DecorView;

    invoke-virtual {v3}, Lcom/android/internal/policy/DecorView;->notifyCaptionHeightChanged()V

    iget-object v3, p0, Lcom/android/internal/widget/MiuiPcDecorCaptionView;->mOwner:Lcom/android/internal/policy/PhoneWindow;

    iget-object v4, p0, Lcom/android/internal/widget/MiuiPcDecorCaptionView;->mMaximize:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    move-result v4

    iget-object v5, p0, Lcom/android/internal/widget/MiuiPcDecorCaptionView;->mMaximize:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v5

    iget-object v6, p0, Lcom/android/internal/widget/MiuiPcDecorCaptionView;->mClose:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getRight()I

    move-result v6

    iget-object v7, p0, Lcom/android/internal/widget/MiuiPcDecorCaptionView;->mClose:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getBottom()I

    move-result v7

    invoke-virtual {v3, v4, v5, v6, v7}, Lcom/android/internal/policy/PhoneWindow;->notifyRestrictedCaptionAreaCallback(IIII)V

    const/16 v3, 0xcc

    invoke-virtual {p0, v3}, Lcom/android/internal/widget/MiuiPcDecorCaptionView;->sendOperate(I)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onLayout "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " showFull:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/android/internal/widget/MiuiPcDecorCaptionView;->isFullBtnShowFull()Z

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, " showMax:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/android/internal/widget/MiuiPcDecorCaptionView;->isMaxBtnShowMax()Z

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v4, Lcom/android/internal/widget/MiuiPcDecorCaptionView;->sDecorPcFlags:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "MiuiPcDecorCaptionView"

    invoke-static {v4, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/internal/widget/MiuiPcDecorCaptionView;->needShowMaxBtn()Z

    move-result v3

    if-eqz v3, :cond_123

    invoke-direct {p0}, Lcom/android/internal/widget/MiuiPcDecorCaptionView;->isMaxBtnShowMax()Z

    move-result v3

    if-eqz v3, :cond_11b

    iget-object v3, p0, Lcom/android/internal/widget/MiuiPcDecorCaptionView;->mMaximize:Landroid/view/View;

    const v4, 0x1080581

    invoke-virtual {v3, v4}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_123

    :cond_11b
    iget-object v3, p0, Lcom/android/internal/widget/MiuiPcDecorCaptionView;->mMaximize:Landroid/view/View;

    const v4, 0x1080583

    invoke-virtual {v3, v4}, Landroid/view/View;->setBackgroundResource(I)V

    :cond_123
    :goto_123
    invoke-direct {p0}, Lcom/android/internal/widget/MiuiPcDecorCaptionView;->needShowFullBtn()Z

    move-result v3

    if-eqz v3, :cond_13a

    invoke-direct {p0}, Lcom/android/internal/widget/MiuiPcDecorCaptionView;->isFullBtnShowFull()Z

    move-result v3

    if-eqz v3, :cond_135

    iget-object v1, p0, Lcom/android/internal/widget/MiuiPcDecorCaptionView;->mCaption:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_13a

    :cond_135
    iget-object v2, p0, Lcom/android/internal/widget/MiuiPcDecorCaptionView;->mCaption:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_13a
    :goto_13a
    return-void
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .registers 2

    return-void
.end method

.method protected onMeasure(II)V
    .registers 11

    iget-object v0, p0, Lcom/android/internal/widget/MiuiPcDecorCaptionView;->mCaption:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_1b

    iget-object v3, p0, Lcom/android/internal/widget/MiuiPcDecorCaptionView;->mCaption:Landroid/view/View;

    const/4 v5, 0x0

    const/4 v7, 0x0

    move-object v2, p0

    move v4, p1

    move v6, p2

    invoke-virtual/range {v2 .. v7}, Lcom/android/internal/widget/MiuiPcDecorCaptionView;->measureChildWithMargins(Landroid/view/View;IIII)V

    iget-object v0, p0, Lcom/android/internal/widget/MiuiPcDecorCaptionView;->mCaption:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    goto :goto_1c

    :cond_1b
    const/4 v0, 0x0

    :goto_1c
    iget-object v2, p0, Lcom/android/internal/widget/MiuiPcDecorCaptionView;->mContent:Landroid/view/View;

    if-eqz v2, :cond_35

    iget-boolean v1, p0, Lcom/android/internal/widget/MiuiPcDecorCaptionView;->mOverlayWithAppContent:Z

    if-eqz v1, :cond_2d

    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    move v3, p1

    move v5, p2

    invoke-virtual/range {v1 .. v6}, Lcom/android/internal/widget/MiuiPcDecorCaptionView;->measureChildWithMargins(Landroid/view/View;IIII)V

    goto :goto_35

    :cond_2d
    const/4 v4, 0x0

    move-object v1, p0

    move v3, p1

    move v5, p2

    move v6, v0

    invoke-virtual/range {v1 .. v6}, Lcom/android/internal/widget/MiuiPcDecorCaptionView;->measureChildWithMargins(Landroid/view/View;IIII)V

    :cond_35
    :goto_35
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    invoke-virtual {p0, v1, v2}, Lcom/android/internal/widget/MiuiPcDecorCaptionView;->setMeasuredDimension(II)V

    return-void
.end method

.method public onRootViewScrollYChanged(I)V
    .registers 4

    iget-object v0, p0, Lcom/android/internal/widget/MiuiPcDecorCaptionView;->mCaption:Landroid/view/View;

    if-eqz v0, :cond_a

    iput p1, p0, Lcom/android/internal/widget/MiuiPcDecorCaptionView;->mRootScrollY:I

    int-to-float v1, p1

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    :cond_a
    return-void
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .registers 6

    const/4 v0, 0x0

    return v0
.end method

.method public onShowPress(Landroid/view/MotionEvent;)V
    .registers 2

    return-void
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .registers 8

    iget-object v0, p0, Lcom/android/internal/widget/MiuiPcDecorCaptionView;->mClickTarget:Landroid/view/View;

    iget-object v1, p0, Lcom/android/internal/widget/MiuiPcDecorCaptionView;->mMaximize:Landroid/view/View;

    const-string v2, "onSingleTapUp mPcBack "

    const/4 v3, 0x1

    const-string v4, " "

    const-string v5, "MiuiPcDecorCaptionView"

    if-ne v0, v1, :cond_3d

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/widget/MiuiPcDecorCaptionView;->mMaximize:Landroid/view/View;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/widget/MiuiPcDecorCaptionView;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/internal/widget/MiuiPcDecorCaptionView;->isMaxBtnShowMax()Z

    move-result v0

    if-eqz v0, :cond_36

    const/16 v0, 0xc9

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/MiuiPcDecorCaptionView;->sendOperate(I)V

    goto/16 :goto_cf

    :cond_36
    const/16 v0, 0xcb

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/MiuiPcDecorCaptionView;->sendOperate(I)V

    goto/16 :goto_cf

    :cond_3d
    iget-object v1, p0, Lcom/android/internal/widget/MiuiPcDecorCaptionView;->mClose:Landroid/view/View;

    if-ne v0, v1, :cond_49

    iget-object v0, p0, Lcom/android/internal/widget/MiuiPcDecorCaptionView;->mOwner:Lcom/android/internal/policy/PhoneWindow;

    const/4 v1, 0x0

    invoke-virtual {v0, v3, v1}, Lcom/android/internal/policy/PhoneWindow;->dispatchOnWindowDismissed(ZZ)V

    goto/16 :goto_cf

    :cond_49
    iget-object v1, p0, Lcom/android/internal/widget/MiuiPcDecorCaptionView;->mPcBack:Landroid/view/View;

    if-ne v0, v1, :cond_75

    iget-object v0, p0, Lcom/android/internal/widget/MiuiPcDecorCaptionView;->mContext:Landroid/content/Context;

    instance-of v1, v0, Landroid/app/Activity;

    if-eqz v1, :cond_58

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->onBackPressed()V

    :cond_58
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/widget/MiuiPcDecorCaptionView;->mPcBack:Landroid/view/View;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/widget/MiuiPcDecorCaptionView;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_cf

    :cond_75
    iget-object v1, p0, Lcom/android/internal/widget/MiuiPcDecorCaptionView;->mPcFull:Landroid/view/View;

    if-ne v0, v1, :cond_9d

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onSingleTapUp mPcFull "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/widget/MiuiPcDecorCaptionView;->mPcFull:Landroid/view/View;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/widget/MiuiPcDecorCaptionView;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0xc8

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/MiuiPcDecorCaptionView;->sendOperate(I)V

    goto :goto_cf

    :cond_9d
    iget-object v1, p0, Lcom/android/internal/widget/MiuiPcDecorCaptionView;->mPcMin:Landroid/view/View;

    if-ne v0, v1, :cond_cf

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onSingleTapUp dispatchOnWindowDismissed, mPcMin "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/widget/MiuiPcDecorCaptionView;->mPcMin:Landroid/view/View;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/widget/MiuiPcDecorCaptionView;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0xca

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/MiuiPcDecorCaptionView;->sendOperate(I)V

    iget-object v0, p0, Lcom/android/internal/widget/MiuiPcDecorCaptionView;->mContext:Landroid/content/Context;

    instance-of v1, v0, Landroid/app/Activity;

    if-eqz v1, :cond_cf

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0, v3}, Landroid/app/Activity;->moveTaskToBack(Z)Z

    :cond_cf
    :goto_cf
    return v3
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 14

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v2

    invoke-virtual {p2, v2}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v2

    const/4 v3, 0x3

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-ne v2, v3, :cond_19

    move v2, v5

    goto :goto_1a

    :cond_19
    move v2, v4

    :goto_1a
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v6

    and-int/2addr v6, v5

    if-eqz v6, :cond_23

    move v6, v5

    goto :goto_24

    :cond_23
    move v6, v4

    :goto_24
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "onTouch show:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v9, p0, Lcom/android/internal/widget/MiuiPcDecorCaptionView;->mShow:Z

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v9, " dragging:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v9, p0, Lcom/android/internal/widget/MiuiPcDecorCaptionView;->mDragging:Z

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v10, p0, Lcom/android/internal/widget/MiuiPcDecorCaptionView;->mCheckForDragging:Z

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v9, "  "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const-string v9, "MiuiPcDecorCaptionView"

    invoke-static {v9, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v7, :cond_a2

    if-eq v7, v5, :cond_92

    const/4 v8, 0x2

    if-eq v7, v8, :cond_72

    if-eq v7, v3, :cond_92

    goto :goto_b1

    :cond_72
    iget-boolean v3, p0, Lcom/android/internal/widget/MiuiPcDecorCaptionView;->mDragging:Z

    if-nez v3, :cond_b1

    iget-boolean v3, p0, Lcom/android/internal/widget/MiuiPcDecorCaptionView;->mCheckForDragging:Z

    if-eqz v3, :cond_b1

    if-nez v2, :cond_82

    invoke-direct {p0, v0, v1}, Lcom/android/internal/widget/MiuiPcDecorCaptionView;->passedSlop(II)Z

    move-result v3

    if-eqz v3, :cond_b1

    :cond_82
    iput-boolean v4, p0, Lcom/android/internal/widget/MiuiPcDecorCaptionView;->mCheckForDragging:Z

    iput-boolean v5, p0, Lcom/android/internal/widget/MiuiPcDecorCaptionView;->mDragging:Z

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v3

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v8

    invoke-virtual {p0, v3, v8}, Lcom/android/internal/widget/MiuiPcDecorCaptionView;->startMovingTask(FF)Z

    goto :goto_b1

    :cond_92
    iget-boolean v3, p0, Lcom/android/internal/widget/MiuiPcDecorCaptionView;->mDragging:Z

    if-nez v3, :cond_97

    goto :goto_b1

    :cond_97
    if-ne v7, v5, :cond_9c

    invoke-virtual {p0}, Lcom/android/internal/widget/MiuiPcDecorCaptionView;->finishMovingTask()V

    :cond_9c
    iput-boolean v4, p0, Lcom/android/internal/widget/MiuiPcDecorCaptionView;->mDragging:Z

    iget-boolean v3, p0, Lcom/android/internal/widget/MiuiPcDecorCaptionView;->mCheckForDragging:Z

    xor-int/2addr v3, v5

    return v3

    :cond_a2
    iget-boolean v3, p0, Lcom/android/internal/widget/MiuiPcDecorCaptionView;->mShow:Z

    if-nez v3, :cond_a7

    return v4

    :cond_a7
    if-eqz v2, :cond_ab

    if-eqz v6, :cond_b1

    :cond_ab
    iput-boolean v5, p0, Lcom/android/internal/widget/MiuiPcDecorCaptionView;->mCheckForDragging:Z

    iput v0, p0, Lcom/android/internal/widget/MiuiPcDecorCaptionView;->mTouchDownX:I

    iput v1, p0, Lcom/android/internal/widget/MiuiPcDecorCaptionView;->mTouchDownY:I

    :cond_b1
    :goto_b1
    iget-boolean v3, p0, Lcom/android/internal/widget/MiuiPcDecorCaptionView;->mDragging:Z

    if-nez v3, :cond_b9

    iget-boolean v3, p0, Lcom/android/internal/widget/MiuiPcDecorCaptionView;->mCheckForDragging:Z

    if-eqz v3, :cond_ba

    :cond_b9
    move v4, v5

    :cond_ba
    return v4
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onTouchEvent "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/widget/MiuiPcDecorCaptionView;->mClickTarget:Landroid/view/View;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_12

    move v1, v3

    goto :goto_13

    :cond_12
    move v1, v2

    :goto_13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MiuiPcDecorCaptionView"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/internal/widget/MiuiPcDecorCaptionView;->mClickTarget:Landroid/view/View;

    if-eqz v0, :cond_3d

    iget-object v0, p0, Lcom/android/internal/widget/MiuiPcDecorCaptionView;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eq v0, v3, :cond_39

    const/4 v1, 0x3

    if-ne v0, v1, :cond_3c

    :cond_39
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/internal/widget/MiuiPcDecorCaptionView;->mClickTarget:Landroid/view/View;

    :cond_3c
    return v3

    :cond_3d
    return v2
.end method

.method public removeContentView()V
    .registers 2

    iget-object v0, p0, Lcom/android/internal/widget/MiuiPcDecorCaptionView;->mContent:Landroid/view/View;

    if-eqz v0, :cond_a

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/MiuiPcDecorCaptionView;->removeView(Landroid/view/View;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/widget/MiuiPcDecorCaptionView;->mContent:Landroid/view/View;

    :cond_a
    return-void
.end method

.method public sendOperate(I)V
    .registers 9

    invoke-direct {p0}, Lcom/android/internal/widget/MiuiPcDecorCaptionView;->getTaskId()I

    move-result v0

    iget-object v1, p0, Lcom/android/internal/widget/MiuiPcDecorCaptionView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const/16 v2, 0xcc

    if-ne p1, v2, :cond_46

    iget-object v2, p0, Lcom/android/internal/widget/MiuiPcDecorCaptionView;->mAppBounds:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    iget v3, p0, Lcom/android/internal/widget/MiuiPcDecorCaptionView;->mPreLeft:I

    sub-int/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    const/4 v3, 0x5

    if-ge v2, v3, :cond_46

    iget-object v2, p0, Lcom/android/internal/widget/MiuiPcDecorCaptionView;->mAppBounds:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    iget v4, p0, Lcom/android/internal/widget/MiuiPcDecorCaptionView;->mPreTop:I

    sub-int/2addr v2, v4

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    if-ge v2, v3, :cond_46

    iget-object v2, p0, Lcom/android/internal/widget/MiuiPcDecorCaptionView;->mAppBounds:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    iget v4, p0, Lcom/android/internal/widget/MiuiPcDecorCaptionView;->mPreRight:I

    sub-int/2addr v2, v4

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    if-ge v2, v3, :cond_46

    iget-object v2, p0, Lcom/android/internal/widget/MiuiPcDecorCaptionView;->mAppBounds:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    iget v4, p0, Lcom/android/internal/widget/MiuiPcDecorCaptionView;->mPreBottom:I

    sub-int/2addr v2, v4

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    if-ge v2, v3, :cond_46

    return-void

    :cond_46
    iget-object v2, p0, Lcom/android/internal/widget/MiuiPcDecorCaptionView;->mPcService:Landroid/os/IBinder;

    if-nez v2, :cond_50

    iget-object v2, p0, Lcom/android/internal/widget/MiuiPcDecorCaptionView;->mContext:Landroid/content/Context;

    invoke-direct {p0, v2}, Lcom/android/internal/widget/MiuiPcDecorCaptionView;->startPcService(Landroid/content/Context;)V

    return-void

    :cond_50
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v3

    :try_start_58
    iget-object v4, p0, Lcom/android/internal/widget/MiuiPcDecorCaptionView;->mAppBounds:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    iput v4, p0, Lcom/android/internal/widget/MiuiPcDecorCaptionView;->mPreLeft:I

    iget-object v4, p0, Lcom/android/internal/widget/MiuiPcDecorCaptionView;->mAppBounds:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    iput v4, p0, Lcom/android/internal/widget/MiuiPcDecorCaptionView;->mPreTop:I

    iget-object v4, p0, Lcom/android/internal/widget/MiuiPcDecorCaptionView;->mAppBounds:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->right:I

    iput v4, p0, Lcom/android/internal/widget/MiuiPcDecorCaptionView;->mPreRight:I

    iget-object v4, p0, Lcom/android/internal/widget/MiuiPcDecorCaptionView;->mAppBounds:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    iput v4, p0, Lcom/android/internal/widget/MiuiPcDecorCaptionView;->mPreBottom:I

    const-string v4, "com.android.pcmode.service.PcWinStateService"

    invoke-virtual {v2, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v2, v0}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v2, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v4, p0, Lcom/android/internal/widget/MiuiPcDecorCaptionView;->mPreLeft:I

    invoke-virtual {v2, v4}, Landroid/os/Parcel;->writeInt(I)V

    iget v4, p0, Lcom/android/internal/widget/MiuiPcDecorCaptionView;->mPreTop:I

    invoke-virtual {v2, v4}, Landroid/os/Parcel;->writeInt(I)V

    iget v4, p0, Lcom/android/internal/widget/MiuiPcDecorCaptionView;->mPreRight:I

    invoke-virtual {v2, v4}, Landroid/os/Parcel;->writeInt(I)V

    iget v4, p0, Lcom/android/internal/widget/MiuiPcDecorCaptionView;->mPreBottom:I

    invoke-virtual {v2, v4}, Landroid/os/Parcel;->writeInt(I)V

    iget v4, p0, Lcom/android/internal/widget/MiuiPcDecorCaptionView;->mStackId:I

    invoke-virtual {v2, v4}, Landroid/os/Parcel;->writeInt(I)V

    iget v4, p0, Lcom/android/internal/widget/MiuiPcDecorCaptionView;->mDisplayId:I

    invoke-virtual {v2, v4}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v4, p0, Lcom/android/internal/widget/MiuiPcDecorCaptionView;->mClientBinder:Landroid/os/Binder;

    invoke-virtual {v2, v4}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    iget-object v4, p0, Lcom/android/internal/widget/MiuiPcDecorCaptionView;->mPcService:Landroid/os/IBinder;

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-interface {v4, v5, v2, v3, v6}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    invoke-virtual {v3}, Landroid/os/Parcel;->readException()V
    :try_end_ab
    .catch Ljava/lang/Exception; {:try_start_58 .. :try_end_ab} :catch_ae
    .catchall {:try_start_58 .. :try_end_ab} :catchall_ac

    goto :goto_b5

    :catchall_ac
    move-exception v4

    goto :goto_bd

    :catch_ae
    move-exception v4

    const/4 v5, 0x0

    :try_start_b0
    iput-object v5, p0, Lcom/android/internal/widget/MiuiPcDecorCaptionView;->mPcService:Landroid/os/IBinder;

    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_b5
    .catchall {:try_start_b0 .. :try_end_b5} :catchall_ac

    :goto_b5
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    nop

    return-void

    :goto_bd
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    throw v4
.end method

.method public setPhoneWindow(Lcom/android/internal/policy/PhoneWindow;Z)V
    .registers 7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setPhoneWindow "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MiuiPcDecorCaptionView"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/android/internal/widget/MiuiPcDecorCaptionView;->mOwner:Lcom/android/internal/policy/PhoneWindow;

    iput-boolean p2, p0, Lcom/android/internal/widget/MiuiPcDecorCaptionView;->mShow:Z

    invoke-virtual {p1}, Lcom/android/internal/policy/PhoneWindow;->isOverlayWithDecorCaptionEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/widget/MiuiPcDecorCaptionView;->mOverlayWithAppContent:Z

    invoke-direct {p0}, Lcom/android/internal/widget/MiuiPcDecorCaptionView;->updateCaptionVisibility()V

    iget-object v0, p0, Lcom/android/internal/widget/MiuiPcDecorCaptionView;->mOwner:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v0}, Lcom/android/internal/policy/PhoneWindow;->getDecorView()Landroid/view/View;

    move-result-object v0

    sget-object v1, Landroid/view/ViewOutlineProvider;->BOUNDS:Landroid/view/ViewOutlineProvider;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    const v0, 0x1020364

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/MiuiPcDecorCaptionView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/widget/MiuiPcDecorCaptionView;->mMaximize:Landroid/view/View;

    const v0, 0x1020238

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/MiuiPcDecorCaptionView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/widget/MiuiPcDecorCaptionView;->mClose:Landroid/view/View;

    const v0, 0x102027a

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/MiuiPcDecorCaptionView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz v0, :cond_68

    iget-object v1, p0, Lcom/android/internal/widget/MiuiPcDecorCaptionView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/widget/MiuiPcDecorCaptionView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->labelRes:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_68
    const v1, 0x102027b

    invoke-virtual {p0, v1}, Lcom/android/internal/widget/MiuiPcDecorCaptionView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/widget/MiuiPcDecorCaptionView;->mPcBack:Landroid/view/View;

    const v1, 0x102027c

    invoke-virtual {p0, v1}, Lcom/android/internal/widget/MiuiPcDecorCaptionView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/widget/MiuiPcDecorCaptionView;->mPcFull:Landroid/view/View;

    const v1, 0x102027d

    invoke-virtual {p0, v1}, Lcom/android/internal/widget/MiuiPcDecorCaptionView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/widget/MiuiPcDecorCaptionView;->mPcMin:Landroid/view/View;

    invoke-direct {p0}, Lcom/android/internal/widget/MiuiPcDecorCaptionView;->needShowMaxBtn()Z

    move-result v1

    const/4 v2, 0x0

    const/16 v3, 0x8

    if-eqz v1, :cond_92

    iget-object v1, p0, Lcom/android/internal/widget/MiuiPcDecorCaptionView;->mMaximize:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_97

    :cond_92
    iget-object v1, p0, Lcom/android/internal/widget/MiuiPcDecorCaptionView;->mMaximize:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    :goto_97
    invoke-direct {p0}, Lcom/android/internal/widget/MiuiPcDecorCaptionView;->needShowFullBtn()Z

    move-result v1

    if-eqz v1, :cond_a3

    iget-object v1, p0, Lcom/android/internal/widget/MiuiPcDecorCaptionView;->mPcFull:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_a8

    :cond_a3
    iget-object v1, p0, Lcom/android/internal/widget/MiuiPcDecorCaptionView;->mPcFull:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    :goto_a8
    return-void
.end method

.method public shouldDelayChildPressedState()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method
