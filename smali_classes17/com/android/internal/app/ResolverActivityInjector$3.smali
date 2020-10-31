.class Lcom/android/internal/app/ResolverActivityInjector$3;
.super Ljava/lang/Object;
.source "ResolverActivityInjector.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/app/ResolverActivityInjector;->configureContentView(Ljava/util/List;[Landroid/content/Intent;Ljava/util/List;)V
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

    iput-object p1, p0, Lcom/android/internal/app/ResolverActivityInjector$3;->this$0:Lcom/android/internal/app/ResolverActivityInjector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 8

    iget-object v0, p0, Lcom/android/internal/app/ResolverActivityInjector$3;->this$0:Lcom/android/internal/app/ResolverActivityInjector;

    # getter for: Lcom/android/internal/app/ResolverActivityInjector;->mResolverActivity:Lcom/android/internal/app/ResolverActivity;
    invoke-static {v0}, Lcom/android/internal/app/ResolverActivityInjector;->access$000(Lcom/android/internal/app/ResolverActivityInjector;)Lcom/android/internal/app/ResolverActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/app/ResolverActivityInjector$3;->this$0:Lcom/android/internal/app/ResolverActivityInjector;

    iget v1, v1, Lcom/android/internal/app/ResolverActivityInjector;->mChosenIndex:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/app/ResolverActivity;->startSelected(IZZ)V

    iget-object v0, p0, Lcom/android/internal/app/ResolverActivityInjector$3;->this$0:Lcom/android/internal/app/ResolverActivityInjector;

    iget-object v1, v0, Lcom/android/internal/app/ResolverActivityInjector;->mAdapter:Lcom/android/internal/app/ResolverListAdapter;

    iget-object v1, v1, Lcom/android/internal/app/ResolverListAdapter;->mDisplayList:Ljava/util/List;

    iget-object v3, p0, Lcom/android/internal/app/ResolverActivityInjector$3;->this$0:Lcom/android/internal/app/ResolverActivityInjector;

    iget v3, v3, Lcom/android/internal/app/ResolverActivityInjector;->mChosenIndex:I

    const-string v4, "always"

    invoke-virtual {v0, v1, v3, v2, v4}, Lcom/android/internal/app/ResolverActivityInjector;->sendItemSelectedAnalyticsBroadcast(Ljava/util/List;IZLjava/lang/String;)V

    iget-object v0, p0, Lcom/android/internal/app/ResolverActivityInjector$3;->this$0:Lcom/android/internal/app/ResolverActivityInjector;

    # getter for: Lcom/android/internal/app/ResolverActivityInjector;->mResolverActivity:Lcom/android/internal/app/ResolverActivity;
    invoke-static {v0}, Lcom/android/internal/app/ResolverActivityInjector;->access$000(Lcom/android/internal/app/ResolverActivityInjector;)Lcom/android/internal/app/ResolverActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/app/ResolverActivity;->finish()V

    return-void
.end method
