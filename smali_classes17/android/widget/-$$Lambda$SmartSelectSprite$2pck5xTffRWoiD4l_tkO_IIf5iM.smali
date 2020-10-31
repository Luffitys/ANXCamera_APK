.class public final synthetic Landroid/widget/-$$Lambda$SmartSelectSprite$2pck5xTffRWoiD4l_tkO_IIf5iM;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic f$0:Landroid/widget/SmartSelectSprite;


# direct methods
.method public synthetic constructor <init>(Landroid/widget/SmartSelectSprite;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/widget/-$$Lambda$SmartSelectSprite$2pck5xTffRWoiD4l_tkO_IIf5iM;->f$0:Landroid/widget/SmartSelectSprite;

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .registers 3

    iget-object v0, p0, Landroid/widget/-$$Lambda$SmartSelectSprite$2pck5xTffRWoiD4l_tkO_IIf5iM;->f$0:Landroid/widget/SmartSelectSprite;

    invoke-virtual {v0, p1}, Landroid/widget/SmartSelectSprite;->lambda$startAnimation$2$SmartSelectSprite(Landroid/animation/ValueAnimator;)V

    return-void
.end method
