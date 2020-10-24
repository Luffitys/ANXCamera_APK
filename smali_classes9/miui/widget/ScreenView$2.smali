.class Lmiui/widget/ScreenView$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source ""


# instance fields
.field final synthetic this$0:Lmiui/widget/ScreenView;


# direct methods
.method constructor <init>(Lmiui/widget/ScreenView;)V
    .locals 0

    iput-object p1, p0, Lmiui/widget/ScreenView$2;->this$0:Lmiui/widget/ScreenView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    iget-object p0, p0, Lmiui/widget/ScreenView$2;->this$0:Lmiui/widget/ScreenView;

    invoke-static {p0}, Lmiui/widget/ScreenView;->access$500(Lmiui/widget/ScreenView;)Lmiui/widget/ScreenView$SlideBar;

    move-result-object p0

    const/4 p1, 0x4

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    return-void
.end method
