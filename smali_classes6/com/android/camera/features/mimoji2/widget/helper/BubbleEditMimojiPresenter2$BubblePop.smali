.class public Lcom/android/camera/features/mimoji2/widget/helper/BubbleEditMimojiPresenter2$BubblePop;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final ALL_PROCESS:I = 0xcb

.field public static final DELETE_PROCESS:I = 0xca

.field public static final EDIT_PROCESS:I = 0xc9

.field public static final EMOTICON_PROCESS:I = 0xcc

.field public static final HIDE_STATE:I = 0x68

.field public static final SHOW_STATE:I = 0x67


# instance fields
.field private hasAddView:Z

.field private layoutParamsDelete:Landroid/widget/RelativeLayout$LayoutParams;

.field private layoutParamsEdit:Landroid/widget/RelativeLayout$LayoutParams;

.field private layoutParamsEmoticon:Landroid/widget/RelativeLayout$LayoutParams;

.field mContext:Landroid/content/Context;

.field private mHashCode:I

.field public mIvDeleteFisrt:Landroid/widget/ImageView;

.field public mIvEditFirst:Landroid/widget/ImageView;

.field public mIvEmoticonFirst:Landroid/widget/ImageView;

.field public mLocationSelect:[I

.field private mRootView:Landroid/widget/RelativeLayout;

.field private processState:I

.field final synthetic this$0:Lcom/android/camera/features/mimoji2/widget/helper/BubbleEditMimojiPresenter2;


# direct methods
.method constructor <init>(Lcom/android/camera/features/mimoji2/widget/helper/BubbleEditMimojiPresenter2;Landroid/content/Context;Landroid/view/View$OnClickListener;Landroid/widget/RelativeLayout;)V
    .locals 3

    iput-object p1, p0, Lcom/android/camera/features/mimoji2/widget/helper/BubbleEditMimojiPresenter2$BubblePop;->this$0:Lcom/android/camera/features/mimoji2/widget/helper/BubbleEditMimojiPresenter2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 p1, 0x68

    iput p1, p0, Lcom/android/camera/features/mimoji2/widget/helper/BubbleEditMimojiPresenter2$BubblePop;->processState:I

    const/4 p1, 0x3

    new-array v0, p1, [I

    iput-object v0, p0, Lcom/android/camera/features/mimoji2/widget/helper/BubbleEditMimojiPresenter2$BubblePop;->mLocationSelect:[I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/features/mimoji2/widget/helper/BubbleEditMimojiPresenter2$BubblePop;->hasAddView:Z

    iput-object p2, p0, Lcom/android/camera/features/mimoji2/widget/helper/BubbleEditMimojiPresenter2$BubblePop;->mContext:Landroid/content/Context;

    iput-object p4, p0, Lcom/android/camera/features/mimoji2/widget/helper/BubbleEditMimojiPresenter2$BubblePop;->mRootView:Landroid/widget/RelativeLayout;

    new-instance p2, Landroid/widget/ImageView;

    iget-object p4, p0, Lcom/android/camera/features/mimoji2/widget/helper/BubbleEditMimojiPresenter2$BubblePop;->mContext:Landroid/content/Context;

    invoke-direct {p2, p4}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/android/camera/features/mimoji2/widget/helper/BubbleEditMimojiPresenter2$BubblePop;->mIvDeleteFisrt:Landroid/widget/ImageView;

    iget-object p4, p0, Lcom/android/camera/features/mimoji2/widget/helper/BubbleEditMimojiPresenter2$BubblePop;->mContext:Landroid/content/Context;

    const v1, 0x7f0804cd

    invoke-virtual {p4, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p4

    invoke-virtual {p2, p4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object p2, p0, Lcom/android/camera/features/mimoji2/widget/helper/BubbleEditMimojiPresenter2$BubblePop;->mIvDeleteFisrt:Landroid/widget/ImageView;

    const p4, 0x7f0800a5

    invoke-virtual {p2, p4}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    iget-object p2, p0, Lcom/android/camera/features/mimoji2/widget/helper/BubbleEditMimojiPresenter2$BubblePop;->mIvDeleteFisrt:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/camera/features/mimoji2/widget/helper/BubbleEditMimojiPresenter2$BubblePop;->mContext:Landroid/content/Context;

    const v2, 0x7f100378

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object p2, p0, Lcom/android/camera/features/mimoji2/widget/helper/BubbleEditMimojiPresenter2$BubblePop;->mIvDeleteFisrt:Landroid/widget/ImageView;

    const/16 v1, 0xca

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    iget-object p2, p0, Lcom/android/camera/features/mimoji2/widget/helper/BubbleEditMimojiPresenter2$BubblePop;->mIvDeleteFisrt:Landroid/widget/ImageView;

    invoke-virtual {p2, p3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance p2, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/camera/features/mimoji2/widget/helper/BubbleEditMimojiPresenter2$BubblePop;->mContext:Landroid/content/Context;

    invoke-direct {p2, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/android/camera/features/mimoji2/widget/helper/BubbleEditMimojiPresenter2$BubblePop;->mIvEditFirst:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/camera/features/mimoji2/widget/helper/BubbleEditMimojiPresenter2$BubblePop;->mContext:Landroid/content/Context;

    const v2, 0x7f0804ce

    invoke-virtual {v1, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object p2, p0, Lcom/android/camera/features/mimoji2/widget/helper/BubbleEditMimojiPresenter2$BubblePop;->mIvEditFirst:Landroid/widget/ImageView;

    invoke-virtual {p2, p4}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    iget-object p2, p0, Lcom/android/camera/features/mimoji2/widget/helper/BubbleEditMimojiPresenter2$BubblePop;->mIvEditFirst:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/camera/features/mimoji2/widget/helper/BubbleEditMimojiPresenter2$BubblePop;->mContext:Landroid/content/Context;

    const v2, 0x7f10038d

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object p2, p0, Lcom/android/camera/features/mimoji2/widget/helper/BubbleEditMimojiPresenter2$BubblePop;->mIvEditFirst:Landroid/widget/ImageView;

    const/16 v1, 0xc9

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    iget-object p2, p0, Lcom/android/camera/features/mimoji2/widget/helper/BubbleEditMimojiPresenter2$BubblePop;->mIvEditFirst:Landroid/widget/ImageView;

    invoke-virtual {p2, p3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance p2, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/camera/features/mimoji2/widget/helper/BubbleEditMimojiPresenter2$BubblePop;->mContext:Landroid/content/Context;

    invoke-direct {p2, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/android/camera/features/mimoji2/widget/helper/BubbleEditMimojiPresenter2$BubblePop;->mIvEmoticonFirst:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/camera/features/mimoji2/widget/helper/BubbleEditMimojiPresenter2$BubblePop;->mContext:Landroid/content/Context;

    const v2, 0x7f080292

    invoke-virtual {v1, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object p2, p0, Lcom/android/camera/features/mimoji2/widget/helper/BubbleEditMimojiPresenter2$BubblePop;->mIvEmoticonFirst:Landroid/widget/ImageView;

    invoke-virtual {p2, p4}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    iget-object p2, p0, Lcom/android/camera/features/mimoji2/widget/helper/BubbleEditMimojiPresenter2$BubblePop;->mIvEmoticonFirst:Landroid/widget/ImageView;

    iget-object p4, p0, Lcom/android/camera/features/mimoji2/widget/helper/BubbleEditMimojiPresenter2$BubblePop;->mContext:Landroid/content/Context;

    const v1, 0x7f1002a3

    invoke-virtual {p4, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p2, p4}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object p2, p0, Lcom/android/camera/features/mimoji2/widget/helper/BubbleEditMimojiPresenter2$BubblePop;->mIvEmoticonFirst:Landroid/widget/ImageView;

    const/16 p4, 0xcc

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    invoke-virtual {p2, p4}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    iget-object p2, p0, Lcom/android/camera/features/mimoji2/widget/helper/BubbleEditMimojiPresenter2$BubblePop;->mIvEmoticonFirst:Landroid/widget/ImageView;

    invoke-virtual {p2, p3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-array p1, p1, [Landroid/view/View;

    iget-object p2, p0, Lcom/android/camera/features/mimoji2/widget/helper/BubbleEditMimojiPresenter2$BubblePop;->mIvDeleteFisrt:Landroid/widget/ImageView;

    aput-object p2, p1, v0

    iget-object p2, p0, Lcom/android/camera/features/mimoji2/widget/helper/BubbleEditMimojiPresenter2$BubblePop;->mIvEditFirst:Landroid/widget/ImageView;

    const/4 p3, 0x1

    aput-object p2, p1, p3

    iget-object p2, p0, Lcom/android/camera/features/mimoji2/widget/helper/BubbleEditMimojiPresenter2$BubblePop;->mIvEmoticonFirst:Landroid/widget/ImageView;

    const/4 p4, 0x2

    aput-object p2, p1, p4

    invoke-static {p1}, Lcom/android/camera/animation/FolmeUtils;->touchScaleTint([Landroid/view/View;)V

    iget-object p1, p0, Lcom/android/camera/features/mimoji2/widget/helper/BubbleEditMimojiPresenter2$BubblePop;->mLocationSelect:[I

    const/4 p2, -0x1

    aput p2, p1, v0

    aput p2, p1, p3

    iget-object p1, p0, Lcom/android/camera/features/mimoji2/widget/helper/BubbleEditMimojiPresenter2$BubblePop;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f07032a

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iget-object p3, p0, Lcom/android/camera/features/mimoji2/widget/helper/BubbleEditMimojiPresenter2$BubblePop;->mContext:Landroid/content/Context;

    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    invoke-virtual {p3, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    new-instance p3, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {p3, p1, p2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iput-object p3, p0, Lcom/android/camera/features/mimoji2/widget/helper/BubbleEditMimojiPresenter2$BubblePop;->layoutParamsEdit:Landroid/widget/RelativeLayout$LayoutParams;

    new-instance p3, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {p3, p1, p2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iput-object p3, p0, Lcom/android/camera/features/mimoji2/widget/helper/BubbleEditMimojiPresenter2$BubblePop;->layoutParamsDelete:Landroid/widget/RelativeLayout$LayoutParams;

    new-instance p3, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {p3, p1, p2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iput-object p3, p0, Lcom/android/camera/features/mimoji2/widget/helper/BubbleEditMimojiPresenter2$BubblePop;->layoutParamsEmoticon:Landroid/widget/RelativeLayout$LayoutParams;

    return-void
.end method

.method static synthetic access$600(Lcom/android/camera/features/mimoji2/widget/helper/BubbleEditMimojiPresenter2$BubblePop;)Landroid/widget/RelativeLayout$LayoutParams;
    .locals 0

    iget-object p0, p0, Lcom/android/camera/features/mimoji2/widget/helper/BubbleEditMimojiPresenter2$BubblePop;->layoutParamsEdit:Landroid/widget/RelativeLayout$LayoutParams;

    return-object p0
.end method

.method static synthetic access$700(Lcom/android/camera/features/mimoji2/widget/helper/BubbleEditMimojiPresenter2$BubblePop;)Landroid/widget/RelativeLayout$LayoutParams;
    .locals 0

    iget-object p0, p0, Lcom/android/camera/features/mimoji2/widget/helper/BubbleEditMimojiPresenter2$BubblePop;->layoutParamsDelete:Landroid/widget/RelativeLayout$LayoutParams;

    return-object p0
.end method

.method static synthetic access$800(Lcom/android/camera/features/mimoji2/widget/helper/BubbleEditMimojiPresenter2$BubblePop;)Landroid/widget/RelativeLayout$LayoutParams;
    .locals 0

    iget-object p0, p0, Lcom/android/camera/features/mimoji2/widget/helper/BubbleEditMimojiPresenter2$BubblePop;->layoutParamsEmoticon:Landroid/widget/RelativeLayout$LayoutParams;

    return-object p0
.end method


# virtual methods
.method public getProcessState()I
    .locals 0

    iget p0, p0, Lcom/android/camera/features/mimoji2/widget/helper/BubbleEditMimojiPresenter2$BubblePop;->processState:I

    return p0
.end method

.method public hideBubbleAni()V
    .locals 16

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/features/mimoji2/widget/helper/BubbleEditMimojiPresenter2$BubblePop;->mIvDeleteFisrt:Landroid/widget/ImageView;

    if-eqz v1, :cond_3

    iget-object v1, v0, Lcom/android/camera/features/mimoji2/widget/helper/BubbleEditMimojiPresenter2$BubblePop;->mIvEditFirst:Landroid/widget/ImageView;

    if-nez v1, :cond_0

    goto/16 :goto_2

    :cond_0
    const/16 v2, 0x68

    iput v2, v0, Lcom/android/camera/features/mimoji2/widget/helper/BubbleEditMimojiPresenter2$BubblePop;->processState:I

    sget-object v2, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    const/4 v3, 0x2

    new-array v4, v3, [F

    fill-array-data v4, :array_0

    invoke-static {v1, v2, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    iget-object v2, v0, Lcom/android/camera/features/mimoji2/widget/helper/BubbleEditMimojiPresenter2$BubblePop;->mIvEditFirst:Landroid/widget/ImageView;

    sget-object v4, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    new-array v5, v3, [F

    fill-array-data v5, :array_1

    invoke-static {v2, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    iget-object v4, v0, Lcom/android/camera/features/mimoji2/widget/helper/BubbleEditMimojiPresenter2$BubblePop;->mIvEditFirst:Landroid/widget/ImageView;

    sget-object v5, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v6, v3, [F

    fill-array-data v6, :array_2

    invoke-static {v4, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    iget-object v5, v0, Lcom/android/camera/features/mimoji2/widget/helper/BubbleEditMimojiPresenter2$BubblePop;->mIvEditFirst:Landroid/widget/ImageView;

    new-array v6, v3, [F

    const/4 v7, 0x0

    const/4 v8, 0x0

    aput v8, v6, v7

    iget-object v9, v0, Lcom/android/camera/features/mimoji2/widget/helper/BubbleEditMimojiPresenter2$BubblePop;->this$0:Lcom/android/camera/features/mimoji2/widget/helper/BubbleEditMimojiPresenter2;

    invoke-static {v9}, Lcom/android/camera/features/mimoji2/widget/helper/BubbleEditMimojiPresenter2;->access$200(Lcom/android/camera/features/mimoji2/widget/helper/BubbleEditMimojiPresenter2;)Z

    move-result v9

    if-eqz v9, :cond_1

    iget-object v9, v0, Lcom/android/camera/features/mimoji2/widget/helper/BubbleEditMimojiPresenter2$BubblePop;->this$0:Lcom/android/camera/features/mimoji2/widget/helper/BubbleEditMimojiPresenter2;

    invoke-static {v9}, Lcom/android/camera/features/mimoji2/widget/helper/BubbleEditMimojiPresenter2;->access$400(Lcom/android/camera/features/mimoji2/widget/helper/BubbleEditMimojiPresenter2;)D

    move-result-wide v9

    goto :goto_0

    :cond_1
    iget-object v9, v0, Lcom/android/camera/features/mimoji2/widget/helper/BubbleEditMimojiPresenter2$BubblePop;->this$0:Lcom/android/camera/features/mimoji2/widget/helper/BubbleEditMimojiPresenter2;

    invoke-static {v9}, Lcom/android/camera/features/mimoji2/widget/helper/BubbleEditMimojiPresenter2;->access$300(Lcom/android/camera/features/mimoji2/widget/helper/BubbleEditMimojiPresenter2;)D

    move-result-wide v9

    :goto_0
    double-to-float v9, v9

    const/4 v10, 0x1

    aput v9, v6, v10

    const-string v9, "translationX"

    invoke-static {v5, v9, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    iget-object v6, v0, Lcom/android/camera/features/mimoji2/widget/helper/BubbleEditMimojiPresenter2$BubblePop;->mIvEditFirst:Landroid/widget/ImageView;

    new-array v11, v3, [F

    aput v8, v11, v7

    iget-object v12, v0, Lcom/android/camera/features/mimoji2/widget/helper/BubbleEditMimojiPresenter2$BubblePop;->this$0:Lcom/android/camera/features/mimoji2/widget/helper/BubbleEditMimojiPresenter2;

    invoke-static {v12}, Lcom/android/camera/features/mimoji2/widget/helper/BubbleEditMimojiPresenter2;->access$1000(Lcom/android/camera/features/mimoji2/widget/helper/BubbleEditMimojiPresenter2;)I

    move-result v12

    int-to-float v12, v12

    aput v12, v11, v10

    const-string v12, "translationY"

    invoke-static {v6, v12, v11}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    new-instance v11, Landroid/animation/AnimatorSet;

    invoke-direct {v11}, Landroid/animation/AnimatorSet;-><init>()V

    const/4 v13, 0x5

    new-array v14, v13, [Landroid/animation/Animator;

    aput-object v1, v14, v7

    aput-object v2, v14, v10

    aput-object v4, v14, v3

    const/4 v1, 0x3

    aput-object v5, v14, v1

    const/4 v2, 0x4

    aput-object v6, v14, v2

    invoke-virtual {v11, v14}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    const-wide/16 v4, 0x78

    invoke-virtual {v11, v4, v5}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    new-instance v6, Lcom/android/camera/features/mimoji2/widget/helper/BubbleEditMimojiPresenter2$BubblePop$4;

    invoke-direct {v6, v0}, Lcom/android/camera/features/mimoji2/widget/helper/BubbleEditMimojiPresenter2$BubblePop$4;-><init>(Lcom/android/camera/features/mimoji2/widget/helper/BubbleEditMimojiPresenter2$BubblePop;)V

    invoke-virtual {v11, v6}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    new-instance v6, Landroid/animation/AnimatorSet;

    invoke-direct {v6}, Landroid/animation/AnimatorSet;-><init>()V

    iget-object v14, v0, Lcom/android/camera/features/mimoji2/widget/helper/BubbleEditMimojiPresenter2$BubblePop;->mIvDeleteFisrt:Landroid/widget/ImageView;

    sget-object v15, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    new-array v4, v3, [F

    fill-array-data v4, :array_3

    invoke-static {v14, v15, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    iget-object v5, v0, Lcom/android/camera/features/mimoji2/widget/helper/BubbleEditMimojiPresenter2$BubblePop;->mIvDeleteFisrt:Landroid/widget/ImageView;

    sget-object v14, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    new-array v15, v3, [F

    fill-array-data v15, :array_4

    invoke-static {v5, v14, v15}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    iget-object v14, v0, Lcom/android/camera/features/mimoji2/widget/helper/BubbleEditMimojiPresenter2$BubblePop;->mIvDeleteFisrt:Landroid/widget/ImageView;

    sget-object v15, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v2, v3, [F

    fill-array-data v2, :array_5

    invoke-static {v14, v15, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    iget-object v14, v0, Lcom/android/camera/features/mimoji2/widget/helper/BubbleEditMimojiPresenter2$BubblePop;->mIvDeleteFisrt:Landroid/widget/ImageView;

    new-array v15, v3, [F

    aput v8, v15, v7

    iget-object v1, v0, Lcom/android/camera/features/mimoji2/widget/helper/BubbleEditMimojiPresenter2$BubblePop;->this$0:Lcom/android/camera/features/mimoji2/widget/helper/BubbleEditMimojiPresenter2;

    invoke-static {v1}, Lcom/android/camera/features/mimoji2/widget/helper/BubbleEditMimojiPresenter2;->access$200(Lcom/android/camera/features/mimoji2/widget/helper/BubbleEditMimojiPresenter2;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, v0, Lcom/android/camera/features/mimoji2/widget/helper/BubbleEditMimojiPresenter2$BubblePop;->this$0:Lcom/android/camera/features/mimoji2/widget/helper/BubbleEditMimojiPresenter2;

    invoke-static {v1}, Lcom/android/camera/features/mimoji2/widget/helper/BubbleEditMimojiPresenter2;->access$300(Lcom/android/camera/features/mimoji2/widget/helper/BubbleEditMimojiPresenter2;)D

    move-result-wide v7

    goto :goto_1

    :cond_2
    iget-object v1, v0, Lcom/android/camera/features/mimoji2/widget/helper/BubbleEditMimojiPresenter2$BubblePop;->this$0:Lcom/android/camera/features/mimoji2/widget/helper/BubbleEditMimojiPresenter2;

    invoke-static {v1}, Lcom/android/camera/features/mimoji2/widget/helper/BubbleEditMimojiPresenter2;->access$400(Lcom/android/camera/features/mimoji2/widget/helper/BubbleEditMimojiPresenter2;)D

    move-result-wide v7

    :goto_1
    double-to-float v1, v7

    aput v1, v15, v10

    invoke-static {v14, v9, v15}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    iget-object v7, v0, Lcom/android/camera/features/mimoji2/widget/helper/BubbleEditMimojiPresenter2$BubblePop;->mIvDeleteFisrt:Landroid/widget/ImageView;

    new-array v8, v3, [F

    const/4 v9, 0x0

    const/4 v14, 0x0

    aput v9, v8, v14

    iget-object v9, v0, Lcom/android/camera/features/mimoji2/widget/helper/BubbleEditMimojiPresenter2$BubblePop;->this$0:Lcom/android/camera/features/mimoji2/widget/helper/BubbleEditMimojiPresenter2;

    invoke-static {v9}, Lcom/android/camera/features/mimoji2/widget/helper/BubbleEditMimojiPresenter2;->access$1000(Lcom/android/camera/features/mimoji2/widget/helper/BubbleEditMimojiPresenter2;)I

    move-result v9

    int-to-float v9, v9

    aput v9, v8, v10

    invoke-static {v7, v12, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v7

    new-array v8, v13, [Landroid/animation/Animator;

    aput-object v4, v8, v14

    aput-object v5, v8, v10

    aput-object v2, v8, v3

    const/4 v2, 0x3

    aput-object v1, v8, v2

    const/4 v1, 0x4

    aput-object v7, v8, v1

    invoke-virtual {v6, v8}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    const-wide/16 v1, 0x78

    invoke-virtual {v6, v1, v2}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    new-instance v1, Lcom/android/camera/features/mimoji2/widget/helper/BubbleEditMimojiPresenter2$BubblePop$5;

    invoke-direct {v1, v0}, Lcom/android/camera/features/mimoji2/widget/helper/BubbleEditMimojiPresenter2$BubblePop$5;-><init>(Lcom/android/camera/features/mimoji2/widget/helper/BubbleEditMimojiPresenter2$BubblePop;)V

    invoke-virtual {v6, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    iget-object v2, v0, Lcom/android/camera/features/mimoji2/widget/helper/BubbleEditMimojiPresenter2$BubblePop;->mIvEmoticonFirst:Landroid/widget/ImageView;

    sget-object v4, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    new-array v5, v3, [F

    fill-array-data v5, :array_6

    invoke-static {v2, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    iget-object v4, v0, Lcom/android/camera/features/mimoji2/widget/helper/BubbleEditMimojiPresenter2$BubblePop;->mIvEmoticonFirst:Landroid/widget/ImageView;

    sget-object v5, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    new-array v7, v3, [F

    fill-array-data v7, :array_7

    invoke-static {v4, v5, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    iget-object v5, v0, Lcom/android/camera/features/mimoji2/widget/helper/BubbleEditMimojiPresenter2$BubblePop;->mIvEmoticonFirst:Landroid/widget/ImageView;

    sget-object v7, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v8, v3, [F

    fill-array-data v8, :array_8

    invoke-static {v5, v7, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    iget-object v7, v0, Lcom/android/camera/features/mimoji2/widget/helper/BubbleEditMimojiPresenter2$BubblePop;->mIvEmoticonFirst:Landroid/widget/ImageView;

    new-array v8, v3, [F

    const/4 v9, 0x0

    const/4 v13, 0x0

    aput v9, v8, v13

    iget-object v9, v0, Lcom/android/camera/features/mimoji2/widget/helper/BubbleEditMimojiPresenter2$BubblePop;->this$0:Lcom/android/camera/features/mimoji2/widget/helper/BubbleEditMimojiPresenter2;

    invoke-static {v9}, Lcom/android/camera/features/mimoji2/widget/helper/BubbleEditMimojiPresenter2;->access$1000(Lcom/android/camera/features/mimoji2/widget/helper/BubbleEditMimojiPresenter2;)I

    move-result v9

    int-to-float v9, v9

    aput v9, v8, v10

    invoke-static {v7, v12, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v7

    const/4 v8, 0x4

    new-array v8, v8, [Landroid/animation/Animator;

    aput-object v2, v8, v13

    aput-object v4, v8, v10

    aput-object v5, v8, v3

    const/4 v2, 0x3

    aput-object v7, v8, v2

    invoke-virtual {v1, v8}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    const-wide/16 v2, 0x78

    invoke-virtual {v1, v2, v3}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    new-instance v2, Lcom/android/camera/features/mimoji2/widget/helper/BubbleEditMimojiPresenter2$BubblePop$6;

    invoke-direct {v2, v0}, Lcom/android/camera/features/mimoji2/widget/helper/BubbleEditMimojiPresenter2$BubblePop$6;-><init>(Lcom/android/camera/features/mimoji2/widget/helper/BubbleEditMimojiPresenter2$BubblePop;)V

    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v11}, Landroid/animation/AnimatorSet;->start()V

    invoke-virtual {v6}, Landroid/animation/AnimatorSet;->start()V

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->start()V

    :cond_3
    :goto_2
    return-void

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    :array_2
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    :array_3
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    :array_4
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    :array_5
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    :array_6
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    :array_7
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    :array_8
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method public processBubbleAni(III)V
    .locals 1

    iput p3, p0, Lcom/android/camera/features/mimoji2/widget/helper/BubbleEditMimojiPresenter2$BubblePop;->mHashCode:I

    iget-boolean p3, p0, Lcom/android/camera/features/mimoji2/widget/helper/BubbleEditMimojiPresenter2$BubblePop;->hasAddView:Z

    if-nez p3, :cond_0

    iget-object p3, p0, Lcom/android/camera/features/mimoji2/widget/helper/BubbleEditMimojiPresenter2$BubblePop;->mRootView:Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lcom/android/camera/features/mimoji2/widget/helper/BubbleEditMimojiPresenter2$BubblePop;->mIvEditFirst:Landroid/widget/ImageView;

    invoke-virtual {p3, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    iget-object p3, p0, Lcom/android/camera/features/mimoji2/widget/helper/BubbleEditMimojiPresenter2$BubblePop;->mRootView:Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lcom/android/camera/features/mimoji2/widget/helper/BubbleEditMimojiPresenter2$BubblePop;->mIvDeleteFisrt:Landroid/widget/ImageView;

    invoke-virtual {p3, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    iget-object p3, p0, Lcom/android/camera/features/mimoji2/widget/helper/BubbleEditMimojiPresenter2$BubblePop;->mRootView:Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lcom/android/camera/features/mimoji2/widget/helper/BubbleEditMimojiPresenter2$BubblePop;->mIvEmoticonFirst:Landroid/widget/ImageView;

    invoke-virtual {p3, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    const/4 p3, 0x1

    iput-boolean p3, p0, Lcom/android/camera/features/mimoji2/widget/helper/BubbleEditMimojiPresenter2$BubblePop;->hasAddView:Z

    :cond_0
    iget-object p3, p0, Lcom/android/camera/features/mimoji2/widget/helper/BubbleEditMimojiPresenter2$BubblePop;->this$0:Lcom/android/camera/features/mimoji2/widget/helper/BubbleEditMimojiPresenter2;

    invoke-static {p3}, Lcom/android/camera/features/mimoji2/widget/helper/BubbleEditMimojiPresenter2;->access$000(Lcom/android/camera/features/mimoji2/widget/helper/BubbleEditMimojiPresenter2;)Z

    move-result p3

    if-nez p3, :cond_3

    iget-object p3, p0, Lcom/android/camera/features/mimoji2/widget/helper/BubbleEditMimojiPresenter2$BubblePop;->this$0:Lcom/android/camera/features/mimoji2/widget/helper/BubbleEditMimojiPresenter2;

    invoke-static {p3}, Lcom/android/camera/features/mimoji2/widget/helper/BubbleEditMimojiPresenter2;->access$100(Lcom/android/camera/features/mimoji2/widget/helper/BubbleEditMimojiPresenter2;)Z

    move-result p3

    if-eqz p3, :cond_1

    goto :goto_0

    :cond_1
    iget-object p3, p0, Lcom/android/camera/features/mimoji2/widget/helper/BubbleEditMimojiPresenter2$BubblePop;->mLocationSelect:[I

    const/4 v0, 0x2

    aget p3, p3, v0

    if-lez p3, :cond_2

    invoke-virtual {p0}, Lcom/android/camera/features/mimoji2/widget/helper/BubbleEditMimojiPresenter2$BubblePop;->hideBubbleAni()V

    goto :goto_0

    :cond_2
    iget-object p3, p0, Lcom/android/camera/features/mimoji2/widget/helper/BubbleEditMimojiPresenter2$BubblePop;->this$0:Lcom/android/camera/features/mimoji2/widget/helper/BubbleEditMimojiPresenter2;

    iget v0, p0, Lcom/android/camera/features/mimoji2/widget/helper/BubbleEditMimojiPresenter2$BubblePop;->mHashCode:I

    invoke-virtual {p3, v0}, Lcom/android/camera/features/mimoji2/widget/helper/BubbleEditMimojiPresenter2;->setmHashCodeBubble(I)V

    invoke-virtual {p0, p1, p2}, Lcom/android/camera/features/mimoji2/widget/helper/BubbleEditMimojiPresenter2$BubblePop;->showBubbleAni(II)V

    :cond_3
    :goto_0
    return-void
.end method

.method public showBubbleAni(II)V
    .locals 18

    move-object/from16 v0, p0

    move/from16 v1, p2

    const/16 v2, 0x67

    iput v2, v0, Lcom/android/camera/features/mimoji2/widget/helper/BubbleEditMimojiPresenter2$BubblePop;->processState:I

    move/from16 v2, p1

    rsub-int v3, v2, 0x438

    iget-object v4, v0, Lcom/android/camera/features/mimoji2/widget/helper/BubbleEditMimojiPresenter2$BubblePop;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f07033d

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    const/4 v6, 0x3

    mul-int/2addr v4, v6

    if-ge v3, v4, :cond_0

    iget-object v2, v0, Lcom/android/camera/features/mimoji2/widget/helper/BubbleEditMimojiPresenter2$BubblePop;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    mul-int/2addr v2, v6

    rsub-int v2, v2, 0x438

    :cond_0
    iget-object v3, v0, Lcom/android/camera/features/mimoji2/widget/helper/BubbleEditMimojiPresenter2$BubblePop;->mLocationSelect:[I

    const/4 v4, 0x0

    aput v2, v3, v4

    const/4 v5, 0x1

    aput v1, v3, v5

    iget-object v3, v0, Lcom/android/camera/features/mimoji2/widget/helper/BubbleEditMimojiPresenter2$BubblePop;->mIvEditFirst:Landroid/widget/ImageView;

    sget-object v7, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    const/4 v8, 0x2

    new-array v9, v8, [F

    fill-array-data v9, :array_0

    invoke-static {v3, v7, v9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    iget-object v7, v0, Lcom/android/camera/features/mimoji2/widget/helper/BubbleEditMimojiPresenter2$BubblePop;->mIvEditFirst:Landroid/widget/ImageView;

    sget-object v9, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    new-array v10, v8, [F

    fill-array-data v10, :array_1

    invoke-static {v7, v9, v10}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v7

    iget-object v9, v0, Lcom/android/camera/features/mimoji2/widget/helper/BubbleEditMimojiPresenter2$BubblePop;->mIvEditFirst:Landroid/widget/ImageView;

    sget-object v10, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v11, v8, [F

    fill-array-data v11, :array_2

    invoke-static {v9, v10, v11}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v9

    iget-object v10, v0, Lcom/android/camera/features/mimoji2/widget/helper/BubbleEditMimojiPresenter2$BubblePop;->mIvEditFirst:Landroid/widget/ImageView;

    new-array v11, v8, [F

    const/4 v12, 0x0

    aput v12, v11, v4

    iget-object v13, v0, Lcom/android/camera/features/mimoji2/widget/helper/BubbleEditMimojiPresenter2$BubblePop;->this$0:Lcom/android/camera/features/mimoji2/widget/helper/BubbleEditMimojiPresenter2;

    invoke-static {v13}, Lcom/android/camera/features/mimoji2/widget/helper/BubbleEditMimojiPresenter2;->access$200(Lcom/android/camera/features/mimoji2/widget/helper/BubbleEditMimojiPresenter2;)Z

    move-result v13

    if-eqz v13, :cond_1

    iget-object v13, v0, Lcom/android/camera/features/mimoji2/widget/helper/BubbleEditMimojiPresenter2$BubblePop;->this$0:Lcom/android/camera/features/mimoji2/widget/helper/BubbleEditMimojiPresenter2;

    invoke-static {v13}, Lcom/android/camera/features/mimoji2/widget/helper/BubbleEditMimojiPresenter2;->access$300(Lcom/android/camera/features/mimoji2/widget/helper/BubbleEditMimojiPresenter2;)D

    move-result-wide v13

    goto :goto_0

    :cond_1
    iget-object v13, v0, Lcom/android/camera/features/mimoji2/widget/helper/BubbleEditMimojiPresenter2$BubblePop;->this$0:Lcom/android/camera/features/mimoji2/widget/helper/BubbleEditMimojiPresenter2;

    invoke-static {v13}, Lcom/android/camera/features/mimoji2/widget/helper/BubbleEditMimojiPresenter2;->access$400(Lcom/android/camera/features/mimoji2/widget/helper/BubbleEditMimojiPresenter2;)D

    move-result-wide v13

    :goto_0
    double-to-float v13, v13

    aput v13, v11, v5

    const-string v13, "translationX"

    invoke-static {v10, v13, v11}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v10

    iget-object v11, v0, Lcom/android/camera/features/mimoji2/widget/helper/BubbleEditMimojiPresenter2$BubblePop;->mIvEditFirst:Landroid/widget/ImageView;

    new-array v14, v8, [F

    aput v12, v14, v4

    iget-object v15, v0, Lcom/android/camera/features/mimoji2/widget/helper/BubbleEditMimojiPresenter2$BubblePop;->this$0:Lcom/android/camera/features/mimoji2/widget/helper/BubbleEditMimojiPresenter2;

    invoke-static {v15}, Lcom/android/camera/features/mimoji2/widget/helper/BubbleEditMimojiPresenter2;->access$500(Lcom/android/camera/features/mimoji2/widget/helper/BubbleEditMimojiPresenter2;)I

    move-result v15

    int-to-float v15, v15

    aput v15, v14, v5

    const-string v15, "translationY"

    invoke-static {v11, v15, v14}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v11

    new-instance v14, Landroid/animation/AnimatorSet;

    invoke-direct {v14}, Landroid/animation/AnimatorSet;-><init>()V

    const/4 v12, 0x5

    new-array v6, v12, [Landroid/animation/Animator;

    aput-object v3, v6, v4

    aput-object v7, v6, v5

    aput-object v9, v6, v8

    const/4 v3, 0x3

    aput-object v10, v6, v3

    const/4 v3, 0x4

    aput-object v11, v6, v3

    invoke-virtual {v14, v6}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    const-wide/16 v6, 0xc8

    invoke-virtual {v14, v6, v7}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    new-instance v9, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v9}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v14, v9}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v9, Lcom/android/camera/features/mimoji2/widget/helper/BubbleEditMimojiPresenter2$BubblePop$1;

    invoke-direct {v9, v0, v1, v2}, Lcom/android/camera/features/mimoji2/widget/helper/BubbleEditMimojiPresenter2$BubblePop$1;-><init>(Lcom/android/camera/features/mimoji2/widget/helper/BubbleEditMimojiPresenter2$BubblePop;II)V

    invoke-virtual {v14, v9}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    new-instance v9, Landroid/animation/AnimatorSet;

    invoke-direct {v9}, Landroid/animation/AnimatorSet;-><init>()V

    iget-object v10, v0, Lcom/android/camera/features/mimoji2/widget/helper/BubbleEditMimojiPresenter2$BubblePop;->mIvDeleteFisrt:Landroid/widget/ImageView;

    sget-object v11, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    new-array v6, v8, [F

    fill-array-data v6, :array_3

    invoke-static {v10, v11, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    iget-object v7, v0, Lcom/android/camera/features/mimoji2/widget/helper/BubbleEditMimojiPresenter2$BubblePop;->mIvDeleteFisrt:Landroid/widget/ImageView;

    sget-object v10, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    new-array v11, v8, [F

    fill-array-data v11, :array_4

    invoke-static {v7, v10, v11}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v7

    iget-object v10, v0, Lcom/android/camera/features/mimoji2/widget/helper/BubbleEditMimojiPresenter2$BubblePop;->mIvDeleteFisrt:Landroid/widget/ImageView;

    sget-object v11, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v3, v8, [F

    fill-array-data v3, :array_5

    invoke-static {v10, v11, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    iget-object v10, v0, Lcom/android/camera/features/mimoji2/widget/helper/BubbleEditMimojiPresenter2$BubblePop;->mIvDeleteFisrt:Landroid/widget/ImageView;

    new-array v11, v8, [F

    const/16 v16, 0x0

    aput v16, v11, v4

    iget-object v12, v0, Lcom/android/camera/features/mimoji2/widget/helper/BubbleEditMimojiPresenter2$BubblePop;->this$0:Lcom/android/camera/features/mimoji2/widget/helper/BubbleEditMimojiPresenter2;

    invoke-static {v12}, Lcom/android/camera/features/mimoji2/widget/helper/BubbleEditMimojiPresenter2;->access$200(Lcom/android/camera/features/mimoji2/widget/helper/BubbleEditMimojiPresenter2;)Z

    move-result v12

    if-eqz v12, :cond_2

    iget-object v12, v0, Lcom/android/camera/features/mimoji2/widget/helper/BubbleEditMimojiPresenter2$BubblePop;->this$0:Lcom/android/camera/features/mimoji2/widget/helper/BubbleEditMimojiPresenter2;

    move-object/from16 v17, v9

    invoke-static {v12}, Lcom/android/camera/features/mimoji2/widget/helper/BubbleEditMimojiPresenter2;->access$400(Lcom/android/camera/features/mimoji2/widget/helper/BubbleEditMimojiPresenter2;)D

    move-result-wide v8

    goto :goto_1

    :cond_2
    move-object/from16 v17, v9

    iget-object v8, v0, Lcom/android/camera/features/mimoji2/widget/helper/BubbleEditMimojiPresenter2$BubblePop;->this$0:Lcom/android/camera/features/mimoji2/widget/helper/BubbleEditMimojiPresenter2;

    invoke-static {v8}, Lcom/android/camera/features/mimoji2/widget/helper/BubbleEditMimojiPresenter2;->access$300(Lcom/android/camera/features/mimoji2/widget/helper/BubbleEditMimojiPresenter2;)D

    move-result-wide v8

    :goto_1
    double-to-float v8, v8

    aput v8, v11, v5

    invoke-static {v10, v13, v11}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v8

    iget-object v9, v0, Lcom/android/camera/features/mimoji2/widget/helper/BubbleEditMimojiPresenter2$BubblePop;->mIvDeleteFisrt:Landroid/widget/ImageView;

    const/4 v10, 0x2

    new-array v11, v10, [F

    const/4 v12, 0x0

    aput v12, v11, v4

    iget-object v12, v0, Lcom/android/camera/features/mimoji2/widget/helper/BubbleEditMimojiPresenter2$BubblePop;->this$0:Lcom/android/camera/features/mimoji2/widget/helper/BubbleEditMimojiPresenter2;

    invoke-static {v12}, Lcom/android/camera/features/mimoji2/widget/helper/BubbleEditMimojiPresenter2;->access$500(Lcom/android/camera/features/mimoji2/widget/helper/BubbleEditMimojiPresenter2;)I

    move-result v12

    int-to-float v12, v12

    aput v12, v11, v5

    invoke-static {v9, v15, v11}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v9

    const/4 v11, 0x5

    new-array v11, v11, [Landroid/animation/Animator;

    aput-object v6, v11, v4

    aput-object v7, v11, v5

    aput-object v3, v11, v10

    const/4 v3, 0x3

    aput-object v8, v11, v3

    const/4 v3, 0x4

    aput-object v9, v11, v3

    move-object/from16 v3, v17

    invoke-virtual {v3, v11}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    const-wide/16 v6, 0xc8

    invoke-virtual {v3, v6, v7}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    new-instance v6, Lcom/android/camera/features/mimoji2/widget/helper/BubbleEditMimojiPresenter2$BubblePop$2;

    invoke-direct {v6, v0, v1, v2}, Lcom/android/camera/features/mimoji2/widget/helper/BubbleEditMimojiPresenter2$BubblePop$2;-><init>(Lcom/android/camera/features/mimoji2/widget/helper/BubbleEditMimojiPresenter2$BubblePop;II)V

    invoke-virtual {v3, v6}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    new-instance v6, Landroid/animation/AnimatorSet;

    invoke-direct {v6}, Landroid/animation/AnimatorSet;-><init>()V

    iget-object v7, v0, Lcom/android/camera/features/mimoji2/widget/helper/BubbleEditMimojiPresenter2$BubblePop;->mIvEmoticonFirst:Landroid/widget/ImageView;

    sget-object v8, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    const/4 v9, 0x2

    new-array v10, v9, [F

    fill-array-data v10, :array_6

    invoke-static {v7, v8, v10}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v7

    iget-object v8, v0, Lcom/android/camera/features/mimoji2/widget/helper/BubbleEditMimojiPresenter2$BubblePop;->mIvEmoticonFirst:Landroid/widget/ImageView;

    sget-object v10, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    new-array v11, v9, [F

    fill-array-data v11, :array_7

    invoke-static {v8, v10, v11}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v8

    iget-object v10, v0, Lcom/android/camera/features/mimoji2/widget/helper/BubbleEditMimojiPresenter2$BubblePop;->mIvEmoticonFirst:Landroid/widget/ImageView;

    sget-object v11, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v12, v9, [F

    fill-array-data v12, :array_8

    invoke-static {v10, v11, v12}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v10

    iget-object v11, v0, Lcom/android/camera/features/mimoji2/widget/helper/BubbleEditMimojiPresenter2$BubblePop;->mIvEmoticonFirst:Landroid/widget/ImageView;

    new-array v12, v9, [F

    const/4 v13, 0x0

    aput v13, v12, v4

    iget-object v13, v0, Lcom/android/camera/features/mimoji2/widget/helper/BubbleEditMimojiPresenter2$BubblePop;->this$0:Lcom/android/camera/features/mimoji2/widget/helper/BubbleEditMimojiPresenter2;

    invoke-static {v13}, Lcom/android/camera/features/mimoji2/widget/helper/BubbleEditMimojiPresenter2;->access$500(Lcom/android/camera/features/mimoji2/widget/helper/BubbleEditMimojiPresenter2;)I

    move-result v13

    int-to-float v13, v13

    aput v13, v12, v5

    invoke-static {v11, v15, v12}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v11

    const/4 v12, 0x4

    new-array v12, v12, [Landroid/animation/Animator;

    aput-object v7, v12, v4

    aput-object v8, v12, v5

    aput-object v10, v12, v9

    const/4 v4, 0x3

    aput-object v11, v12, v4

    invoke-virtual {v6, v12}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    const-wide/16 v4, 0xc8

    invoke-virtual {v6, v4, v5}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    new-instance v4, Lcom/android/camera/features/mimoji2/widget/helper/BubbleEditMimojiPresenter2$BubblePop$3;

    invoke-direct {v4, v0, v1, v2}, Lcom/android/camera/features/mimoji2/widget/helper/BubbleEditMimojiPresenter2$BubblePop$3;-><init>(Lcom/android/camera/features/mimoji2/widget/helper/BubbleEditMimojiPresenter2$BubblePop;II)V

    invoke-virtual {v6, v4}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v14}, Landroid/animation/AnimatorSet;->start()V

    invoke-virtual {v3}, Landroid/animation/AnimatorSet;->start()V

    invoke-virtual {v6}, Landroid/animation/AnimatorSet;->start()V

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_2
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_3
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_4
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_5
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_6
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_7
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_8
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method
