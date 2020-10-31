.class Lcom/android/internal/app/ResolverActivityInjector$5;
.super Ljava/lang/Object;
.source "ResolverActivityInjector.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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

    iput-object p1, p0, Lcom/android/internal/app/ResolverActivityInjector$5;->this$0:Lcom/android/internal/app/ResolverActivityInjector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4

    iget-object v0, p0, Lcom/android/internal/app/ResolverActivityInjector$5;->this$0:Lcom/android/internal/app/ResolverActivityInjector;

    iget-object v0, v0, Lcom/android/internal/app/ResolverActivityInjector;->mChosenView:Landroid/view/View;

    if-eq v0, p1, :cond_20

    iget-object v0, p0, Lcom/android/internal/app/ResolverActivityInjector$5;->this$0:Lcom/android/internal/app/ResolverActivityInjector;

    iget-object v0, v0, Lcom/android/internal/app/ResolverActivityInjector;->mChosenView:Landroid/view/View;

    if-eqz v0, :cond_20

    iget-object v0, p0, Lcom/android/internal/app/ResolverActivityInjector$5;->this$0:Lcom/android/internal/app/ResolverActivityInjector;

    iget-object v0, v0, Lcom/android/internal/app/ResolverActivityInjector;->mChosenView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setSelected(Z)V

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/View;->setSelected(Z)V

    iget-object v0, p0, Lcom/android/internal/app/ResolverActivityInjector$5;->this$0:Lcom/android/internal/app/ResolverActivityInjector;

    iput-object p1, v0, Lcom/android/internal/app/ResolverActivityInjector;->mChosenView:Landroid/view/View;

    iget-object v0, p0, Lcom/android/internal/app/ResolverActivityInjector$5;->this$0:Lcom/android/internal/app/ResolverActivityInjector;

    iput v1, v0, Lcom/android/internal/app/ResolverActivityInjector;->mChosenIndex:I

    :cond_20
    return-void
.end method
