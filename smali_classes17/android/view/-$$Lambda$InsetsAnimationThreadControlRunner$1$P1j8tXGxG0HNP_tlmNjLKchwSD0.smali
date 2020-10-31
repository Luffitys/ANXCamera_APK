.class public final synthetic Landroid/view/-$$Lambda$InsetsAnimationThreadControlRunner$1$P1j8tXGxG0HNP_tlmNjLKchwSD0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/view/InsetsAnimationThreadControlRunner$1;

.field public final synthetic f$1:I

.field public final synthetic f$2:Z


# direct methods
.method public synthetic constructor <init>(Landroid/view/InsetsAnimationThreadControlRunner$1;IZ)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/view/-$$Lambda$InsetsAnimationThreadControlRunner$1$P1j8tXGxG0HNP_tlmNjLKchwSD0;->f$0:Landroid/view/InsetsAnimationThreadControlRunner$1;

    iput p2, p0, Landroid/view/-$$Lambda$InsetsAnimationThreadControlRunner$1$P1j8tXGxG0HNP_tlmNjLKchwSD0;->f$1:I

    iput-boolean p3, p0, Landroid/view/-$$Lambda$InsetsAnimationThreadControlRunner$1$P1j8tXGxG0HNP_tlmNjLKchwSD0;->f$2:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    iget-object v0, p0, Landroid/view/-$$Lambda$InsetsAnimationThreadControlRunner$1$P1j8tXGxG0HNP_tlmNjLKchwSD0;->f$0:Landroid/view/InsetsAnimationThreadControlRunner$1;

    iget v1, p0, Landroid/view/-$$Lambda$InsetsAnimationThreadControlRunner$1$P1j8tXGxG0HNP_tlmNjLKchwSD0;->f$1:I

    iget-boolean v2, p0, Landroid/view/-$$Lambda$InsetsAnimationThreadControlRunner$1$P1j8tXGxG0HNP_tlmNjLKchwSD0;->f$2:Z

    invoke-virtual {v0, v1, v2}, Landroid/view/InsetsAnimationThreadControlRunner$1;->lambda$reportPerceptible$1$InsetsAnimationThreadControlRunner$1(IZ)V

    return-void
.end method
