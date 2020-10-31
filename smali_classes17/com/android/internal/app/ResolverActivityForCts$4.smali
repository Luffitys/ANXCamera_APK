.class Lcom/android/internal/app/ResolverActivityForCts$4;
.super Landroid/content/BroadcastReceiver;
.source "ResolverActivityForCts.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/app/ResolverActivityForCts;->createWorkProfileStateReceiver()Landroid/content/BroadcastReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/app/ResolverActivityForCts;


# direct methods
.method constructor <init>(Lcom/android/internal/app/ResolverActivityForCts;)V
    .registers 2

    iput-object p1, p0, Lcom/android/internal/app/ResolverActivityForCts$4;->this$0:Lcom/android/internal/app/ResolverActivityForCts;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 7

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.USER_UNLOCKED"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_15

    const-string v2, "android.intent.action.MANAGED_PROFILE_UNAVAILABLE"

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_15

    return-void

    :cond_15
    const/4 v2, -0x1

    const-string v3, "android.intent.extra.user_handle"

    invoke-virtual {p2, v3, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2f

    iget-object v3, p0, Lcom/android/internal/app/ResolverActivityForCts$4;->this$0:Lcom/android/internal/app/ResolverActivityForCts;

    invoke-virtual {v3}, Lcom/android/internal/app/ResolverActivityForCts;->getWorkProfileUserHandle()Landroid/os/UserHandle;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v3

    if-eq v2, v3, :cond_2f

    return-void

    :cond_2f
    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3c

    iget-object v1, p0, Lcom/android/internal/app/ResolverActivityForCts$4;->this$0:Lcom/android/internal/app/ResolverActivityForCts;

    iget-object v1, v1, Lcom/android/internal/app/ResolverActivityForCts;->mMultiProfilePagerAdapter:Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;

    invoke-virtual {v1}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;->markWorkProfileEnabledBroadcastReceived()V

    :cond_3c
    iget-object v1, p0, Lcom/android/internal/app/ResolverActivityForCts$4;->this$0:Lcom/android/internal/app/ResolverActivityForCts;

    iget-object v1, v1, Lcom/android/internal/app/ResolverActivityForCts;->mMultiProfilePagerAdapter:Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;

    invoke-virtual {v1}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;->getCurrentUserHandle()Landroid/os/UserHandle;

    move-result-object v1

    iget-object v3, p0, Lcom/android/internal/app/ResolverActivityForCts$4;->this$0:Lcom/android/internal/app/ResolverActivityForCts;

    invoke-virtual {v3}, Lcom/android/internal/app/ResolverActivityForCts;->getWorkProfileUserHandle()Landroid/os/UserHandle;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_59

    iget-object v1, p0, Lcom/android/internal/app/ResolverActivityForCts$4;->this$0:Lcom/android/internal/app/ResolverActivityForCts;

    iget-object v1, v1, Lcom/android/internal/app/ResolverActivityForCts;->mMultiProfilePagerAdapter:Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;->rebuildActiveTab(Z)Z

    goto :goto_60

    :cond_59
    iget-object v1, p0, Lcom/android/internal/app/ResolverActivityForCts$4;->this$0:Lcom/android/internal/app/ResolverActivityForCts;

    iget-object v1, v1, Lcom/android/internal/app/ResolverActivityForCts;->mMultiProfilePagerAdapter:Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;

    invoke-virtual {v1}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;->clearInactiveProfileCache()V

    :goto_60
    return-void
.end method
