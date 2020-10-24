.class Lcom/miui/internal/widget/ScrollingTabTextView$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source ""


# instance fields
.field final synthetic this$0:Lcom/miui/internal/widget/ScrollingTabTextView;


# direct methods
.method constructor <init>(Lcom/miui/internal/widget/ScrollingTabTextView;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/internal/widget/ScrollingTabTextView$2;->this$0:Lcom/miui/internal/widget/ScrollingTabTextView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    iget-object p0, p0, Lcom/miui/internal/widget/ScrollingTabTextView$2;->this$0:Lcom/miui/internal/widget/ScrollingTabTextView;

    invoke-virtual {p0}, Landroid/widget/TextView;->getWidth()I

    move-result p1

    invoke-static {p0, p1}, Lcom/miui/internal/widget/ScrollingTabTextView;->access$002(Lcom/miui/internal/widget/ScrollingTabTextView;I)I

    return-void
.end method
