.class Landroid/transition/ChangeBounds$8;
.super Landroid/animation/AnimatorListenerAdapter;
.source "ChangeBounds.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/transition/ChangeBounds;->createAnimator(Landroid/view/ViewGroup;Landroid/transition/TransitionValues;Landroid/transition/TransitionValues;)Landroid/animation/Animator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mViewBounds:Landroid/transition/ChangeBounds$ViewBounds;

.field final synthetic this$0:Landroid/transition/ChangeBounds;

.field final synthetic val$viewBounds:Landroid/transition/ChangeBounds$ViewBounds;


# direct methods
.method constructor <init>(Landroid/transition/ChangeBounds;Landroid/transition/ChangeBounds$ViewBounds;)V
    .registers 3

    iput-object p1, p0, Landroid/transition/ChangeBounds$8;->this$0:Landroid/transition/ChangeBounds;

    iput-object p2, p0, Landroid/transition/ChangeBounds$8;->val$viewBounds:Landroid/transition/ChangeBounds$ViewBounds;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    iget-object p2, p0, Landroid/transition/ChangeBounds$8;->val$viewBounds:Landroid/transition/ChangeBounds$ViewBounds;

    iput-object p2, p0, Landroid/transition/ChangeBounds$8;->mViewBounds:Landroid/transition/ChangeBounds$ViewBounds;

    return-void
.end method
