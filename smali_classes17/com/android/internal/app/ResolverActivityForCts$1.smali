.class Lcom/android/internal/app/ResolverActivityForCts$1;
.super Lcom/android/internal/content/PackageMonitor;
.source "ResolverActivityForCts.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/app/ResolverActivityForCts;->createPackageMonitor(Lcom/android/internal/app/ResolverListAdapter;)Lcom/android/internal/content/PackageMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/app/ResolverActivityForCts;

.field final synthetic val$listAdapter:Lcom/android/internal/app/ResolverListAdapter;


# direct methods
.method constructor <init>(Lcom/android/internal/app/ResolverActivityForCts;Lcom/android/internal/app/ResolverListAdapter;)V
    .registers 3

    iput-object p1, p0, Lcom/android/internal/app/ResolverActivityForCts$1;->this$0:Lcom/android/internal/app/ResolverActivityForCts;

    iput-object p2, p0, Lcom/android/internal/app/ResolverActivityForCts$1;->val$listAdapter:Lcom/android/internal/app/ResolverListAdapter;

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

    iget-object v0, p0, Lcom/android/internal/app/ResolverActivityForCts$1;->val$listAdapter:Lcom/android/internal/app/ResolverListAdapter;

    invoke-virtual {v0}, Lcom/android/internal/app/ResolverListAdapter;->handlePackagesChanged()V

    iget-object v0, p0, Lcom/android/internal/app/ResolverActivityForCts$1;->this$0:Lcom/android/internal/app/ResolverActivityForCts;

    invoke-virtual {v0}, Lcom/android/internal/app/ResolverActivityForCts;->updateProfileViewButton()V

    return-void
.end method
