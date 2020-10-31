.class Lcom/android/internal/app/ChooserActivityForCts$2;
.super Lcom/android/internal/content/PackageMonitor;
.source "ChooserActivityForCts.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/app/ChooserActivityForCts;->createPackageMonitor(Lcom/android/internal/app/ResolverListAdapter;)Lcom/android/internal/content/PackageMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/app/ChooserActivityForCts;

.field final synthetic val$listAdapter:Lcom/android/internal/app/ResolverListAdapter;


# direct methods
.method constructor <init>(Lcom/android/internal/app/ChooserActivityForCts;Lcom/android/internal/app/ResolverListAdapter;)V
    .registers 3

    iput-object p1, p0, Lcom/android/internal/app/ChooserActivityForCts$2;->this$0:Lcom/android/internal/app/ChooserActivityForCts;

    iput-object p2, p0, Lcom/android/internal/app/ChooserActivityForCts$2;->val$listAdapter:Lcom/android/internal/app/ResolverListAdapter;

    invoke-direct {p0}, Lcom/android/internal/content/PackageMonitor;-><init>()V

    return-void
.end method


# virtual methods
.method public onSomePackagesChanged()V
    .registers 3

    iget-object v0, p0, Lcom/android/internal/app/ChooserActivityForCts$2;->this$0:Lcom/android/internal/app/ChooserActivityForCts;

    iget-object v1, p0, Lcom/android/internal/app/ChooserActivityForCts$2;->val$listAdapter:Lcom/android/internal/app/ResolverListAdapter;

    # invokes: Lcom/android/internal/app/ChooserActivityForCts;->handlePackagesChanged(Lcom/android/internal/app/ResolverListAdapter;)V
    invoke-static {v0, v1}, Lcom/android/internal/app/ChooserActivityForCts;->access$1000(Lcom/android/internal/app/ChooserActivityForCts;Lcom/android/internal/app/ResolverListAdapter;)V

    return-void
.end method
