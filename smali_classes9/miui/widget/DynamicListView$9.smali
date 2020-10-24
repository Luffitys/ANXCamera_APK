.class Lmiui/widget/DynamicListView$9;
.super Landroid/animation/AnimatorListenerAdapter;
.source ""


# instance fields
.field final synthetic this$0:Lmiui/widget/DynamicListView;


# direct methods
.method constructor <init>(Lmiui/widget/DynamicListView;)V
    .locals 0

    iput-object p1, p0, Lmiui/widget/DynamicListView$9;->this$0:Lmiui/widget/DynamicListView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    iget-object p1, p0, Lmiui/widget/DynamicListView$9;->this$0:Lmiui/widget/DynamicListView;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lmiui/widget/DynamicListView;->access$2002(Lmiui/widget/DynamicListView;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    iget-object p0, p0, Lmiui/widget/DynamicListView$9;->this$0:Lmiui/widget/DynamicListView;

    invoke-static {p0}, Lmiui/widget/DynamicListView;->access$2100(Lmiui/widget/DynamicListView;)Landroid/graphics/Paint;

    move-result-object p0

    const/16 p1, 0xff

    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    return-void
.end method
