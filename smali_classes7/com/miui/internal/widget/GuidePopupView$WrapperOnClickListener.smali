.class Lcom/miui/internal/widget/GuidePopupView$WrapperOnClickListener;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public mOnClickListener:Landroid/view/View$OnClickListener;

.field final synthetic this$0:Lcom/miui/internal/widget/GuidePopupView;


# direct methods
.method constructor <init>(Lcom/miui/internal/widget/GuidePopupView;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/internal/widget/GuidePopupView$WrapperOnClickListener;->this$0:Lcom/miui/internal/widget/GuidePopupView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/internal/widget/GuidePopupView$WrapperOnClickListener;->mOnClickListener:Landroid/view/View$OnClickListener;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    :cond_0
    iget-object p0, p0, Lcom/miui/internal/widget/GuidePopupView$WrapperOnClickListener;->this$0:Lcom/miui/internal/widget/GuidePopupView;

    invoke-static {p0}, Lcom/miui/internal/widget/GuidePopupView;->access$200(Lcom/miui/internal/widget/GuidePopupView;)Lmiui/widget/GuidePopupWindow;

    move-result-object p0

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lmiui/widget/ArrowPopupWindow;->dismiss(Z)V

    return-void
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/internal/widget/GuidePopupView$WrapperOnClickListener;->mOnClickListener:Landroid/view/View$OnClickListener;

    return-void
.end method
