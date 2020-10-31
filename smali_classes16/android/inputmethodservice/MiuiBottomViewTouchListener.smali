.class Landroid/inputmethodservice/MiuiBottomViewTouchListener;
.super Ljava/lang/Object;
.source "MiuiBottomViewTouchListener.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/inputmethodservice/MiuiBottomViewTouchListener$KeyEventHandler;
    }
.end annotation


# static fields
.field private static final AUTO_MOVE_NUMBERS:I = 0xf

.field private static final EFFECTIVE_MOVING_DISTANCE:I = 0x28

.field private static final FIRST_AUTO_MOVE_DELAY:I = 0x50

.field private static final MAX_PROCESS:I = 0x5f

.field private static final MAX_PROCESS_AUTO:I = 0x5e

.field private static final MIN_PROCESS:I = 0x5

.field private static final MIN_PROCESS_AUTO:I = 0x6

.field private static final SECOND_AUTO_MOVE_DELAY:I = 0x1e

.field private static final TAG:Ljava/lang/String; = "MiuiBottomViewTouch"


# instance fields
.field private mAbsDistanceLeft:F

.field private mAbsDistanceRight:F

.field private mAutoMoveNumbers:I

.field private mBottomView:Landroid/widget/RelativeLayout;

.field private mBottomViewHelper:Landroid/inputmethodservice/InputMethodServiceInjector$BottomViewHelper;

.field private mContext:Landroid/content/Context;

.field private mDownX:F

.field private mGuideCirImg:Landroid/widget/ImageView;

.field private mGuideRecImg:Landroid/view/View;

.field private mHandler:Landroid/os/Handler;

.field private mHapticFeedbackUtil:Lmiui/util/HapticFeedbackUtil;

.field private mHideAnim:Landroid/view/animation/Animation;

.field private mInputMethodGuidePopupView1:Landroid/inputmethodservice/InputMethodGuidePopupView;

.field private mIsAutoMoveLeft:Z

.field private mIsAutoMoveRight:Z

.field private mIsFarLeft:Z

.field private mIsFarRight:Z

.field private mIsLongPressed:Z

.field private mShowAnim:Landroid/view/animation/Animation;

.field private mShowSecondGuideView:Z

.field private mThumbOffset:F

.field private sInputMethodGuidePopupView2:Landroid/inputmethodservice/InputMethodGuidePopupView;


# direct methods
.method public constructor <init>(Landroid/inputmethodservice/InputMethodServiceInjector$BottomViewHelper;Landroid/widget/RelativeLayout;Landroid/view/View;Landroid/widget/ImageView;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/inputmethodservice/MiuiBottomViewTouchListener;->mShowSecondGuideView:Z

    new-instance v0, Landroid/inputmethodservice/MiuiBottomViewTouchListener$KeyEventHandler;

    invoke-direct {v0, p0}, Landroid/inputmethodservice/MiuiBottomViewTouchListener$KeyEventHandler;-><init>(Landroid/inputmethodservice/MiuiBottomViewTouchListener;)V

    iput-object v0, p0, Landroid/inputmethodservice/MiuiBottomViewTouchListener;->mHandler:Landroid/os/Handler;

    iput-object p2, p0, Landroid/inputmethodservice/MiuiBottomViewTouchListener;->mBottomView:Landroid/widget/RelativeLayout;

    iput-object p1, p0, Landroid/inputmethodservice/MiuiBottomViewTouchListener;->mBottomViewHelper:Landroid/inputmethodservice/InputMethodServiceInjector$BottomViewHelper;

    iput-object p4, p0, Landroid/inputmethodservice/MiuiBottomViewTouchListener;->mGuideCirImg:Landroid/widget/ImageView;

    iput-object p3, p0, Landroid/inputmethodservice/MiuiBottomViewTouchListener;->mGuideRecImg:Landroid/view/View;

    iget-object v0, p1, Landroid/inputmethodservice/InputMethodServiceInjector$BottomViewHelper;->mInputMethodService:Landroid/inputmethodservice/InputMethodService;

    invoke-virtual {v0}, Landroid/inputmethodservice/InputMethodService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Landroid/inputmethodservice/MiuiBottomViewTouchListener;->mContext:Landroid/content/Context;

    invoke-direct {p0}, Landroid/inputmethodservice/MiuiBottomViewTouchListener;->initAnim()V

    invoke-direct {p0}, Landroid/inputmethodservice/MiuiBottomViewTouchListener;->initHapticFeedback()V

    return-void
.end method

.method static synthetic access$000(Landroid/inputmethodservice/MiuiBottomViewTouchListener;)I
    .registers 2

    iget v0, p0, Landroid/inputmethodservice/MiuiBottomViewTouchListener;->mAutoMoveNumbers:I

    return v0
.end method

.method static synthetic access$008(Landroid/inputmethodservice/MiuiBottomViewTouchListener;)I
    .registers 3

    iget v0, p0, Landroid/inputmethodservice/MiuiBottomViewTouchListener;->mAutoMoveNumbers:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Landroid/inputmethodservice/MiuiBottomViewTouchListener;->mAutoMoveNumbers:I

    return v0
.end method

.method static synthetic access$100(Landroid/inputmethodservice/MiuiBottomViewTouchListener;)Z
    .registers 2

    iget-boolean v0, p0, Landroid/inputmethodservice/MiuiBottomViewTouchListener;->mIsAutoMoveLeft:Z

    return v0
.end method

.method static synthetic access$200(Landroid/inputmethodservice/MiuiBottomViewTouchListener;I)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/inputmethodservice/MiuiBottomViewTouchListener;->sendDownUpKeyEvents(I)V

    return-void
.end method

.method static synthetic access$300(Landroid/inputmethodservice/MiuiBottomViewTouchListener;)Landroid/os/Handler;
    .registers 2

    iget-object v0, p0, Landroid/inputmethodservice/MiuiBottomViewTouchListener;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$400(Landroid/inputmethodservice/MiuiBottomViewTouchListener;)Z
    .registers 2

    iget-boolean v0, p0, Landroid/inputmethodservice/MiuiBottomViewTouchListener;->mIsAutoMoveRight:Z

    return v0
.end method

.method static synthetic access$500(Landroid/inputmethodservice/MiuiBottomViewTouchListener;)Landroid/widget/ImageView;
    .registers 2

    iget-object v0, p0, Landroid/inputmethodservice/MiuiBottomViewTouchListener;->mGuideCirImg:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$600(Landroid/inputmethodservice/MiuiBottomViewTouchListener;)Landroid/inputmethodservice/InputMethodGuidePopupView;
    .registers 2

    iget-object v0, p0, Landroid/inputmethodservice/MiuiBottomViewTouchListener;->sInputMethodGuidePopupView2:Landroid/inputmethodservice/InputMethodGuidePopupView;

    return-object v0
.end method

.method static synthetic access$602(Landroid/inputmethodservice/MiuiBottomViewTouchListener;Landroid/inputmethodservice/InputMethodGuidePopupView;)Landroid/inputmethodservice/InputMethodGuidePopupView;
    .registers 2

    iput-object p1, p0, Landroid/inputmethodservice/MiuiBottomViewTouchListener;->sInputMethodGuidePopupView2:Landroid/inputmethodservice/InputMethodGuidePopupView;

    return-object p1
.end method

.method static synthetic access$700(Landroid/inputmethodservice/MiuiBottomViewTouchListener;)Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Landroid/inputmethodservice/MiuiBottomViewTouchListener;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$800(Landroid/inputmethodservice/MiuiBottomViewTouchListener;)Landroid/widget/RelativeLayout;
    .registers 2

    iget-object v0, p0, Landroid/inputmethodservice/MiuiBottomViewTouchListener;->mBottomView:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method private checkGuideViewNeedShow()V
    .registers 4

    sget-boolean v0, Landroid/inputmethodservice/InputMethodUtil;->sCanShowGuideView:Z

    if-nez v0, :cond_5

    return-void

    :cond_5
    iget-object v0, p0, Landroid/inputmethodservice/MiuiBottomViewTouchListener;->mGuideRecImg:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-nez v0, :cond_1b

    iget-object v0, p0, Landroid/inputmethodservice/MiuiBottomViewTouchListener;->mGuideRecImg:Landroid/view/View;

    iget-object v2, p0, Landroid/inputmethodservice/MiuiBottomViewTouchListener;->mHideAnim:Landroid/view/animation/Animation;

    invoke-virtual {v0, v2}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    iget-object v0, p0, Landroid/inputmethodservice/MiuiBottomViewTouchListener;->mGuideRecImg:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_1b
    iget-boolean v0, p0, Landroid/inputmethodservice/MiuiBottomViewTouchListener;->mShowSecondGuideView:Z

    if-eqz v0, :cond_34

    iget-object v0, p0, Landroid/inputmethodservice/MiuiBottomViewTouchListener;->mGuideCirImg:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-ne v0, v1, :cond_34

    iget-object v0, p0, Landroid/inputmethodservice/MiuiBottomViewTouchListener;->mGuideCirImg:Landroid/widget/ImageView;

    iget-object v1, p0, Landroid/inputmethodservice/MiuiBottomViewTouchListener;->mShowAnim:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    iget-object v0, p0, Landroid/inputmethodservice/MiuiBottomViewTouchListener;->mGuideCirImg:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_34
    return-void
.end method

.method private hideGuideView()V
    .registers 3

    iget-boolean v0, p0, Landroid/inputmethodservice/MiuiBottomViewTouchListener;->mShowSecondGuideView:Z

    if-eqz v0, :cond_9

    const/4 v0, 0x0

    sput-boolean v0, Landroid/inputmethodservice/InputMethodUtil;->sCanShowGuideView:Z

    iput-boolean v0, p0, Landroid/inputmethodservice/MiuiBottomViewTouchListener;->mShowSecondGuideView:Z

    :cond_9
    iget-object v0, p0, Landroid/inputmethodservice/MiuiBottomViewTouchListener;->mGuideCirImg:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1f

    iget-object v0, p0, Landroid/inputmethodservice/MiuiBottomViewTouchListener;->mGuideCirImg:Landroid/widget/ImageView;

    iget-object v1, p0, Landroid/inputmethodservice/MiuiBottomViewTouchListener;->mHideAnim:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    iget-object v0, p0, Landroid/inputmethodservice/MiuiBottomViewTouchListener;->mGuideCirImg:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_1f
    iget-object v0, p0, Landroid/inputmethodservice/MiuiBottomViewTouchListener;->sInputMethodGuidePopupView2:Landroid/inputmethodservice/InputMethodGuidePopupView;

    if-eqz v0, :cond_2e

    invoke-virtual {v0}, Landroid/inputmethodservice/InputMethodGuidePopupView;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_2e

    iget-object v0, p0, Landroid/inputmethodservice/MiuiBottomViewTouchListener;->sInputMethodGuidePopupView2:Landroid/inputmethodservice/InputMethodGuidePopupView;

    invoke-virtual {v0}, Landroid/inputmethodservice/InputMethodGuidePopupView;->dismiss()V

    :cond_2e
    return-void
.end method

.method private initAnim()V
    .registers 6

    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    iput-object v0, p0, Landroid/inputmethodservice/MiuiBottomViewTouchListener;->mShowAnim:Landroid/view/animation/Animation;

    const-wide/16 v3, 0xc8

    invoke-virtual {v0, v3, v4}, Landroid/view/animation/Animation;->setDuration(J)V

    new-instance v0, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v0, v2, v1}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    iput-object v0, p0, Landroid/inputmethodservice/MiuiBottomViewTouchListener;->mHideAnim:Landroid/view/animation/Animation;

    invoke-virtual {v0, v3, v4}, Landroid/view/animation/Animation;->setDuration(J)V

    return-void
.end method

.method private initHapticFeedback()V
    .registers 4

    iget-object v0, p0, Landroid/inputmethodservice/MiuiBottomViewTouchListener;->mHapticFeedbackUtil:Lmiui/util/HapticFeedbackUtil;

    if-nez v0, :cond_e

    new-instance v0, Lmiui/util/HapticFeedbackUtil;

    iget-object v1, p0, Landroid/inputmethodservice/MiuiBottomViewTouchListener;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lmiui/util/HapticFeedbackUtil;-><init>(Landroid/content/Context;Z)V

    iput-object v0, p0, Landroid/inputmethodservice/MiuiBottomViewTouchListener;->mHapticFeedbackUtil:Lmiui/util/HapticFeedbackUtil;

    :cond_e
    return-void
.end method

.method private moveSeekBar(F)I
    .registers 6

    iget v0, p0, Landroid/inputmethodservice/MiuiBottomViewTouchListener;->mThumbOffset:F

    sub-float v0, p1, v0

    sget-object v1, Landroid/inputmethodservice/InputMethodUtil;->sInputMethodBottomSeekBar:Landroid/inputmethodservice/InputMethodBottomSeekBar;

    invoke-virtual {v1}, Landroid/inputmethodservice/InputMethodBottomSeekBar;->getThumbLocationLeft()F

    move-result v1

    cmpg-float v1, v0, v1

    if-gez v1, :cond_15

    sget-object v1, Landroid/inputmethodservice/InputMethodUtil;->sInputMethodBottomSeekBar:Landroid/inputmethodservice/InputMethodBottomSeekBar;

    invoke-virtual {v1}, Landroid/inputmethodservice/InputMethodBottomSeekBar;->getThumbLocationLeft()F

    move-result v0

    goto :goto_25

    :cond_15
    sget-object v1, Landroid/inputmethodservice/InputMethodUtil;->sInputMethodBottomSeekBar:Landroid/inputmethodservice/InputMethodBottomSeekBar;

    invoke-virtual {v1}, Landroid/inputmethodservice/InputMethodBottomSeekBar;->getThumbLocationRight()F

    move-result v1

    cmpl-float v1, v0, v1

    if-lez v1, :cond_25

    sget-object v1, Landroid/inputmethodservice/InputMethodUtil;->sInputMethodBottomSeekBar:Landroid/inputmethodservice/InputMethodBottomSeekBar;

    invoke-virtual {v1}, Landroid/inputmethodservice/InputMethodBottomSeekBar;->getThumbLocationRight()F

    move-result v0

    :cond_25
    :goto_25
    sget-object v1, Landroid/inputmethodservice/InputMethodUtil;->sInputMethodBottomSeekBar:Landroid/inputmethodservice/InputMethodBottomSeekBar;

    invoke-virtual {v1}, Landroid/inputmethodservice/InputMethodBottomSeekBar;->getSeekBarRealLocation()I

    move-result v1

    int-to-float v1, v1

    sub-float v1, v0, v1

    sget-object v2, Landroid/inputmethodservice/InputMethodUtil;->sInputMethodBottomSeekBar:Landroid/inputmethodservice/InputMethodBottomSeekBar;

    invoke-virtual {v2}, Landroid/inputmethodservice/InputMethodBottomSeekBar;->getSeekBarRealLength()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    const/high16 v2, 0x42c80000    # 100.0f

    mul-float/2addr v1, v2

    sget-object v2, Landroid/inputmethodservice/InputMethodUtil;->sInputMethodBottomSeekBar:Landroid/inputmethodservice/InputMethodBottomSeekBar;

    invoke-virtual {v2}, Landroid/inputmethodservice/InputMethodBottomSeekBar;->getSeekBarRealLocation()I

    move-result v2

    if-nez v2, :cond_43

    const/high16 v1, 0x42480000    # 50.0f

    :cond_43
    const/high16 v2, 0x42be0000    # 95.0f

    cmpl-float v2, v1, v2

    const/4 v3, 0x1

    if-ltz v2, :cond_62

    const/high16 v1, 0x42be0000    # 95.0f

    iget-boolean v2, p0, Landroid/inputmethodservice/MiuiBottomViewTouchListener;->mIsFarRight:Z

    if-nez v2, :cond_57

    sget-object v2, Landroid/inputmethodservice/InputMethodUtil;->sInputMethodBottomSeekBar:Landroid/inputmethodservice/InputMethodBottomSeekBar;

    invoke-virtual {v2, v0}, Landroid/inputmethodservice/InputMethodBottomSeekBar;->setThumbLocationRight(F)V

    iput-boolean v3, p0, Landroid/inputmethodservice/MiuiBottomViewTouchListener;->mIsFarRight:Z

    :cond_57
    sget-object v2, Landroid/inputmethodservice/InputMethodUtil;->sInputMethodBottomSeekBar:Landroid/inputmethodservice/InputMethodBottomSeekBar;

    invoke-virtual {v2}, Landroid/inputmethodservice/InputMethodBottomSeekBar;->getThumbLocationRight()F

    move-result v2

    sub-float v2, p1, v2

    iput v2, p0, Landroid/inputmethodservice/MiuiBottomViewTouchListener;->mThumbOffset:F

    goto :goto_7f

    :cond_62
    const/high16 v2, 0x40a00000    # 5.0f

    cmpg-float v2, v1, v2

    if-gtz v2, :cond_7f

    const/high16 v1, 0x40a00000    # 5.0f

    iget-boolean v2, p0, Landroid/inputmethodservice/MiuiBottomViewTouchListener;->mIsFarLeft:Z

    if-nez v2, :cond_75

    sget-object v2, Landroid/inputmethodservice/InputMethodUtil;->sInputMethodBottomSeekBar:Landroid/inputmethodservice/InputMethodBottomSeekBar;

    invoke-virtual {v2, v0}, Landroid/inputmethodservice/InputMethodBottomSeekBar;->setThumbLocationLeft(F)V

    iput-boolean v3, p0, Landroid/inputmethodservice/MiuiBottomViewTouchListener;->mIsFarLeft:Z

    :cond_75
    sget-object v2, Landroid/inputmethodservice/InputMethodUtil;->sInputMethodBottomSeekBar:Landroid/inputmethodservice/InputMethodBottomSeekBar;

    invoke-virtual {v2}, Landroid/inputmethodservice/InputMethodBottomSeekBar;->getThumbLocationLeft()F

    move-result v2

    sub-float v2, p1, v2

    iput v2, p0, Landroid/inputmethodservice/MiuiBottomViewTouchListener;->mThumbOffset:F

    :cond_7f
    :goto_7f
    sget-object v2, Landroid/inputmethodservice/InputMethodUtil;->sInputMethodBottomSeekBar:Landroid/inputmethodservice/InputMethodBottomSeekBar;

    float-to-int v3, v1

    invoke-virtual {v2, v3}, Landroid/inputmethodservice/InputMethodBottomSeekBar;->setProgress(I)V

    float-to-int v2, v1

    return v2
.end method

.method private sendDownUpKeyEvents(I)V
    .registers 21

    move-object/from16 v0, p0

    move/from16 v13, p1

    iget-object v1, v0, Landroid/inputmethodservice/MiuiBottomViewTouchListener;->sInputMethodGuidePopupView2:Landroid/inputmethodservice/InputMethodGuidePopupView;

    if-eqz v1, :cond_b

    invoke-virtual {v1}, Landroid/inputmethodservice/InputMethodGuidePopupView;->dismiss()V

    :cond_b
    iget-object v1, v0, Landroid/inputmethodservice/MiuiBottomViewTouchListener;->mBottomViewHelper:Landroid/inputmethodservice/InputMethodServiceInjector$BottomViewHelper;

    iget-object v1, v1, Landroid/inputmethodservice/InputMethodServiceInjector$BottomViewHelper;->mInputMethodService:Landroid/inputmethodservice/InputMethodService;

    invoke-virtual {v1}, Landroid/inputmethodservice/InputMethodService;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v14

    if-nez v14, :cond_16

    return-void

    :cond_16
    new-instance v1, Landroid/view/inputmethod/ExtractedTextRequest;

    invoke-direct {v1}, Landroid/view/inputmethod/ExtractedTextRequest;-><init>()V

    const/4 v2, 0x0

    invoke-interface {v14, v1, v2}, Landroid/view/inputmethod/InputConnection;->getExtractedText(Landroid/view/inputmethod/ExtractedTextRequest;I)Landroid/view/inputmethod/ExtractedText;

    move-result-object v15

    if-eqz v15, :cond_46

    const/16 v1, 0x15

    const-string v2, "MiuiBottomViewTouch"

    if-ne v13, v1, :cond_32

    iget v1, v15, Landroid/view/inputmethod/ExtractedText;->selectionEnd:I

    if-nez v1, :cond_32

    const-string v1, "cursor has already moved to the start position , stop moving left."

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_32
    const/16 v1, 0x16

    if-ne v13, v1, :cond_46

    iget v1, v15, Landroid/view/inputmethod/ExtractedText;->selectionEnd:I

    iget-object v3, v15, Landroid/view/inputmethod/ExtractedText;->text:Ljava/lang/CharSequence;

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-ne v1, v3, :cond_46

    const-string v1, "cursor has already moved to the end position , stop moving right."

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_46
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v16

    invoke-virtual/range {p0 .. p0}, Landroid/inputmethodservice/MiuiBottomViewTouchListener;->startTapLightVibrate()V

    new-instance v12, Landroid/view/KeyEvent;

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/16 v18, 0x16

    move-object v1, v12

    move-wide/from16 v2, v16

    move-wide/from16 v4, v16

    move/from16 v7, p1

    move-object v0, v12

    move/from16 v12, v18

    invoke-direct/range {v1 .. v12}, Landroid/view/KeyEvent;-><init>(JJIIIIIII)V

    invoke-interface {v14, v0}, Landroid/view/inputmethod/InputConnection;->sendKeyEvent(Landroid/view/KeyEvent;)Z

    new-instance v0, Landroid/view/KeyEvent;

    const/4 v6, 0x1

    const/16 v12, 0x16

    move-object v1, v0

    invoke-direct/range {v1 .. v12}, Landroid/view/KeyEvent;-><init>(JJIIIIIII)V

    invoke-interface {v14, v0}, Landroid/view/inputmethod/InputConnection;->sendKeyEvent(Landroid/view/KeyEvent;)Z

    return-void
.end method

.method private showSecondGuideAndSeekBar()V
    .registers 4

    iget-object v0, p0, Landroid/inputmethodservice/MiuiBottomViewTouchListener;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "move_cursor_seek_bar_show"

    invoke-static {v0, v1}, Landroid/inputmethodservice/InputMethodAnalyticsUtil;->addMoveCursorRecord(Landroid/content/Context;Ljava/lang/String;)V

    sget-boolean v0, Landroid/inputmethodservice/InputMethodUtil;->sCanShowGuideView:Z

    const/4 v1, 0x0

    if-nez v0, :cond_13

    sget-object v0, Landroid/inputmethodservice/InputMethodUtil;->sInputMethodBottomSeekBar:Landroid/inputmethodservice/InputMethodBottomSeekBar;

    invoke-virtual {v0, v1}, Landroid/inputmethodservice/InputMethodBottomSeekBar;->setVisibility(I)V

    return-void

    :cond_13
    iget-object v0, p0, Landroid/inputmethodservice/MiuiBottomViewTouchListener;->mGuideCirImg:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_36

    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    const-wide/16 v1, 0xc8

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    new-instance v1, Landroid/inputmethodservice/MiuiBottomViewTouchListener$1;

    invoke-direct {v1, p0}, Landroid/inputmethodservice/MiuiBottomViewTouchListener$1;-><init>(Landroid/inputmethodservice/MiuiBottomViewTouchListener;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    iget-object v1, p0, Landroid/inputmethodservice/MiuiBottomViewTouchListener;->mGuideCirImg:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_3b

    :cond_36
    sget-object v0, Landroid/inputmethodservice/InputMethodUtil;->sInputMethodBottomSeekBar:Landroid/inputmethodservice/InputMethodBottomSeekBar;

    invoke-virtual {v0, v1}, Landroid/inputmethodservice/InputMethodBottomSeekBar;->setVisibility(I)V

    :goto_3b
    return-void
.end method


# virtual methods
.method public initTouchParams()V
    .registers 3

    const/4 v0, 0x0

    iput v0, p0, Landroid/inputmethodservice/MiuiBottomViewTouchListener;->mAutoMoveNumbers:I

    iput-boolean v0, p0, Landroid/inputmethodservice/MiuiBottomViewTouchListener;->mIsAutoMoveLeft:Z

    iput-boolean v0, p0, Landroid/inputmethodservice/MiuiBottomViewTouchListener;->mIsAutoMoveRight:Z

    iget-object v0, p0, Landroid/inputmethodservice/MiuiBottomViewTouchListener;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_17

    const/16 v1, 0x15

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Landroid/inputmethodservice/MiuiBottomViewTouchListener;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x16

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    :cond_17
    return-void
.end method

.method public onLongClick(Landroid/view/View;)Z
    .registers 4

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/inputmethodservice/MiuiBottomViewTouchListener;->mIsLongPressed:Z

    invoke-direct {p0}, Landroid/inputmethodservice/MiuiBottomViewTouchListener;->showSecondGuideAndSeekBar()V

    iget-object v1, p0, Landroid/inputmethodservice/MiuiBottomViewTouchListener;->mContext:Landroid/content/Context;

    invoke-static {v1, v0}, Landroid/inputmethodservice/InputMethodUtil;->showHandleView(Landroid/content/Context;Z)V

    return v0
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 12

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_b1

    const/4 v2, 0x1

    if-eq v0, v2, :cond_9c

    const/4 v3, 0x2

    if-eq v0, v3, :cond_f

    goto/16 :goto_e4

    :cond_f
    iget-boolean v0, p0, Landroid/inputmethodservice/MiuiBottomViewTouchListener;->mIsLongPressed:Z

    if-eqz v0, :cond_e4

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget v3, p0, Landroid/inputmethodservice/MiuiBottomViewTouchListener;->mDownX:F

    sub-float/2addr v3, v0

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    invoke-direct {p0, v0}, Landroid/inputmethodservice/MiuiBottomViewTouchListener;->moveSeekBar(F)I

    move-result v4

    const/16 v5, 0x5e

    const/16 v6, 0x16

    const/16 v7, 0x15

    if-ge v4, v5, :cond_82

    const/4 v8, 0x6

    if-le v4, v8, :cond_82

    invoke-virtual {p0}, Landroid/inputmethodservice/MiuiBottomViewTouchListener;->initTouchParams()V

    iget v2, p0, Landroid/inputmethodservice/MiuiBottomViewTouchListener;->mDownX:F

    cmpl-float v5, v0, v2

    const/high16 v8, 0x42200000    # 40.0f

    if-lez v5, :cond_5b

    iget v2, p0, Landroid/inputmethodservice/MiuiBottomViewTouchListener;->mAbsDistanceRight:F

    sub-float v2, v3, v2

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    cmpg-float v2, v2, v8

    if-gez v2, :cond_45

    return v1

    :cond_45
    iget v2, p0, Landroid/inputmethodservice/MiuiBottomViewTouchListener;->mAbsDistanceRight:F

    cmpl-float v5, v3, v2

    if-lez v5, :cond_51

    invoke-direct {p0, v6}, Landroid/inputmethodservice/MiuiBottomViewTouchListener;->sendDownUpKeyEvents(I)V

    iput v3, p0, Landroid/inputmethodservice/MiuiBottomViewTouchListener;->mAbsDistanceRight:F

    goto :goto_9b

    :cond_51
    cmpg-float v2, v3, v2

    if-gez v2, :cond_9b

    invoke-direct {p0, v7}, Landroid/inputmethodservice/MiuiBottomViewTouchListener;->sendDownUpKeyEvents(I)V

    iput v3, p0, Landroid/inputmethodservice/MiuiBottomViewTouchListener;->mAbsDistanceRight:F

    goto :goto_9b

    :cond_5b
    cmpg-float v2, v0, v2

    if-gez v2, :cond_9b

    iget v2, p0, Landroid/inputmethodservice/MiuiBottomViewTouchListener;->mAbsDistanceLeft:F

    sub-float v2, v3, v2

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    cmpg-float v2, v2, v8

    if-gez v2, :cond_6c

    return v1

    :cond_6c
    iget v2, p0, Landroid/inputmethodservice/MiuiBottomViewTouchListener;->mAbsDistanceLeft:F

    cmpl-float v5, v3, v2

    if-lez v5, :cond_78

    invoke-direct {p0, v7}, Landroid/inputmethodservice/MiuiBottomViewTouchListener;->sendDownUpKeyEvents(I)V

    iput v3, p0, Landroid/inputmethodservice/MiuiBottomViewTouchListener;->mAbsDistanceLeft:F

    goto :goto_9b

    :cond_78
    cmpg-float v2, v3, v2

    if-gez v2, :cond_9b

    invoke-direct {p0, v6}, Landroid/inputmethodservice/MiuiBottomViewTouchListener;->sendDownUpKeyEvents(I)V

    iput v3, p0, Landroid/inputmethodservice/MiuiBottomViewTouchListener;->mAbsDistanceLeft:F

    goto :goto_9b

    :cond_82
    if-lt v4, v5, :cond_90

    iget-boolean v5, p0, Landroid/inputmethodservice/MiuiBottomViewTouchListener;->mIsAutoMoveRight:Z

    if-nez v5, :cond_9b

    iput-boolean v2, p0, Landroid/inputmethodservice/MiuiBottomViewTouchListener;->mIsAutoMoveRight:Z

    iget-object v2, p0, Landroid/inputmethodservice/MiuiBottomViewTouchListener;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v6}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_9b

    :cond_90
    iget-boolean v5, p0, Landroid/inputmethodservice/MiuiBottomViewTouchListener;->mIsAutoMoveLeft:Z

    if-nez v5, :cond_9b

    iput-boolean v2, p0, Landroid/inputmethodservice/MiuiBottomViewTouchListener;->mIsAutoMoveLeft:Z

    iget-object v2, p0, Landroid/inputmethodservice/MiuiBottomViewTouchListener;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v7}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_9b
    :goto_9b
    goto :goto_e4

    :cond_9c
    sget-object v0, Landroid/inputmethodservice/InputMethodUtil;->sInputMethodBottomSeekBar:Landroid/inputmethodservice/InputMethodBottomSeekBar;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/inputmethodservice/InputMethodBottomSeekBar;->setVisibility(I)V

    invoke-direct {p0}, Landroid/inputmethodservice/MiuiBottomViewTouchListener;->hideGuideView()V

    iput-boolean v1, p0, Landroid/inputmethodservice/MiuiBottomViewTouchListener;->mIsLongPressed:Z

    invoke-virtual {p0}, Landroid/inputmethodservice/MiuiBottomViewTouchListener;->initTouchParams()V

    iget-object v0, p0, Landroid/inputmethodservice/MiuiBottomViewTouchListener;->mContext:Landroid/content/Context;

    invoke-static {v0, v1}, Landroid/inputmethodservice/InputMethodUtil;->showHandleView(Landroid/content/Context;Z)V

    goto :goto_e4

    :cond_b1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Landroid/inputmethodservice/MiuiBottomViewTouchListener;->mDownX:F

    const/4 v0, 0x0

    iput v0, p0, Landroid/inputmethodservice/MiuiBottomViewTouchListener;->mAbsDistanceLeft:F

    iput v0, p0, Landroid/inputmethodservice/MiuiBottomViewTouchListener;->mAbsDistanceRight:F

    sget-object v0, Landroid/inputmethodservice/InputMethodUtil;->sInputMethodBottomSeekBar:Landroid/inputmethodservice/InputMethodBottomSeekBar;

    const/16 v2, 0x32

    invoke-virtual {v0, v2}, Landroid/inputmethodservice/InputMethodBottomSeekBar;->setProgress(I)V

    sget v0, Landroid/inputmethodservice/InputMethodUtil;->sScreenWidth:I

    int-to-float v0, v0

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v0, v2

    iget v2, p0, Landroid/inputmethodservice/MiuiBottomViewTouchListener;->mDownX:F

    sub-float/2addr v2, v0

    iput v2, p0, Landroid/inputmethodservice/MiuiBottomViewTouchListener;->mThumbOffset:F

    iput-boolean v1, p0, Landroid/inputmethodservice/MiuiBottomViewTouchListener;->mIsFarLeft:Z

    iput-boolean v1, p0, Landroid/inputmethodservice/MiuiBottomViewTouchListener;->mIsFarRight:Z

    invoke-direct {p0}, Landroid/inputmethodservice/MiuiBottomViewTouchListener;->checkGuideViewNeedShow()V

    iget-object v2, p0, Landroid/inputmethodservice/MiuiBottomViewTouchListener;->mInputMethodGuidePopupView1:Landroid/inputmethodservice/InputMethodGuidePopupView;

    if-eqz v2, :cond_e4

    invoke-virtual {v2}, Landroid/inputmethodservice/InputMethodGuidePopupView;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_e4

    iget-object v2, p0, Landroid/inputmethodservice/MiuiBottomViewTouchListener;->mInputMethodGuidePopupView1:Landroid/inputmethodservice/InputMethodGuidePopupView;

    invoke-virtual {v2}, Landroid/inputmethodservice/InputMethodGuidePopupView;->dismiss()V

    :cond_e4
    :goto_e4
    return v1
.end method

.method public setGuideWindow(Landroid/inputmethodservice/InputMethodGuidePopupView;)V
    .registers 2

    iput-object p1, p0, Landroid/inputmethodservice/MiuiBottomViewTouchListener;->mInputMethodGuidePopupView1:Landroid/inputmethodservice/InputMethodGuidePopupView;

    return-void
.end method

.method public setSecondGuideViewShow()V
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/inputmethodservice/MiuiBottomViewTouchListener;->mShowSecondGuideView:Z

    return-void
.end method

.method public startTapLightVibrate()V
    .registers 4

    sget-boolean v0, Landroid/inputmethodservice/InputMethodUtil;->sIsSupportLinearMotorVibrate:Z

    if-eqz v0, :cond_d

    iget-object v0, p0, Landroid/inputmethodservice/MiuiBottomViewTouchListener;->mHapticFeedbackUtil:Lmiui/util/HapticFeedbackUtil;

    const/4 v1, 0x0

    const-string/jumbo v2, "mesh_light"

    invoke-virtual {v0, v2, v1}, Lmiui/util/HapticFeedbackUtil;->performHapticFeedback(Ljava/lang/String;Z)Z

    :cond_d
    return-void
.end method
