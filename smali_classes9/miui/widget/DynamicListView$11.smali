.class Lmiui/widget/DynamicListView$11;
.super Landroid/animation/AnimatorListenerAdapter;
.source ""


# instance fields
.field final synthetic this$0:Lmiui/widget/DynamicListView;

.field final synthetic val$idsToRemove:Ljava/util/List;

.field final synthetic val$positions:Ljava/util/List;


# direct methods
.method constructor <init>(Lmiui/widget/DynamicListView;Ljava/util/List;Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lmiui/widget/DynamicListView$11;->this$0:Lmiui/widget/DynamicListView;

    iput-object p2, p0, Lmiui/widget/DynamicListView$11;->val$idsToRemove:Ljava/util/List;

    iput-object p3, p0, Lmiui/widget/DynamicListView$11;->val$positions:Ljava/util/List;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    iget-object p1, p0, Lmiui/widget/DynamicListView$11;->this$0:Lmiui/widget/DynamicListView;

    iget-object v0, p0, Lmiui/widget/DynamicListView$11;->val$idsToRemove:Ljava/util/List;

    iget-object p0, p0, Lmiui/widget/DynamicListView$11;->val$positions:Ljava/util/List;

    invoke-static {p1, v0, p0}, Lmiui/widget/DynamicListView;->access$2200(Lmiui/widget/DynamicListView;Ljava/util/List;Ljava/util/List;)V

    return-void
.end method
