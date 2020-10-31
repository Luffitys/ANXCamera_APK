.class public Lcom/android/internal/app/ChooserStackedAppDialogFragment;
.super Lcom/android/internal/app/ChooserTargetActionsDialogFragment;
.source "ChooserStackedAppDialogFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private mMultiDisplayResolveInfo:Lcom/android/internal/app/chooser/MultiDisplayResolveInfo;

.field private mParentWhich:I


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/android/internal/app/ChooserTargetActionsDialogFragment;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/android/internal/app/chooser/MultiDisplayResolveInfo;ILandroid/os/UserHandle;)V
    .registers 5

    invoke-virtual {p1}, Lcom/android/internal/app/chooser/MultiDisplayResolveInfo;->getTargets()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0, p3}, Lcom/android/internal/app/ChooserTargetActionsDialogFragment;-><init>(Ljava/util/List;Landroid/os/UserHandle;)V

    iput-object p1, p0, Lcom/android/internal/app/ChooserStackedAppDialogFragment;->mMultiDisplayResolveInfo:Lcom/android/internal/app/chooser/MultiDisplayResolveInfo;

    iput p2, p0, Lcom/android/internal/app/ChooserStackedAppDialogFragment;->mParentWhich:I

    return-void
.end method


# virtual methods
.method protected getItemIcon(Lcom/android/internal/app/chooser/DisplayResolveInfo;)Landroid/graphics/drawable/Drawable;
    .registers 3

    const/4 v0, 0x0

    return-object v0
.end method

.method protected getItemLabel(Lcom/android/internal/app/chooser/DisplayResolveInfo;)Ljava/lang/CharSequence;
    .registers 4

    invoke-virtual {p0}, Lcom/android/internal/app/ChooserStackedAppDialogFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/internal/app/chooser/DisplayResolveInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v1

    return-object v1
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 7

    iget-object v0, p0, Lcom/android/internal/app/ChooserStackedAppDialogFragment;->mMultiDisplayResolveInfo:Lcom/android/internal/app/chooser/MultiDisplayResolveInfo;

    invoke-virtual {v0, p2}, Lcom/android/internal/app/chooser/MultiDisplayResolveInfo;->setSelected(I)V

    invoke-virtual {p0}, Lcom/android/internal/app/ChooserStackedAppDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/internal/app/ChooserActivity;

    iget v1, p0, Lcom/android/internal/app/ChooserStackedAppDialogFragment;->mParentWhich:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/app/ChooserActivity;->startSelected(IZZ)V

    invoke-virtual {p0}, Lcom/android/internal/app/ChooserStackedAppDialogFragment;->dismiss()V

    return-void
.end method
