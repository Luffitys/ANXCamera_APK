.class public Lmiui/widget/DropDownImageView;
.super Landroid/widget/ImageView;
.source "DropDownImageView.java"


# instance fields
.field private mAnimCollapse:Landroid/animation/AnimatorSet;

.field private mAnimExpand:Landroid/animation/AnimatorSet;

.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lmiui/widget/DropDownImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lmiui/widget/DropDownImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5

    sget v0, Lcom/miui/internal/R$attr;->dropdownImageViewStyle:I

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, 0x0

    iput-object v0, p0, Lmiui/widget/DropDownImageView;->mAnimExpand:Landroid/animation/AnimatorSet;

    iput-object v0, p0, Lmiui/widget/DropDownImageView;->mAnimCollapse:Landroid/animation/AnimatorSet;

    iput-object p1, p0, Lmiui/widget/DropDownImageView;->mContext:Landroid/content/Context;

    invoke-direct {p0}, Lmiui/widget/DropDownImageView;->setupAnimations()V

    return-void
.end method

.method private setupAnimations()V
    .registers 8

    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lmiui/widget/DropDownImageView;->mAnimCollapse:Landroid/animation/AnimatorSet;

    const-wide/16 v1, 0x96

    invoke-virtual {v0, v1, v2}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    const/4 v0, 0x2

    new-array v3, v0, [F

    fill-array-data v3, :array_72

    const-string v4, "rotationX"

    invoke-static {p0, v4, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    new-instance v5, Lmiui/widget/DropDownImageView$1;

    invoke-direct {v5, p0}, Lmiui/widget/DropDownImageView$1;-><init>(Lmiui/widget/DropDownImageView;)V

    invoke-virtual {v3, v5}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    new-array v5, v0, [F

    fill-array-data v5, :array_7a

    invoke-static {p0, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    new-instance v6, Lmiui/widget/DropDownImageView$2;

    invoke-direct {v6, p0}, Lmiui/widget/DropDownImageView$2;-><init>(Lmiui/widget/DropDownImageView;)V

    invoke-virtual {v5, v6}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v6, p0, Lmiui/widget/DropDownImageView;->mAnimCollapse:Landroid/animation/AnimatorSet;

    invoke-virtual {v6, v3}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroid/animation/AnimatorSet$Builder;->before(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    iget-object v6, p0, Lmiui/widget/DropDownImageView;->mAnimCollapse:Landroid/animation/AnimatorSet;

    invoke-virtual {v6, v1, v2}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v1, p0, Lmiui/widget/DropDownImageView;->mAnimExpand:Landroid/animation/AnimatorSet;

    new-array v1, v0, [F

    fill-array-data v1, :array_82

    invoke-static {p0, v4, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    new-instance v2, Lmiui/widget/DropDownImageView$3;

    invoke-direct {v2, p0}, Lmiui/widget/DropDownImageView$3;-><init>(Lmiui/widget/DropDownImageView;)V

    invoke-virtual {v1, v2}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    new-array v0, v0, [F

    fill-array-data v0, :array_8a

    invoke-static {p0, v4, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    new-instance v2, Lmiui/widget/DropDownImageView$4;

    invoke-direct {v2, p0}, Lmiui/widget/DropDownImageView$4;-><init>(Lmiui/widget/DropDownImageView;)V

    invoke-virtual {v0, v2}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v2, p0, Lmiui/widget/DropDownImageView;->mAnimExpand:Landroid/animation/AnimatorSet;

    invoke-virtual {v2, v1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/animation/AnimatorSet$Builder;->before(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    return-void

    :array_72
    .array-data 4
        0x0
        -0x3d4c0000    # -90.0f
    .end array-data

    :array_7a
    .array-data 4
        0x42b40000    # 90.0f
        0x0
    .end array-data

    :array_82
    .array-data 4
        0x0
        0x42b40000    # 90.0f
    .end array-data

    :array_8a
    .array-data 4
        -0x3d4c0000    # -90.0f
        0x0
    .end array-data
.end method


# virtual methods
.method public collapse()V
    .registers 2

    iget-object v0, p0, Lmiui/widget/DropDownImageView;->mAnimExpand:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    iget-object v0, p0, Lmiui/widget/DropDownImageView;->mAnimCollapse:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method

.method public expand()V
    .registers 2

    iget-object v0, p0, Lmiui/widget/DropDownImageView;->mAnimCollapse:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    iget-object v0, p0, Lmiui/widget/DropDownImageView;->mAnimExpand:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method
