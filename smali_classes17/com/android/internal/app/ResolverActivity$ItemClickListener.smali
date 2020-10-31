.class public Lcom/android/internal/app/ResolverActivity$ItemClickListener;
.super Ljava/lang/Object;
.source "ResolverActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Landroid/widget/AdapterView$OnItemLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/ResolverActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ItemClickListener"
.end annotation


# instance fields
.field private start:I

.field final synthetic this$0:Lcom/android/internal/app/ResolverActivity;


# direct methods
.method public constructor <init>(Lcom/android/internal/app/ResolverActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/android/internal/app/ResolverActivity$ItemClickListener;->this$0:Lcom/android/internal/app/ResolverActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/android/internal/app/ResolverActivity;I)V
    .registers 5

    iput-object p1, p0, Lcom/android/internal/app/ResolverActivity$ItemClickListener;->this$0:Lcom/android/internal/app/ResolverActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    add-int/lit8 v0, p2, -0x1

    iget-object v1, p1, Lcom/android/internal/app/ResolverActivity;->mResolverActivityInjector:Lcom/android/internal/app/ResolverActivityInjector;

    iget v1, v1, Lcom/android/internal/app/ResolverActivityInjector;->mMaxPerScreen:I

    mul-int/2addr v0, v1

    iput v0, p0, Lcom/android/internal/app/ResolverActivity$ItemClickListener;->start:I

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    instance-of v0, p1, Landroid/widget/ListView;

    if-eqz v0, :cond_8

    move-object v0, p1

    check-cast v0, Landroid/widget/ListView;

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    if-eqz v0, :cond_10

    invoke-virtual {v0}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v1

    sub-int/2addr p3, v1

    :cond_10
    if-gez p3, :cond_13

    return-void

    :cond_13
    iget-object v1, p0, Lcom/android/internal/app/ResolverActivity$ItemClickListener;->this$0:Lcom/android/internal/app/ResolverActivity;

    iget-object v1, v1, Lcom/android/internal/app/ResolverActivity;->mResolverActivityInjector:Lcom/android/internal/app/ResolverActivityInjector;

    iget-boolean v1, v1, Lcom/android/internal/app/ResolverActivityInjector;->mRecommendable:Z

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_4a

    iget-object v1, p0, Lcom/android/internal/app/ResolverActivity$ItemClickListener;->this$0:Lcom/android/internal/app/ResolverActivity;

    iget-object v1, v1, Lcom/android/internal/app/ResolverActivity;->mResolverActivityInjector:Lcom/android/internal/app/ResolverActivityInjector;

    iget-object v1, v1, Lcom/android/internal/app/ResolverActivityInjector;->mChosenView:Landroid/view/View;

    if-eq v1, p2, :cond_46

    iget-object v1, p0, Lcom/android/internal/app/ResolverActivity$ItemClickListener;->this$0:Lcom/android/internal/app/ResolverActivity;

    iget-object v1, v1, Lcom/android/internal/app/ResolverActivity;->mResolverActivityInjector:Lcom/android/internal/app/ResolverActivityInjector;

    iget-object v1, v1, Lcom/android/internal/app/ResolverActivityInjector;->mChosenView:Landroid/view/View;

    if-eqz v1, :cond_46

    iget-object v1, p0, Lcom/android/internal/app/ResolverActivity$ItemClickListener;->this$0:Lcom/android/internal/app/ResolverActivity;

    iget-object v1, v1, Lcom/android/internal/app/ResolverActivity;->mResolverActivityInjector:Lcom/android/internal/app/ResolverActivityInjector;

    iget-object v1, v1, Lcom/android/internal/app/ResolverActivityInjector;->mChosenView:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setSelected(Z)V

    iget-object v1, p0, Lcom/android/internal/app/ResolverActivity$ItemClickListener;->this$0:Lcom/android/internal/app/ResolverActivity;

    iget-object v1, v1, Lcom/android/internal/app/ResolverActivity;->mResolverActivityInjector:Lcom/android/internal/app/ResolverActivityInjector;

    iput-object p2, v1, Lcom/android/internal/app/ResolverActivityInjector;->mChosenView:Landroid/view/View;

    iget-object v1, p0, Lcom/android/internal/app/ResolverActivity$ItemClickListener;->this$0:Lcom/android/internal/app/ResolverActivity;

    iget-object v1, v1, Lcom/android/internal/app/ResolverActivity;->mResolverActivityInjector:Lcom/android/internal/app/ResolverActivityInjector;

    iget v2, p0, Lcom/android/internal/app/ResolverActivity$ItemClickListener;->start:I

    add-int/2addr v2, p3

    add-int/2addr v2, v3

    iput v2, v1, Lcom/android/internal/app/ResolverActivityInjector;->mChosenIndex:I

    :cond_46
    invoke-virtual {p2, v3}, Landroid/view/View;->setSelected(Z)V

    goto :goto_74

    :cond_4a
    iget-object v1, p0, Lcom/android/internal/app/ResolverActivity$ItemClickListener;->this$0:Lcom/android/internal/app/ResolverActivity;

    const v4, 0x11090008

    invoke-virtual {v1, v4}, Lcom/android/internal/app/ResolverActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->getVisibility()I

    move-result v4

    if-nez v4, :cond_63

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_63

    move v2, v3

    goto :goto_64

    :cond_63
    nop

    :goto_64
    const-string v4, "ResolverActivity"

    const-string/jumbo v5, "onItemClick,coming to startSelected"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/android/internal/app/ResolverActivity$ItemClickListener;->this$0:Lcom/android/internal/app/ResolverActivity;

    iget v5, p0, Lcom/android/internal/app/ResolverActivity$ItemClickListener;->start:I

    add-int/2addr v5, p3

    invoke-virtual {v4, v5, v2, v3}, Lcom/android/internal/app/ResolverActivity;->startSelected(IZZ)V

    :goto_74
    return-void
.end method

.method public onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)Z"
        }
    .end annotation

    instance-of v0, p1, Landroid/widget/ListView;

    if-eqz v0, :cond_8

    move-object v0, p1

    check-cast v0, Landroid/widget/ListView;

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    if-eqz v0, :cond_10

    invoke-virtual {v0}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v1

    sub-int/2addr p3, v1

    :cond_10
    if-gez p3, :cond_14

    const/4 v1, 0x0

    return v1

    :cond_14
    iget-object v1, p0, Lcom/android/internal/app/ResolverActivity$ItemClickListener;->this$0:Lcom/android/internal/app/ResolverActivity;

    iget-object v1, v1, Lcom/android/internal/app/ResolverActivity;->mAdapter:Lcom/android/internal/app/ResolverListAdapter;

    iget v2, p0, Lcom/android/internal/app/ResolverActivity$ItemClickListener;->start:I

    add-int/2addr v2, p3

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/app/ResolverListAdapter;->targetInfoForPosition(IZ)Lcom/android/internal/app/chooser/TargetInfo;

    move-result-object v1

    instance-of v2, v1, Lcom/android/internal/app/chooser/DisplayResolveInfo;

    if-eqz v2, :cond_37

    sget-boolean v2, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-eqz v2, :cond_37

    move-object v2, v1

    check-cast v2, Lcom/android/internal/app/chooser/DisplayResolveInfo;

    iget-boolean v2, v2, Lcom/android/internal/app/chooser/DisplayResolveInfo;->mShowMore:Z

    if-eqz v2, :cond_37

    iget-object v2, p0, Lcom/android/internal/app/ResolverActivity$ItemClickListener;->this$0:Lcom/android/internal/app/ResolverActivity;

    iget-object v2, v2, Lcom/android/internal/app/ResolverActivity;->mResolverActivityInjector:Lcom/android/internal/app/ResolverActivityInjector;

    invoke-virtual {v2}, Lcom/android/internal/app/ResolverActivityInjector;->showMore()V

    return v3

    :cond_37
    iget-object v2, p0, Lcom/android/internal/app/ResolverActivity$ItemClickListener;->this$0:Lcom/android/internal/app/ResolverActivity;

    iget-object v2, v2, Lcom/android/internal/app/ResolverActivity;->mAdapter:Lcom/android/internal/app/ResolverListAdapter;

    iget v4, p0, Lcom/android/internal/app/ResolverActivity$ItemClickListener;->start:I

    add-int/2addr v4, p3

    invoke-virtual {v2, v4, v3}, Lcom/android/internal/app/ResolverListAdapter;->resolveInfoForPosition(IZ)Landroid/content/pm/ResolveInfo;

    move-result-object v2

    iget-object v4, p0, Lcom/android/internal/app/ResolverActivity$ItemClickListener;->this$0:Lcom/android/internal/app/ResolverActivity;

    invoke-virtual {v4, v2}, Lcom/android/internal/app/ResolverActivity;->showTargetDetails(Landroid/content/pm/ResolveInfo;)V

    return v3
.end method
