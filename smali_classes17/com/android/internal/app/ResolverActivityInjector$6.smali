.class Lcom/android/internal/app/ResolverActivityInjector$6;
.super Ljava/lang/Object;
.source "ResolverActivityInjector.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/app/ResolverActivityInjector;->initOfficalRecommendView(Landroid/widget/RelativeLayout;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/app/ResolverActivityInjector;


# direct methods
.method constructor <init>(Lcom/android/internal/app/ResolverActivityInjector;)V
    .registers 2

    iput-object p1, p0, Lcom/android/internal/app/ResolverActivityInjector$6;->this$0:Lcom/android/internal/app/ResolverActivityInjector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .registers 5

    iget-object v0, p0, Lcom/android/internal/app/ResolverActivityInjector$6;->this$0:Lcom/android/internal/app/ResolverActivityInjector;

    iget-object v0, v0, Lcom/android/internal/app/ResolverActivityInjector;->mAdapter:Lcom/android/internal/app/ResolverListAdapter;

    const/4 v1, -0x1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/app/ResolverListAdapter;->resolveInfoForPosition(IZ)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/app/ResolverActivityInjector$6;->this$0:Lcom/android/internal/app/ResolverActivityInjector;

    # getter for: Lcom/android/internal/app/ResolverActivityInjector;->mResolverActivity:Lcom/android/internal/app/ResolverActivity;
    invoke-static {v1}, Lcom/android/internal/app/ResolverActivityInjector;->access$000(Lcom/android/internal/app/ResolverActivityInjector;)Lcom/android/internal/app/ResolverActivity;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/internal/app/ResolverActivity;->showTargetDetails(Landroid/content/pm/ResolveInfo;)V

    return v2
.end method
