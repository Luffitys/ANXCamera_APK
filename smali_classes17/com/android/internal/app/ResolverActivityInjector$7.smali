.class Lcom/android/internal/app/ResolverActivityInjector$7;
.super Lcom/android/internal/content/PackageMonitor;
.source "ResolverActivityInjector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/ResolverActivityInjector;
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

    iput-object p1, p0, Lcom/android/internal/app/ResolverActivityInjector$7;->this$0:Lcom/android/internal/app/ResolverActivityInjector;

    invoke-direct {p0}, Lcom/android/internal/content/PackageMonitor;-><init>()V

    return-void
.end method


# virtual methods
.method public onPackageChanged(Ljava/lang/String;I[Ljava/lang/String;)Z
    .registers 5

    const/4 v0, 0x1

    return v0
.end method

.method public onSomePackagesChanged()V
    .registers 2

    iget-object v0, p0, Lcom/android/internal/app/ResolverActivityInjector$7;->this$0:Lcom/android/internal/app/ResolverActivityInjector;

    iget-object v0, v0, Lcom/android/internal/app/ResolverActivityInjector;->mAdapter:Lcom/android/internal/app/ResolverListAdapter;

    invoke-virtual {v0}, Lcom/android/internal/app/ResolverListAdapter;->handlePackagesChanged()V

    iget-object v0, p0, Lcom/android/internal/app/ResolverActivityInjector$7;->this$0:Lcom/android/internal/app/ResolverActivityInjector;

    iget-object v0, v0, Lcom/android/internal/app/ResolverActivityInjector;->mProfileView:Landroid/view/View;

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/android/internal/app/ResolverActivityInjector$7;->this$0:Lcom/android/internal/app/ResolverActivityInjector;

    invoke-virtual {v0}, Lcom/android/internal/app/ResolverActivityInjector;->bindProfileView()V

    :cond_12
    return-void
.end method
