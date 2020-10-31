.class Lcom/android/internal/app/ResolverActivityInjector$LoadAdapterIconTask;
.super Lcom/android/internal/app/ResolverActivityInjector$LoadIconTask;
.source "ResolverActivityInjector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/ResolverActivityInjector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "LoadAdapterIconTask"
.end annotation


# instance fields
.field private adapter:Landroid/widget/BaseAdapter;

.field private bindIconOnly:Z

.field final synthetic this$0:Lcom/android/internal/app/ResolverActivityInjector;


# direct methods
.method public constructor <init>(Lcom/android/internal/app/ResolverActivityInjector;Landroid/widget/BaseAdapter;Lcom/android/internal/app/chooser/DisplayResolveInfo;)V
    .registers 5

    iput-object p1, p0, Lcom/android/internal/app/ResolverActivityInjector$LoadAdapterIconTask;->this$0:Lcom/android/internal/app/ResolverActivityInjector;

    invoke-direct {p0, p1, p3}, Lcom/android/internal/app/ResolverActivityInjector$LoadIconTask;-><init>(Lcom/android/internal/app/ResolverActivityInjector;Lcom/android/internal/app/chooser/DisplayResolveInfo;)V

    iput-object p2, p0, Lcom/android/internal/app/ResolverActivityInjector$LoadAdapterIconTask;->adapter:Landroid/widget/BaseAdapter;

    if-nez p2, :cond_b

    const/4 v0, 0x1

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    iput-boolean v0, p0, Lcom/android/internal/app/ResolverActivityInjector$LoadAdapterIconTask;->bindIconOnly:Z

    return-void
.end method

.method public constructor <init>(Lcom/android/internal/app/ResolverActivityInjector;Lcom/android/internal/app/chooser/DisplayResolveInfo;)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Lcom/android/internal/app/ResolverActivityInjector$LoadAdapterIconTask;-><init>(Lcom/android/internal/app/ResolverActivityInjector;Landroid/widget/BaseAdapter;Lcom/android/internal/app/chooser/DisplayResolveInfo;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/app/ResolverActivityInjector$LoadAdapterIconTask;->bindIconOnly:Z

    return-void
.end method


# virtual methods
.method protected onPostExecute(Landroid/graphics/drawable/Drawable;)V
    .registers 4

    invoke-super {p0, p1}, Lcom/android/internal/app/ResolverActivityInjector$LoadIconTask;->onPostExecute(Landroid/graphics/drawable/Drawable;)V

    iget-boolean v0, p0, Lcom/android/internal/app/ResolverActivityInjector$LoadAdapterIconTask;->bindIconOnly:Z

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/android/internal/app/ResolverActivityInjector$LoadAdapterIconTask;->this$0:Lcom/android/internal/app/ResolverActivityInjector;

    # invokes: Lcom/android/internal/app/ResolverActivityInjector;->bindOfficalRecommendIcon()V
    invoke-static {v0}, Lcom/android/internal/app/ResolverActivityInjector;->access$500(Lcom/android/internal/app/ResolverActivityInjector;)V

    return-void

    :cond_d
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivityInjector$LoadAdapterIconTask;->this$0:Lcom/android/internal/app/ResolverActivityInjector;

    # getter for: Lcom/android/internal/app/ResolverActivityInjector;->mResolverActivity:Lcom/android/internal/app/ResolverActivity;
    invoke-static {v0}, Lcom/android/internal/app/ResolverActivityInjector;->access$000(Lcom/android/internal/app/ResolverActivityInjector;)Lcom/android/internal/app/ResolverActivity;

    move-result-object v0

    iget-object v0, v0, Lcom/android/internal/app/ResolverActivity;->mProfileView:Landroid/view/View;

    if-eqz v0, :cond_28

    iget-object v0, p0, Lcom/android/internal/app/ResolverActivityInjector$LoadAdapterIconTask;->this$0:Lcom/android/internal/app/ResolverActivityInjector;

    iget-object v0, v0, Lcom/android/internal/app/ResolverActivityInjector;->mAdapter:Lcom/android/internal/app/ResolverListAdapter;

    invoke-virtual {v0}, Lcom/android/internal/app/ResolverListAdapter;->getOtherProfile()Lcom/android/internal/app/chooser/DisplayResolveInfo;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/app/ResolverActivityInjector$LoadAdapterIconTask;->mDisplayResolveInfo:Lcom/android/internal/app/chooser/DisplayResolveInfo;

    if-ne v0, v1, :cond_28

    iget-object v0, p0, Lcom/android/internal/app/ResolverActivityInjector$LoadAdapterIconTask;->this$0:Lcom/android/internal/app/ResolverActivityInjector;

    invoke-virtual {v0}, Lcom/android/internal/app/ResolverActivityInjector;->bindProfileView()V

    :cond_28
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivityInjector$LoadAdapterIconTask;->adapter:Landroid/widget/BaseAdapter;

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p1}, Lcom/android/internal/app/ResolverActivityInjector$LoadAdapterIconTask;->onPostExecute(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method
