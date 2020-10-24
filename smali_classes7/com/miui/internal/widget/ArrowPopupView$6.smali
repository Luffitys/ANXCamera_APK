.class Lcom/miui/internal/widget/ArrowPopupView$6;
.super Landroid/animation/AnimatorListenerAdapter;
.source ""


# instance fields
.field final synthetic this$0:Lcom/miui/internal/widget/ArrowPopupView;


# direct methods
.method constructor <init>(Lcom/miui/internal/widget/ArrowPopupView;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/internal/widget/ArrowPopupView$6;->this$0:Lcom/miui/internal/widget/ArrowPopupView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    iget-object p0, p0, Lcom/miui/internal/widget/ArrowPopupView$6;->this$0:Lcom/miui/internal/widget/ArrowPopupView;

    invoke-static {p0}, Lcom/miui/internal/widget/ArrowPopupView;->access$400(Lcom/miui/internal/widget/ArrowPopupView;)Lmiui/widget/ArrowPopupWindow;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/PopupWindow;->dismiss()V

    return-void
.end method
