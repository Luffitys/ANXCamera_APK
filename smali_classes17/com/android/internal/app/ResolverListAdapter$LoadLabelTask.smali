.class public Lcom/android/internal/app/ResolverListAdapter$LoadLabelTask;
.super Landroid/os/AsyncTask;
.source "ResolverListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/ResolverListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "LoadLabelTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "[",
        "Ljava/lang/CharSequence;",
        ">;"
    }
.end annotation


# instance fields
.field private final mDisplayResolveInfo:Lcom/android/internal/app/chooser/DisplayResolveInfo;

.field private final mHolder:Lcom/android/internal/app/ResolverListAdapter$ViewHolder;

.field final synthetic this$0:Lcom/android/internal/app/ResolverListAdapter;


# direct methods
.method protected constructor <init>(Lcom/android/internal/app/ResolverListAdapter;Lcom/android/internal/app/chooser/DisplayResolveInfo;Lcom/android/internal/app/ResolverListAdapter$ViewHolder;)V
    .registers 4

    iput-object p1, p0, Lcom/android/internal/app/ResolverListAdapter$LoadLabelTask;->this$0:Lcom/android/internal/app/ResolverListAdapter;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    iput-object p2, p0, Lcom/android/internal/app/ResolverListAdapter$LoadLabelTask;->mDisplayResolveInfo:Lcom/android/internal/app/chooser/DisplayResolveInfo;

    iput-object p3, p0, Lcom/android/internal/app/ResolverListAdapter$LoadLabelTask;->mHolder:Lcom/android/internal/app/ResolverListAdapter$ViewHolder;

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/internal/app/ResolverListAdapter$LoadLabelTask;->doInBackground([Ljava/lang/Void;)[Ljava/lang/CharSequence;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)[Ljava/lang/CharSequence;
    .registers 12

    iget-object v0, p0, Lcom/android/internal/app/ResolverListAdapter$LoadLabelTask;->this$0:Lcom/android/internal/app/ResolverListAdapter;

    iget-object v1, p0, Lcom/android/internal/app/ResolverListAdapter$LoadLabelTask;->mDisplayResolveInfo:Lcom/android/internal/app/chooser/DisplayResolveInfo;

    invoke-virtual {v1}, Lcom/android/internal/app/chooser/DisplayResolveInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/app/ResolverListAdapter;->makePresentationGetter(Landroid/content/pm/ResolveInfo;)Lcom/android/internal/app/ResolverListAdapter$ResolveInfoPresentationGetter;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/app/ResolverListAdapter$LoadLabelTask;->this$0:Lcom/android/internal/app/ResolverListAdapter;

    # getter for: Lcom/android/internal/app/ResolverListAdapter;->mIsAudioCaptureDevice:Z
    invoke-static {v1}, Lcom/android/internal/app/ResolverListAdapter;->access$200(Lcom/android/internal/app/ResolverListAdapter;)Z

    move-result v1

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v1, :cond_4d

    iget-object v1, p0, Lcom/android/internal/app/ResolverListAdapter$LoadLabelTask;->mDisplayResolveInfo:Lcom/android/internal/app/chooser/DisplayResolveInfo;

    invoke-virtual {v1}, Lcom/android/internal/app/chooser/DisplayResolveInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v6, v1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v6, v6, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v7, p0, Lcom/android/internal/app/ResolverListAdapter$LoadLabelTask;->this$0:Lcom/android/internal/app/ResolverListAdapter;

    iget-object v7, v7, Lcom/android/internal/app/ResolverListAdapter;->mContext:Landroid/content/Context;

    const/4 v8, -0x1

    const-string v9, "android.permission.RECORD_AUDIO"

    invoke-static {v7, v9, v8, v6, v5}, Landroid/content/PermissionChecker;->checkPermissionForPreflight(Landroid/content/Context;Ljava/lang/String;IILjava/lang/String;)I

    move-result v7

    if-nez v7, :cond_34

    move v7, v3

    goto :goto_35

    :cond_34
    move v7, v4

    :goto_35
    if-nez v7, :cond_4d

    new-array v2, v2, [Ljava/lang/CharSequence;

    invoke-virtual {v0}, Lcom/android/internal/app/ResolverListAdapter$ResolveInfoPresentationGetter;->getLabel()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v2, v4

    iget-object v4, p0, Lcom/android/internal/app/ResolverListAdapter$LoadLabelTask;->this$0:Lcom/android/internal/app/ResolverListAdapter;

    iget-object v4, v4, Lcom/android/internal/app/ResolverListAdapter;->mContext:Landroid/content/Context;

    const v8, 0x1040856

    invoke-virtual {v4, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    return-object v2

    :cond_4d
    new-array v1, v2, [Ljava/lang/CharSequence;

    invoke-virtual {v0}, Lcom/android/internal/app/ResolverListAdapter$ResolveInfoPresentationGetter;->getLabel()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-virtual {v0}, Lcom/android/internal/app/ResolverListAdapter$ResolveInfoPresentationGetter;->getSubLabel()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    return-object v1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, [Ljava/lang/CharSequence;

    invoke-virtual {p0, p1}, Lcom/android/internal/app/ResolverListAdapter$LoadLabelTask;->onPostExecute([Ljava/lang/CharSequence;)V

    return-void
.end method

.method protected onPostExecute([Ljava/lang/CharSequence;)V
    .registers 6

    iget-object v0, p0, Lcom/android/internal/app/ResolverListAdapter$LoadLabelTask;->mDisplayResolveInfo:Lcom/android/internal/app/chooser/DisplayResolveInfo;

    const/4 v1, 0x0

    aget-object v2, p1, v1

    invoke-virtual {v0, v2}, Lcom/android/internal/app/chooser/DisplayResolveInfo;->setDisplayLabel(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/internal/app/ResolverListAdapter$LoadLabelTask;->mDisplayResolveInfo:Lcom/android/internal/app/chooser/DisplayResolveInfo;

    const/4 v2, 0x1

    aget-object v3, p1, v2

    invoke-virtual {v0, v3}, Lcom/android/internal/app/chooser/DisplayResolveInfo;->setExtendedInfo(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/internal/app/ResolverListAdapter$LoadLabelTask;->mHolder:Lcom/android/internal/app/ResolverListAdapter$ViewHolder;

    aget-object v1, p1, v1

    aget-object v2, p1, v2

    iget-object v3, p0, Lcom/android/internal/app/ResolverListAdapter$LoadLabelTask;->this$0:Lcom/android/internal/app/ResolverListAdapter;

    invoke-virtual {v3}, Lcom/android/internal/app/ResolverListAdapter;->alwaysShowSubLabel()Z

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/app/ResolverListAdapter$ViewHolder;->bindLabel(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)V

    return-void
.end method
