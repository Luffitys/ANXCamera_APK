.class Lcom/android/internal/app/ResolverActivityForCts$3;
.super Ljava/lang/Object;
.source "ResolverActivityForCts.java"

# interfaces
.implements Lcom/android/internal/app/AbstractMultiProfilePagerAdapter$OnProfileSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/app/ResolverActivityForCts;->setupProfileTabs()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/app/ResolverActivityForCts;

.field final synthetic val$tabHost:Landroid/widget/TabHost;


# direct methods
.method constructor <init>(Lcom/android/internal/app/ResolverActivityForCts;Landroid/widget/TabHost;)V
    .registers 3

    iput-object p1, p0, Lcom/android/internal/app/ResolverActivityForCts$3;->this$0:Lcom/android/internal/app/ResolverActivityForCts;

    iput-object p2, p0, Lcom/android/internal/app/ResolverActivityForCts$3;->val$tabHost:Landroid/widget/TabHost;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProfilePageStateChanged(I)V
    .registers 3

    iget-object v0, p0, Lcom/android/internal/app/ResolverActivityForCts$3;->this$0:Lcom/android/internal/app/ResolverActivityForCts;

    invoke-virtual {v0, p1}, Lcom/android/internal/app/ResolverActivityForCts;->onHorizontalSwipeStateChanged(I)V

    return-void
.end method

.method public onProfileSelected(I)V
    .registers 3

    iget-object v0, p0, Lcom/android/internal/app/ResolverActivityForCts$3;->val$tabHost:Landroid/widget/TabHost;

    invoke-virtual {v0, p1}, Landroid/widget/TabHost;->setCurrentTab(I)V

    iget-object v0, p0, Lcom/android/internal/app/ResolverActivityForCts$3;->this$0:Lcom/android/internal/app/ResolverActivityForCts;

    invoke-virtual {v0}, Lcom/android/internal/app/ResolverActivityForCts;->resetButtonBar()V

    iget-object v0, p0, Lcom/android/internal/app/ResolverActivityForCts$3;->this$0:Lcom/android/internal/app/ResolverActivityForCts;

    # invokes: Lcom/android/internal/app/ResolverActivityForCts;->resetCheckedItem()V
    invoke-static {v0}, Lcom/android/internal/app/ResolverActivityForCts;->access$000(Lcom/android/internal/app/ResolverActivityForCts;)V

    return-void
.end method
